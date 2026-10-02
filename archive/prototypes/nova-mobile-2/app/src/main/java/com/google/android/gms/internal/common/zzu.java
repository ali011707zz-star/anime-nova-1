package com.google.android.gms.internal.common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public abstract class zzu<E> extends zzq<E> implements List<E>, RandomAccess {
    private static final zzy<Object> zza = new zzs(zzw.zza, 0);

    public static <E> zzu<E> zzi() {
        return (zzu<E>) zzw.zza;
    }

    public static <E> zzu<E> zzj(E e10) {
        Object[] objArr = {e10};
        zzv.zza(objArr, 1);
        return zzn(objArr, 1);
    }

    public static <E> zzu<E> zzk(E e10, E e11) {
        Object[] objArr = {e10, e11};
        zzv.zza(objArr, 2);
        return zzn(objArr, 2);
    }

    public static <E> zzu<E> zzl(Iterable<? extends E> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return zzm((Collection) iterable);
        }
        Iterator<? extends E> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return (zzu<E>) zzw.zza;
        }
        E next = it2.next();
        if (!it2.hasNext()) {
            return zzj(next);
        }
        zzr zzrVar = new zzr(4);
        zzrVar.zzb((zzr) next);
        zzrVar.zzc(it2);
        zzrVar.zzc = true;
        return zzn(zzrVar.zza, zzrVar.zzb);
    }

    public static <E> zzu<E> zzm(Collection<? extends E> collection) {
        if (collection instanceof zzq) {
            zzu<E> zze = ((zzq) collection).zze();
            if (!zze.zzf()) {
                return zze;
            }
            Object[] array = zze.toArray();
            return zzn(array, array.length);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        zzv.zza(array2, length);
        return zzn(array2, length);
    }

    public static <E> zzu<E> zzn(Object[] objArr, int i10) {
        if (i10 == 0) {
            return (zzu<E>) zzw.zza;
        }
        return new zzw(objArr, i10);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (zzk.zza(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it2 = iterator();
                Iterator<E> it3 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!it3.hasNext() || !zzk.zza(it2.next(), it3.next())) {
                            break;
                        }
                    } else if (!it3.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = (i10 * 31) + get(i11).hashCode();
        }
        return i10;
    }

    @Override // java.util.List
    public final int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.common.zzq
    /* renamed from: zza */
    public final zzx<E> iterator() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final zzu<E> zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public int zzg(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i11] = get(i11);
        }
        return size;
    }

    @Override // java.util.List
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public zzu<E> subList(int i10, int i11) {
        zzl.zzc(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return (zzu<E>) zzw.zza;
        }
        return new zzt(this, i10, i12);
    }

    @Override // java.util.List
    /* renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public final zzy<E> listIterator(int i10) {
        zzl.zzb(i10, size(), "index");
        return isEmpty() ? (zzy<E>) zza : new zzs(this, i10);
    }
}
