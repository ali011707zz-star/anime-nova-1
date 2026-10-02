package com.google.firebase.crashlytics.internal;

import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponentDeferredProxy;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class CrashlyticsNativeComponentDeferredProxy implements CrashlyticsNativeComponent {
    private static final NativeSessionFileProvider MISSING_NATIVE_SESSION_FILE_PROVIDER = new MissingNativeSessionFileProvider();
    private final AtomicReference<CrashlyticsNativeComponent> availableNativeComponent = new AtomicReference<>(null);
    private final Deferred<CrashlyticsNativeComponent> deferredNativeComponent;

    /* loaded from: classes.dex */
    public static final class MissingNativeSessionFileProvider implements NativeSessionFileProvider {
        private MissingNativeSessionFileProvider() {
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getAppFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getDeviceFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getMetadataFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getMinidumpFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getOsFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public File getSessionFile() {
            return null;
        }
    }

    public CrashlyticsNativeComponentDeferredProxy(Deferred<CrashlyticsNativeComponent> deferred) {
        this.deferredNativeComponent = deferred;
        deferred.whenAvailable(new Deferred.DeferredHandler() { // from class: aa.a
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void handle(Provider provider) {
                CrashlyticsNativeComponentDeferredProxy.this.lambda$new$0(provider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$finalizeSession$2(String str, Provider provider) {
        ((CrashlyticsNativeComponent) provider.get()).finalizeSession(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Provider provider) {
        Logger.getLogger().d("Crashlytics native component now available.");
        this.availableNativeComponent.set((CrashlyticsNativeComponent) provider.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareNativeSession$1(String str, String str2, long j10, StaticSessionData staticSessionData, Provider provider) {
        ((CrashlyticsNativeComponent) provider.get()).prepareNativeSession(str, str2, j10, staticSessionData);
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public void finalizeSession(final String str) {
        this.deferredNativeComponent.whenAvailable(new Deferred.DeferredHandler() { // from class: aa.b
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void handle(Provider provider) {
                CrashlyticsNativeComponentDeferredProxy.lambda$finalizeSession$2(str, provider);
            }
        });
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public NativeSessionFileProvider getSessionFileProvider(String str) {
        CrashlyticsNativeComponent crashlyticsNativeComponent = this.availableNativeComponent.get();
        if (crashlyticsNativeComponent == null) {
            return MISSING_NATIVE_SESSION_FILE_PROVIDER;
        }
        return crashlyticsNativeComponent.getSessionFileProvider(str);
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public boolean hasCrashDataForCurrentSession() {
        CrashlyticsNativeComponent crashlyticsNativeComponent = this.availableNativeComponent.get();
        return crashlyticsNativeComponent != null && crashlyticsNativeComponent.hasCrashDataForCurrentSession();
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public boolean hasCrashDataForSession(String str) {
        CrashlyticsNativeComponent crashlyticsNativeComponent = this.availableNativeComponent.get();
        return crashlyticsNativeComponent != null && crashlyticsNativeComponent.hasCrashDataForSession(str);
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public void prepareNativeSession(final String str, final String str2, final long j10, final StaticSessionData staticSessionData) {
        Logger.getLogger().v("Deferring native open session: " + str);
        this.deferredNativeComponent.whenAvailable(new Deferred.DeferredHandler() { // from class: aa.c
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void handle(Provider provider) {
                CrashlyticsNativeComponentDeferredProxy.lambda$prepareNativeSession$1(str, str2, j10, staticSessionData, provider);
            }
        });
    }
}
