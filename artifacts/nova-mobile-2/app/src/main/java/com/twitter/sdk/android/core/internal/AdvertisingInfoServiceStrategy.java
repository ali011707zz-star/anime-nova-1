package com.twitter.sdk.android.core.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.twitter.sdk.android.core.Twitter;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class AdvertisingInfoServiceStrategy implements AdvertisingInfoStrategy {
    private static final String GOOGLE_PLAY_SERVICES_INTENT = "com.google.android.gms.ads.identifier.service.START";
    private static final String GOOGLE_PLAY_SERVICES_INTENT_PACKAGE_NAME = "com.google.android.gms";
    private static final String GOOGLE_PLAY_SERVICE_PACKAGE_NAME = "com.android.vending";
    private final Context context;

    /* loaded from: classes.dex */
    public static final class AdvertisingConnection implements ServiceConnection {
        private static final int QUEUE_TIMEOUT_IN_MS = 200;
        private final LinkedBlockingQueue<IBinder> queue;
        private boolean retrieved;

        private AdvertisingConnection() {
            this.queue = new LinkedBlockingQueue<>(1);
        }

        public IBinder getBinder() {
            if (this.retrieved) {
                Twitter.getLogger().e("Twitter", "getBinder already called");
            }
            this.retrieved = true;
            try {
                return this.queue.poll(200L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                return null;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.queue.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.queue.clear();
        }
    }

    /* loaded from: classes.dex */
    public static final class AdvertisingInterface implements IInterface {
        private static final String ADVERTISING_ID_SERVICE_INTERFACE_TOKEN = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";
        private static final int AD_TRANSACTION_CODE_ID = 1;
        private static final int AD_TRANSACTION_CODE_LIMIT_AD_TRACKING = 2;
        private static final int FLAGS_NONE = 0;
        private final IBinder binder;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isLimitAdTrackingEnabled() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            boolean z10 = false;
            try {
                try {
                    obtain.writeInterfaceToken(ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                    obtain.writeInt(1);
                    this.binder.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                } catch (Exception unused) {
                    Twitter.getLogger().d("Twitter", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
                }
                return z10;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public String getId() throws RemoteException {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken(ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                    this.binder.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    str = obtain2.readString();
                } catch (Exception unused) {
                    Twitter.getLogger().d("Twitter", "Could not get parcel from Google Play Service to capture AdvertisingId");
                    obtain2.recycle();
                    obtain.recycle();
                    str = null;
                }
                return str;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        private AdvertisingInterface(IBinder iBinder) {
            this.binder = iBinder;
        }
    }

    public AdvertisingInfoServiceStrategy(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override // com.twitter.sdk.android.core.internal.AdvertisingInfoStrategy
    public AdvertisingInfo getAdvertisingInfo() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Twitter.getLogger().d("Twitter", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
            return null;
        }
        try {
            this.context.getPackageManager().getPackageInfo("com.android.vending", 0);
            AdvertisingConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent(GOOGLE_PLAY_SERVICES_INTENT);
            intent.setPackage("com.google.android.gms");
            try {
                if (this.context.bindService(intent, advertisingConnection, 1)) {
                    try {
                        try {
                            AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                            return new AdvertisingInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled());
                        } catch (Exception e10) {
                            Twitter.getLogger().w("Twitter", "Exception in binding to Google Play Service to capture AdvertisingId", e10);
                            this.context.unbindService(advertisingConnection);
                        }
                    } finally {
                        this.context.unbindService(advertisingConnection);
                    }
                } else {
                    Twitter.getLogger().d("Twitter", "Could not bind to Google Play Service to capture AdvertisingId");
                }
            } catch (Throwable th) {
                Twitter.getLogger().d("Twitter", "Could not bind to Google Play Service to capture AdvertisingId", th);
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            Twitter.getLogger().d("Twitter", "Unable to find Google Play Services package name");
            return null;
        } catch (Exception e11) {
            Twitter.getLogger().d("Twitter", "Unable to determine if Google Play Services is available", e11);
            return null;
        }
    }
}
