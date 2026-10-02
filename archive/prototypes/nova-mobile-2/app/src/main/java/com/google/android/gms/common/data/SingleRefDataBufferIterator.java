package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zac;

    public SingleRefDataBufferIterator(@RecentlyNonNull DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    @RecentlyNonNull
    public final T next() {
        if (hasNext()) {
            int i10 = this.zab + 1;
            this.zab = i10;
            if (i10 == 0) {
                T t10 = (T) Preconditions.checkNotNull(this.zaa.get(0));
                this.zac = t10;
                if (!(t10 instanceof DataBufferRef)) {
                    String valueOf = String.valueOf(t10.getClass());
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 44);
                    sb2.append("DataBuffer reference of type ");
                    sb2.append(valueOf);
                    sb2.append(" is not movable");
                    throw new IllegalStateException(sb2.toString());
                }
            } else {
                ((DataBufferRef) Preconditions.checkNotNull(this.zac)).zaa(this.zab);
            }
            return this.zac;
        }
        int i11 = this.zab;
        StringBuilder sb3 = new StringBuilder(46);
        sb3.append("Cannot advance the iterator beyond ");
        sb3.append(i11);
        throw new NoSuchElementException(sb3.toString());
    }
}
