package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RequestDeduplicator;
import com.google.firebase.messaging.Store;
import com.google.firebase.platforminfo.UserAgentPublisher;
import h9.g;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
public class FirebaseMessaging {
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);

    @SuppressLint({"StaticFieldLeak"})
    private static Store store;

    @GuardedBy("FirebaseMessaging.class")
    public static ScheduledExecutorService syncExecutor;

    @SuppressLint({"FirebaseUnknownNullness"})
    public static g transportFactory;
    private final AutoInit autoInit;
    private final Context context;
    private final Executor fileIoExecutor;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi fis;
    private final GmsRpc gmsRpc;
    private final FirebaseInstanceIdInternal iid;
    private final Application.ActivityLifecycleCallbacks lifecycleCallbacks;
    private final Metadata metadata;
    private final RequestDeduplicator requestDeduplicator;

    @GuardedBy("this")
    private boolean syncScheduledOrRunning;
    private final Executor taskExecutor;
    private final Task<TopicsSubscriber> topicsSubscriberTask;

    /* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    /* loaded from: classes.dex */
    public class AutoInit {

        @GuardedBy("this")
        private Boolean autoInitEnabled;

        @GuardedBy("this")
        private EventHandler<DataCollectionDefaultChange> dataCollectionDefaultChangeEventHandler;

        @GuardedBy("this")
        private boolean initialized;
        private final Subscriber subscriber;

        public AutoInit(Subscriber subscriber) {
            this.subscriber = subscriber;
        }

        private Boolean readEnabled() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context applicationContext = FirebaseMessaging.this.firebaseApp.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        public synchronized void initialize() {
            if (this.initialized) {
                return;
            }
            Boolean readEnabled = readEnabled();
            this.autoInitEnabled = readEnabled;
            if (readEnabled == null) {
                EventHandler<DataCollectionDefaultChange> eventHandler = new EventHandler(this) { // from class: com.google.firebase.messaging.FirebaseMessaging$AutoInit$$Lambda$0
                    private final FirebaseMessaging.AutoInit arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // com.google.firebase.events.EventHandler
                    public void handle(Event event) {
                        this.arg$1.lambda$initialize$0$FirebaseMessaging$AutoInit(event);
                    }
                };
                this.dataCollectionDefaultChangeEventHandler = eventHandler;
                this.subscriber.subscribe(DataCollectionDefaultChange.class, eventHandler);
            }
            this.initialized = true;
        }

        public synchronized boolean isEnabled() {
            boolean isDataCollectionDefaultEnabled;
            initialize();
            Boolean bool = this.autoInitEnabled;
            if (bool == null) {
                isDataCollectionDefaultEnabled = FirebaseMessaging.this.firebaseApp.isDataCollectionDefaultEnabled();
            } else {
                isDataCollectionDefaultEnabled = bool.booleanValue();
            }
            return isDataCollectionDefaultEnabled;
        }

        public final /* synthetic */ void lambda$initialize$0$FirebaseMessaging$AutoInit(Event event) {
            if (isEnabled()) {
                FirebaseMessaging.this.startSyncIfNecessary();
            }
        }
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, g gVar, Subscriber subscriber) {
        this(firebaseApp, firebaseInstanceIdInternal, provider, provider2, firebaseInstallationsApi, gVar, subscriber, new Metadata(firebaseApp.getApplicationContext()));
    }

    public static synchronized FirebaseMessaging getInstance() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(FirebaseApp.getInstance());
        }
        return firebaseMessaging;
    }

    private String getSubtype() {
        return "[DEFAULT]".equals(this.firebaseApp.getName()) ? "" : this.firebaseApp.getPersistenceKey();
    }

    public static g getTransportFactory() {
        return transportFactory;
    }

    private void invokeOnTokenRefresh(String str) {
        if ("[DEFAULT]".equals(this.firebaseApp.getName())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(this.firebaseApp.getName());
                if (valueOf.length() != 0) {
                    "Invoking onNewToken for app: ".concat(valueOf);
                }
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new FcmBroadcastProcessor(this.context).process(intent);
        }
    }

    private synchronized void startSync() {
        if (this.syncScheduledOrRunning) {
            return;
        }
        syncWithDelaySecondsInternal(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSyncIfNecessary() {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.iid;
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.getToken();
        } else if (tokenNeedsRefresh(getTokenWithoutTriggeringSync())) {
            startSync();
        }
    }

    public String blockingGetToken() throws IOException {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.iid;
        if (firebaseInstanceIdInternal != null) {
            try {
                return (String) Tasks.await(firebaseInstanceIdInternal.getTokenTask());
            } catch (InterruptedException | ExecutionException e10) {
                throw new IOException(e10);
            }
        }
        Store.Token tokenWithoutTriggeringSync = getTokenWithoutTriggeringSync();
        if (!tokenNeedsRefresh(tokenWithoutTriggeringSync)) {
            return tokenWithoutTriggeringSync.token;
        }
        final String defaultSenderId = Metadata.getDefaultSenderId(this.firebaseApp);
        try {
            String str = (String) Tasks.await(this.fis.getId().continueWithTask(FcmExecutors.newNetworkIOExecutor(), new Continuation(this, defaultSenderId) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$8
                private final FirebaseMessaging arg$1;
                private final String arg$2;

                {
                    this.arg$1 = this;
                    this.arg$2 = defaultSenderId;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public Object then(Task task) {
                    return this.arg$1.lambda$blockingGetToken$9$FirebaseMessaging(this.arg$2, task);
                }
            }));
            store.saveToken(getSubtype(), defaultSenderId, str, this.metadata.getAppVersionCode());
            if (tokenWithoutTriggeringSync == null || !str.equals(tokenWithoutTriggeringSync.token)) {
                invokeOnTokenRefresh(str);
            }
            return str;
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    public void enqueueTaskWithDelaySeconds(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            if (syncExecutor == null) {
                syncExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
            }
            syncExecutor.schedule(runnable, j10, TimeUnit.SECONDS);
        }
    }

    public Context getApplicationContext() {
        return this.context;
    }

    public Store.Token getTokenWithoutTriggeringSync() {
        return store.getToken(getSubtype(), Metadata.getDefaultSenderId(this.firebaseApp));
    }

    public boolean isAutoInitEnabled() {
        return this.autoInit.isEnabled();
    }

    public boolean isGmsCorePresent() {
        return this.metadata.isGmscorePresent();
    }

    public final /* synthetic */ Task lambda$blockingGetToken$8$FirebaseMessaging(Task task) {
        return this.gmsRpc.getToken((String) task.getResult());
    }

    public final /* synthetic */ Task lambda$blockingGetToken$9$FirebaseMessaging(String str, final Task task) throws Exception {
        return this.requestDeduplicator.getOrStartGetTokenRequest(str, new RequestDeduplicator.GetTokenRequest(this, task) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$9
            private final FirebaseMessaging arg$1;
            private final Task arg$2;

            {
                this.arg$1 = this;
                this.arg$2 = task;
            }

            @Override // com.google.firebase.messaging.RequestDeduplicator.GetTokenRequest
            public Task start() {
                return this.arg$1.lambda$blockingGetToken$8$FirebaseMessaging(this.arg$2);
            }
        });
    }

    public final /* synthetic */ void lambda$new$0$FirebaseMessaging() {
        if (isAutoInitEnabled()) {
            startSyncIfNecessary();
        }
    }

    public final /* synthetic */ void lambda$new$1$FirebaseMessaging(TopicsSubscriber topicsSubscriber) {
        if (isAutoInitEnabled()) {
            topicsSubscriber.startTopicsSyncIfNecessary();
        }
    }

    public synchronized void setSyncScheduledOrRunning(boolean z10) {
        this.syncScheduledOrRunning = z10;
    }

    public Task<Void> subscribeToTopic(final String str) {
        return this.topicsSubscriberTask.onSuccessTask(new SuccessContinuation(str) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$6
            private final String arg$1;

            {
                this.arg$1 = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public Task then(Object obj) {
                Task subscribeToTopic;
                subscribeToTopic = ((TopicsSubscriber) obj).subscribeToTopic(this.arg$1);
                return subscribeToTopic;
            }
        });
    }

    public synchronized void syncWithDelaySecondsInternal(long j10) {
        enqueueTaskWithDelaySeconds(new SyncTask(this, Math.min(Math.max(30L, j10 + j10), MAX_DELAY_SEC)), j10);
        this.syncScheduledOrRunning = true;
    }

    public boolean tokenNeedsRefresh(Store.Token token) {
        return token == null || token.needsRefresh(this.metadata.getAppVersionCode());
    }

    public Task<Void> unsubscribeFromTopic(final String str) {
        return this.topicsSubscriberTask.onSuccessTask(new SuccessContinuation(str) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$7
            private final String arg$1;

            {
                this.arg$1 = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public Task then(Object obj) {
                Task unsubscribeFromTopic;
                unsubscribeFromTopic = ((TopicsSubscriber) obj).unsubscribeFromTopic(this.arg$1);
                return unsubscribeFromTopic;
            }
        });
    }

    @Keep
    public static synchronized FirebaseMessaging getInstance(FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) firebaseApp.get(FirebaseMessaging.class);
            Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, g gVar, Subscriber subscriber, Metadata metadata) {
        this(firebaseApp, firebaseInstanceIdInternal, firebaseInstallationsApi, gVar, subscriber, metadata, new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi), FcmExecutors.newTaskExecutor(), FcmExecutors.newInitExecutor());
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, FirebaseInstallationsApi firebaseInstallationsApi, g gVar, Subscriber subscriber, Metadata metadata, GmsRpc gmsRpc, Executor executor, Executor executor2) {
        this.syncScheduledOrRunning = false;
        transportFactory = gVar;
        this.firebaseApp = firebaseApp;
        this.iid = firebaseInstanceIdInternal;
        this.fis = firebaseInstallationsApi;
        this.autoInit = new AutoInit(subscriber);
        Context applicationContext = firebaseApp.getApplicationContext();
        this.context = applicationContext;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.lifecycleCallbacks = fcmLifecycleCallbacks;
        this.metadata = metadata;
        this.taskExecutor = executor;
        this.gmsRpc = gmsRpc;
        this.requestDeduplicator = new RequestDeduplicator(executor);
        this.fileIoExecutor = executor2;
        Context applicationContext2 = firebaseApp.getApplicationContext();
        if (applicationContext2 instanceof Application) {
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            String valueOf = String.valueOf(applicationContext2);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 125);
            sb2.append("Context ");
            sb2.append(valueOf);
            sb2.append(" was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.addNewTokenListener(new FirebaseInstanceIdInternal.NewTokenListener(this) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$0
                private final FirebaseMessaging arg$1;

                {
                    this.arg$1 = this;
                }
            });
        }
        synchronized (FirebaseMessaging.class) {
            if (store == null) {
                store = new Store(applicationContext);
            }
        }
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$1
            private final FirebaseMessaging arg$1;

            {
                this.arg$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$new$0$FirebaseMessaging();
            }
        });
        Task<TopicsSubscriber> createInstance = TopicsSubscriber.createInstance(this, firebaseInstallationsApi, metadata, gmsRpc, applicationContext, FcmExecutors.newTopicsSyncExecutor());
        this.topicsSubscriberTask = createInstance;
        createInstance.addOnSuccessListener(FcmExecutors.newTopicsSyncTriggerExecutor(), new OnSuccessListener(this) { // from class: com.google.firebase.messaging.FirebaseMessaging$$Lambda$2
            private final FirebaseMessaging arg$1;

            {
                this.arg$1 = this;
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(Object obj) {
                this.arg$1.lambda$new$1$FirebaseMessaging((TopicsSubscriber) obj);
            }
        });
    }
}
