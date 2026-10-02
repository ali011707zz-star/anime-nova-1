package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.data.DataBufferObserver;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class DataBufferObserverSet implements DataBufferObserver, DataBufferObserver.Observable {
    private HashSet<DataBufferObserver> zaa = new HashSet<>();

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void addObserver(@RecentlyNonNull DataBufferObserver dataBufferObserver) {
        this.zaa.add(dataBufferObserver);
    }

    public void clear() {
        this.zaa.clear();
    }

    public boolean hasObservers() {
        return !this.zaa.isEmpty();
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataChanged() {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataChanged();
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeChanged(int i10, int i11) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeChanged(i10, i11);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeInserted(int i10, int i11) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeInserted(i10, i11);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeMoved(int i10, int i11, int i12) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeMoved(i10, i11, i12);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeRemoved(int i10, int i11) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeRemoved(i10, i11);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void removeObserver(@RecentlyNonNull DataBufferObserver dataBufferObserver) {
        this.zaa.remove(dataBufferObserver);
    }
}
