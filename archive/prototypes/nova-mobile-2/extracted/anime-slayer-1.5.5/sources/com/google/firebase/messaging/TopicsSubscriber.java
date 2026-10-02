package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import s.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
public class TopicsSubscriber {
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private final Context context;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final FirebaseMessaging firebaseMessaging;
    private final Metadata metadata;
    private final GmsRpc rpc;
    private final TopicsStore store;
    private final ScheduledExecutorService syncExecutor;
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> pendingOperations = new a();
    private boolean syncScheduledOrRunning = false;

    private TopicsSubscriber(FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi, Metadata metadata, TopicsStore topicsStore, GmsRpc gmsRpc, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.firebaseMessaging = firebaseMessaging;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.metadata = metadata;
        this.store = topicsStore;
        this.rpc = gmsRpc;
        this.context = context;
        this.syncExecutor = scheduledExecutorService;
    }

    private void addToPendingOperations(TopicOperation topicOperation, TaskCompletionSource<Void> taskCompletionSource) {
        ArrayDeque<TaskCompletionSource<Void>> arrayDeque;
        synchronized (this.pendingOperations) {
            String serialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(serialize)) {
                arrayDeque = this.pendingOperations.get(serialize);
            } else {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque2 = new ArrayDeque<>();
                this.pendingOperations.put(serialize, arrayDeque2);
                arrayDeque = arrayDeque2;
            }
            arrayDeque.add(taskCompletionSource);
        }
    }

    private static <T> T awaitTask(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e11);
            }
            throw ((IOException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    private void blockingSubscribeToTopic(String str) throws IOException {
        awaitTask(this.rpc.subscribeToTopic((String) awaitTask(this.firebaseInstallationsApi.getId()), this.firebaseMessaging.blockingGetToken(), str));
    }

    private void blockingUnsubscribeFromTopic(String str) throws IOException {
        awaitTask(this.rpc.unsubscribeFromTopic((String) awaitTask(this.firebaseInstallationsApi.getId()), this.firebaseMessaging.blockingGetToken(), str));
    }

    public static Task<TopicsSubscriber> createInstance(final FirebaseMessaging firebaseMessaging, final FirebaseInstallationsApi firebaseInstallationsApi, final Metadata metadata, final GmsRpc gmsRpc, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseMessaging, firebaseInstallationsApi, metadata, gmsRpc) { // from class: com.google.firebase.messaging.TopicsSubscriber$$Lambda$0
            private final Context arg$1;
            private final ScheduledExecutorService arg$2;
            private final FirebaseMessaging arg$3;
            private final FirebaseInstallationsApi arg$4;
            private final Metadata arg$5;
            private final GmsRpc arg$6;

            {
                this.arg$1 = context;
                this.arg$2 = scheduledExecutorService;
                this.arg$3 = firebaseMessaging;
                this.arg$4 = firebaseInstallationsApi;
                this.arg$5 = metadata;
                this.arg$6 = gmsRpc;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return TopicsSubscriber.lambda$createInstance$0$TopicsSubscriber(this.arg$1, this.arg$2, this.arg$3, this.arg$4, this.arg$5, this.arg$6);
            }
        });
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    public static final /* synthetic */ TopicsSubscriber lambda$createInstance$0$TopicsSubscriber(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi, Metadata metadata, GmsRpc gmsRpc) throws Exception {
        return new TopicsSubscriber(firebaseMessaging, firebaseInstallationsApi, metadata, TopicsStore.getInstance(context, scheduledExecutorService), gmsRpc, context, scheduledExecutorService);
    }

    private void markCompletePendingOperation(TopicOperation topicOperation) {
        synchronized (this.pendingOperations) {
            String serialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(serialize)) {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.pendingOperations.get(serialize);
                TaskCompletionSource<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.setResult(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.pendingOperations.remove(serialize);
                }
            }
        }
    }

    private void startSync() {
        if (isSyncScheduledOrRunning()) {
            return;
        }
        syncWithDelaySecondsInternal(0L);
    }

    public boolean hasPendingOperation() {
        return this.store.getNextTopicOperation() != null;
    }

    public synchronized boolean isSyncScheduledOrRunning() {
        return this.syncScheduledOrRunning;
    }

    public boolean performTopicOperation(TopicOperation topicOperation) throws IOException {
        char c10;
        try {
            String operation = topicOperation.getOperation();
            int hashCode = operation.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && operation.equals("U")) {
                    c10 = 1;
                }
                c10 = 65535;
            } else {
                if (operation.equals("S")) {
                    c10 = 0;
                }
                c10 = 65535;
            }
            if (c10 == 0) {
                blockingSubscribeToTopic(topicOperation.getTopic());
                if (isDebugLogEnabled()) {
                    String topic = topicOperation.getTopic();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(topic).length() + 31);
                    sb2.append("Subscribe to topic: ");
                    sb2.append(topic);
                    sb2.append(" succeeded.");
                }
            } else if (c10 != 1) {
                if (isDebugLogEnabled()) {
                    String valueOf = String.valueOf(topicOperation);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 24);
                    sb3.append("Unknown topic operation");
                    sb3.append(valueOf);
                    sb3.append(".");
                }
            } else {
                blockingUnsubscribeFromTopic(topicOperation.getTopic());
                if (isDebugLogEnabled()) {
                    String topic2 = topicOperation.getTopic();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(topic2).length() + 35);
                    sb4.append("Unsubscribe from topic: ");
                    sb4.append(topic2);
                    sb4.append(" succeeded.");
                }
            }
            return true;
        } catch (IOException e10) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e10.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e10.getMessage())) {
                if (e10.getMessage() == null) {
                    return false;
                }
                throw e10;
            }
            String message = e10.getMessage();
            StringBuilder sb5 = new StringBuilder(String.valueOf(message).length() + 53);
            sb5.append("Topic operation failed: ");
            sb5.append(message);
            sb5.append(". Will retry Topic operation.");
            return false;
        }
    }

    public void scheduleSyncTaskWithDelaySeconds(Runnable runnable, long j10) {
        this.syncExecutor.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    public Task<Void> scheduleTopicOperation(TopicOperation topicOperation) {
        this.store.addTopicOperation(topicOperation);
        TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
        addToPendingOperations(topicOperation, taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public synchronized void setSyncScheduledOrRunning(boolean z10) {
        this.syncScheduledOrRunning = z10;
    }

    public void startTopicsSyncIfNecessary() {
        if (hasPendingOperation()) {
            startSync();
        }
    }

    public Task<Void> subscribeToTopic(String str) {
        Task<Void> scheduleTopicOperation = scheduleTopicOperation(TopicOperation.subscribe(str));
        startTopicsSyncIfNecessary();
        return scheduleTopicOperation;
    }

    public boolean syncTopics() throws IOException {
        while (true) {
            synchronized (this) {
                TopicOperation nextTopicOperation = this.store.getNextTopicOperation();
                if (nextTopicOperation == null) {
                    isDebugLogEnabled();
                    return true;
                }
                if (!performTopicOperation(nextTopicOperation)) {
                    return false;
                }
                this.store.removeTopicOperation(nextTopicOperation);
                markCompletePendingOperation(nextTopicOperation);
            }
        }
    }

    public void syncWithDelaySecondsInternal(long j10) {
        scheduleSyncTaskWithDelaySeconds(new TopicsSyncTask(this, this.context, this.metadata, Math.min(Math.max(30L, j10 + j10), MAX_DELAY_SEC)), j10);
        setSyncScheduledOrRunning(true);
    }

    public Task<Void> unsubscribeFromTopic(String str) {
        Task<Void> scheduleTopicOperation = scheduleTopicOperation(TopicOperation.unsubscribe(str));
        startTopicsSyncIfNecessary();
        return scheduleTopicOperation;
    }
}
