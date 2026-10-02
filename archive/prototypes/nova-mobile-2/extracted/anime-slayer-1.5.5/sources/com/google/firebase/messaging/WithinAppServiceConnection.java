package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.WithinAppServiceConnection;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
class WithinAppServiceConnection implements ServiceConnection {
    private WithinAppServiceBinder binder;
    private boolean connectionInProgress;
    private final Intent connectionIntent;
    private final Context context;
    private final Queue<BindRequest> intentQueue;
    private final ScheduledExecutorService scheduledExecutorService;

    /* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    /* loaded from: classes.dex */
    public static class BindRequest {
        public final Intent intent;
        private final TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();

        public BindRequest(Intent intent) {
            this.intent = intent;
        }

        public void arrangeTimeout(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.messaging.WithinAppServiceConnection$BindRequest$$Lambda$0
                private final WithinAppServiceConnection.BindRequest arg$1;

                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.lambda$arrangeTimeout$0$WithinAppServiceConnection$BindRequest();
                }
            }, 9000L, TimeUnit.MILLISECONDS);
            getTask().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener(schedule) { // from class: com.google.firebase.messaging.WithinAppServiceConnection$BindRequest$$Lambda$1
                private final ScheduledFuture arg$1;

                {
                    this.arg$1 = schedule;
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public void onComplete(Task task) {
                    this.arg$1.cancel(false);
                }
            });
        }

        public void finish() {
            this.taskCompletionSource.trySetResult(null);
        }

        public Task<Void> getTask() {
            return this.taskCompletionSource.getTask();
        }

        public final /* synthetic */ void lambda$arrangeTimeout$0$WithinAppServiceConnection$BindRequest() {
            String action = this.intent.getAction();
            StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 61);
            sb2.append("Service took too long to process intent: ");
            sb2.append(action);
            sb2.append(" App may get closed.");
            finish();
        }
    }

    public WithinAppServiceConnection(Context context, String str) {
        this(context, "com.google.firebase.MESSAGING_EVENT", new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    private void finishAllInQueue() {
        while (!this.intentQueue.isEmpty()) {
            this.intentQueue.poll().finish();
        }
    }

    private synchronized void flushQueue() {
        Log.isLoggable("FirebaseMessaging", 3);
        while (!this.intentQueue.isEmpty()) {
            Log.isLoggable("FirebaseMessaging", 3);
            WithinAppServiceBinder withinAppServiceBinder = this.binder;
            if (withinAppServiceBinder != null && withinAppServiceBinder.isBinderAlive()) {
                Log.isLoggable("FirebaseMessaging", 3);
                this.binder.send(this.intentQueue.poll());
            } else {
                startConnectionIfNeeded();
                return;
            }
        }
    }

    private void startConnectionIfNeeded() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z10 = this.connectionInProgress;
            StringBuilder sb2 = new StringBuilder(39);
            sb2.append("binder is dead. start connection? ");
            sb2.append(!z10);
        }
        if (this.connectionInProgress) {
            return;
        }
        this.connectionInProgress = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.context, this.connectionIntent, this, 65)) {
                return;
            }
        } catch (SecurityException unused) {
        }
        this.connectionInProgress = false;
        finishAllInQueue();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("onServiceConnected: ");
            sb2.append(valueOf);
        }
        this.connectionInProgress = false;
        if (!(iBinder instanceof WithinAppServiceBinder)) {
            String valueOf2 = String.valueOf(iBinder);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 28);
            sb3.append("Invalid service connection: ");
            sb3.append(valueOf2);
            finishAllInQueue();
            return;
        }
        this.binder = (WithinAppServiceBinder) iBinder;
        flushQueue();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
            sb2.append("onServiceDisconnected: ");
            sb2.append(valueOf);
        }
        flushQueue();
    }

    public synchronized Task<Void> sendIntent(Intent intent) {
        BindRequest bindRequest;
        Log.isLoggable("FirebaseMessaging", 3);
        bindRequest = new BindRequest(intent);
        bindRequest.arrangeTimeout(this.scheduledExecutorService);
        this.intentQueue.add(bindRequest);
        flushQueue();
        return bindRequest.getTask();
    }

    public WithinAppServiceConnection(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.intentQueue = new ArrayDeque();
        this.connectionInProgress = false;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.connectionIntent = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.scheduledExecutorService = scheduledExecutorService;
    }
}
