package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final class zzo {
    private final Messenger zza;
    private final zza zzb;

    public zzo(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.zza = new Messenger(iBinder);
            this.zzb = null;
        } else if (IMessengerCompat.DESCRIPTOR.equals(interfaceDescriptor)) {
            this.zzb = new zza(iBinder);
            this.zza = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            if (valueOf.length() != 0) {
                "Invalid interface descriptor: ".concat(valueOf);
            }
            throw new RemoteException();
        }
    }

    public final void zza(Message message) throws RemoteException {
        Messenger messenger = this.zza;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.zzb;
        if (zzaVar != null) {
            zzaVar.zza(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
