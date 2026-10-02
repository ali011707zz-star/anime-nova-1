package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import s.b;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class GoogleApiManager implements Handler.Callback {

    @RecentlyNonNull
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zab = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zag = new Object();

    @GuardedBy("lock")
    private static GoogleApiManager zaj;
    private TelemetryData zah;
    private TelemetryLoggingClient zai;
    private final Context zak;
    private final GoogleApiAvailability zal;
    private final com.google.android.gms.common.internal.zal zam;

    @NotOnlyInitialized
    private final Handler zat;
    private volatile boolean zau;
    private long zac = 5000;
    private long zad = 120000;
    private long zae = 10000;
    private boolean zaf = false;
    private final AtomicInteger zan = new AtomicInteger(1);
    private final AtomicInteger zao = new AtomicInteger(0);
    private final Map<ApiKey<?>, zabl<?>> zap = new ConcurrentHashMap(5, 0.75f, 1);

    @GuardedBy("lock")
    private zaab zaq = null;

    @GuardedBy("lock")
    private final Set<ApiKey<?>> zar = new b();
    private final Set<ApiKey<?>> zas = new b();

    @KeepForSdk
    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zau = true;
        this.zak = context;
        com.google.android.gms.internal.base.zap zapVar = new com.google.android.gms.internal.base.zap(looper, this);
        this.zat = zapVar;
        this.zal = googleApiAvailability;
        this.zam = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zau = false;
        }
        zapVar.sendMessage(zapVar.obtainMessage(6));
    }

    @KeepForSdk
    public static void reportSignOut() {
        synchronized (zag) {
            GoogleApiManager googleApiManager = zaj;
            if (googleApiManager != null) {
                googleApiManager.zao.incrementAndGet();
                Handler handler = googleApiManager.zat;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    public static /* synthetic */ boolean zaA(GoogleApiManager googleApiManager, boolean z10) {
        googleApiManager.zaf = true;
        return true;
    }

    private final zabl<?> zaH(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zabl<?> zablVar = this.zap.get(apiKey);
        if (zablVar == null) {
            zablVar = new zabl<>(this, googleApi);
            this.zap.put(apiKey, zablVar);
        }
        if (zablVar.zap()) {
            this.zas.add(apiKey);
        }
        zablVar.zam();
        return zablVar;
    }

    private final <T> void zaI(TaskCompletionSource<T> taskCompletionSource, int i10, GoogleApi googleApi) {
        zabx zaa2;
        if (i10 == 0 || (zaa2 = zabx.zaa(this, i10, googleApi.getApiKey())) == null) {
            return;
        }
        Task<T> task = taskCompletionSource.getTask();
        Handler handler = this.zat;
        handler.getClass();
        task.addOnCompleteListener(zabf.zaa(handler), zaa2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zaJ(ApiKey<?> apiKey, ConnectionResult connectionResult) {
        String zab2 = apiKey.zab();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb2 = new StringBuilder(String.valueOf(zab2).length() + 63 + valueOf.length());
        sb2.append("API: ");
        sb2.append(zab2);
        sb2.append(" is not available on this device. Connection failed with: ");
        sb2.append(valueOf);
        return new Status(connectionResult, sb2.toString());
    }

    private final void zaK() {
        TelemetryData telemetryData = this.zah;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || zam()) {
                zaL().log(telemetryData);
            }
            this.zah = null;
        }
    }

    private final TelemetryLoggingClient zaL() {
        if (this.zai == null) {
            this.zai = TelemetryLogging.getClient(this.zak);
        }
        return this.zai;
    }

    @RecentlyNonNull
    public static GoogleApiManager zaa(@RecentlyNonNull Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zag) {
            if (zaj == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zaj = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = zaj;
        }
        return googleApiManager;
    }

    @RecentlyNonNull
    public static GoogleApiManager zab() {
        GoogleApiManager googleApiManager;
        synchronized (zag) {
            Preconditions.checkNotNull(zaj, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = zaj;
        }
        return googleApiManager;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(@RecentlyNonNull Message message) {
        int i10 = message.what;
        zabl<?> zablVar = null;
        switch (i10) {
            case 1:
                this.zae = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.zat.removeMessages(12);
                for (ApiKey<?> apiKey : this.zap.keySet()) {
                    Handler handler = this.zat;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey), this.zae);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                Iterator<ApiKey<?>> it2 = zalVar.zaa().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        ApiKey<?> next = it2.next();
                        zabl<?> zablVar2 = this.zap.get(next);
                        if (zablVar2 == null) {
                            zalVar.zac(next, new ConnectionResult(13), null);
                        } else if (zablVar2.zao()) {
                            zalVar.zac(next, ConnectionResult.RESULT_SUCCESS, zablVar2.zaf().getEndpointPackageName());
                        } else {
                            ConnectionResult zai = zablVar2.zai();
                            if (zai != null) {
                                zalVar.zac(next, zai, null);
                            } else {
                                zablVar2.zan(zalVar);
                                zablVar2.zam();
                            }
                        }
                    }
                }
                return true;
            case 3:
                for (zabl<?> zablVar3 : this.zap.values()) {
                    zablVar3.zah();
                    zablVar3.zam();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zacb zacbVar = (zacb) message.obj;
                zabl<?> zablVar4 = this.zap.get(zacbVar.zac.getApiKey());
                if (zablVar4 == null) {
                    zablVar4 = zaH(zacbVar.zac);
                }
                if (zablVar4.zap() && this.zao.get() != zacbVar.zab) {
                    zacbVar.zaa.zac(zaa);
                    zablVar4.zae();
                } else {
                    zablVar4.zad(zacbVar.zaa);
                }
                return true;
            case 5:
                int i11 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zabl<?>> it3 = this.zap.values().iterator();
                while (true) {
                    if (it3.hasNext()) {
                        zabl<?> next2 = it3.next();
                        if (next2.zaq() == i11) {
                            zablVar = next2;
                        }
                    }
                }
                if (zablVar != null) {
                    if (connectionResult.getErrorCode() == 13) {
                        String errorString = this.zal.getErrorString(connectionResult.getErrorCode());
                        String errorMessage = connectionResult.getErrorMessage();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                        sb2.append("Error resolution was canceled by the user, original error message: ");
                        sb2.append(errorString);
                        sb2.append(": ");
                        sb2.append(errorMessage);
                        zabl.zaw(zablVar, new Status(17, sb2.toString()));
                    } else {
                        zabl.zaw(zablVar, zaJ(zabl.zax(zablVar), connectionResult));
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder(76);
                    sb3.append("Could not find API instance ");
                    sb3.append(i11);
                    sb3.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb3.toString(), new Exception());
                }
                return true;
            case 6:
                if (this.zak.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) this.zak.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new zabg(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.zae = 300000L;
                    }
                }
                return true;
            case 7:
                zaH((GoogleApi) message.obj);
                return true;
            case 9:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zaj();
                }
                return true;
            case 10:
                Iterator<ApiKey<?>> it4 = this.zas.iterator();
                while (it4.hasNext()) {
                    zabl<?> remove = this.zap.remove(it4.next());
                    if (remove != null) {
                        remove.zae();
                    }
                }
                this.zas.clear();
                return true;
            case 11:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zak();
                }
                return true;
            case 12:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zal();
                }
                return true;
            case 14:
                zaac zaacVar = (zaac) message.obj;
                ApiKey<?> zaa2 = zaacVar.zaa();
                if (!this.zap.containsKey(zaa2)) {
                    zaacVar.zab().setResult(Boolean.FALSE);
                } else {
                    zaacVar.zab().setResult(Boolean.valueOf(zabl.zat(this.zap.get(zaa2), false)));
                }
                return true;
            case 15:
                zabm zabmVar = (zabm) message.obj;
                if (this.zap.containsKey(zabm.zaa(zabmVar))) {
                    zabl.zau(this.zap.get(zabm.zaa(zabmVar)), zabmVar);
                }
                return true;
            case 16:
                zabm zabmVar2 = (zabm) message.obj;
                if (this.zap.containsKey(zabm.zaa(zabmVar2))) {
                    zabl.zav(this.zap.get(zabm.zaa(zabmVar2)), zabmVar2);
                }
                return true;
            case 17:
                zaK();
                return true;
            case 18:
                zaby zabyVar = (zaby) message.obj;
                if (zabyVar.zac == 0) {
                    zaL().log(new TelemetryData(zabyVar.zab, Arrays.asList(zabyVar.zaa)));
                } else {
                    TelemetryData telemetryData = this.zah;
                    if (telemetryData != null) {
                        List<MethodInvocation> zab2 = telemetryData.zab();
                        if (this.zah.zaa() == zabyVar.zab && (zab2 == null || zab2.size() < zabyVar.zad)) {
                            this.zah.zac(zabyVar.zaa);
                        } else {
                            this.zat.removeMessages(17);
                            zaK();
                        }
                    }
                    if (this.zah == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(zabyVar.zaa);
                        this.zah = new TelemetryData(zabyVar.zab, arrayList);
                        Handler handler2 = this.zat;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), zabyVar.zac);
                    }
                }
                return true;
            case 19:
                this.zaf = false;
                return true;
            default:
                StringBuilder sb4 = new StringBuilder(31);
                sb4.append("Unknown message id: ");
                sb4.append(i10);
                return false;
        }
    }

    public final int zac() {
        return this.zan.getAndIncrement();
    }

    public final void zad(@RecentlyNonNull GoogleApi<?> googleApi) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final void zae(zaab zaabVar) {
        synchronized (zag) {
            if (this.zaq != zaabVar) {
                this.zaq = zaabVar;
                this.zar.clear();
            }
            this.zar.addAll(zaabVar.zab());
        }
    }

    public final void zaf(zaab zaabVar) {
        synchronized (zag) {
            if (this.zaq == zaabVar) {
                this.zaq = null;
                this.zar.clear();
            }
        }
    }

    public final zabl zag(ApiKey<?> apiKey) {
        return this.zap.get(apiKey);
    }

    @RecentlyNonNull
    public final Task<Map<ApiKey<?>, String>> zah(@RecentlyNonNull Iterable<? extends HasApiKey<?>> iterable) {
        zal zalVar = new zal(iterable);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(2, zalVar));
        return zalVar.zab();
    }

    public final void zai() {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(3));
    }

    @RecentlyNonNull
    public final Task<Boolean> zaj(@RecentlyNonNull GoogleApi<?> googleApi) {
        zaac zaacVar = new zaac(googleApi.getApiKey());
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(14, zaacVar));
        return zaacVar.zab().getTask();
    }

    public final <O extends Api.ApiOptions> void zak(@RecentlyNonNull GoogleApi<O> googleApi, int i10, @RecentlyNonNull BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i10, apiMethodImpl);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zaeVar, this.zao.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zal(@RecentlyNonNull GoogleApi<O> googleApi, int i10, @RecentlyNonNull TaskApiCall<Api.AnyClient, ResultT> taskApiCall, @RecentlyNonNull TaskCompletionSource<ResultT> taskCompletionSource, @RecentlyNonNull StatusExceptionMapper statusExceptionMapper) {
        zaI(taskCompletionSource, taskApiCall.zab(), googleApi);
        zag zagVar = new zag(i10, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zagVar, this.zao.get(), googleApi)));
    }

    public final boolean zam() {
        if (this.zaf) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int zab2 = this.zam.zab(this.zak, 203390000);
        return zab2 == -1 || zab2 == 0;
    }

    @RecentlyNonNull
    public final <O extends Api.ApiOptions> Task<Void> zan(@RecentlyNonNull GoogleApi<O> googleApi, @RecentlyNonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @RecentlyNonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, @RecentlyNonNull Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaI(taskCompletionSource, registerListenerMethod.zab(), googleApi);
        zaf zafVar = new zaf(new zacc(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(8, new zacb(zafVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    @RecentlyNonNull
    public final <O extends Api.ApiOptions> Task<Boolean> zao(@RecentlyNonNull GoogleApi<O> googleApi, @RecentlyNonNull ListenerHolder.ListenerKey listenerKey, int i10) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaI(taskCompletionSource, i10, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(13, new zacb(zahVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final boolean zap(ConnectionResult connectionResult, int i10) {
        return this.zal.zac(this.zak, connectionResult, i10);
    }

    public final void zaq(@RecentlyNonNull ConnectionResult connectionResult, int i10) {
        if (zap(connectionResult, i10)) {
            return;
        }
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(5, i10, 0, connectionResult));
    }

    public final void zar(MethodInvocation methodInvocation, int i10, long j10, int i11) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(18, new zaby(methodInvocation, i10, j10, i11)));
    }
}
