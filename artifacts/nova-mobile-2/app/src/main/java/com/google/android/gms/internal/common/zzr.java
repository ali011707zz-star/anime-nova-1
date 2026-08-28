package com.google.android.gms.internal.common;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzr<E> extends zzo<E> {
    public zzr() {
        super(4);
    }

    public final zzr<E> zzb(E e10) {
        super.zza(e10);
        return this;
    }

    public final zzr<E> zzc(Iterator<? extends E> it2) {
        while (it2.hasNext()) {
            super.zza(it2.next());
        }
        return this;
    }

    public zzr(int i10) {
        super(4);
    }
}
