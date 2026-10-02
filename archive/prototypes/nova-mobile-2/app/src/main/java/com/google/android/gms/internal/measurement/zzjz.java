package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjv;
import com.google.android.gms.internal.measurement.zzjz;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzjz<MessageType extends zzjz<MessageType, BuilderType>, BuilderType extends zzjv<MessageType, BuilderType>> extends zzih<MessageType, BuilderType> {
    private static final Map<Object, zzjz<?, ?>> zza = new ConcurrentHashMap();
    public zzmj zzc = zzmj.zzc();
    public int zzd = -1;

    public static <E> zzkg<E> zzbA() {
        return zzlp.zze();
    }

    public static <E> zzkg<E> zzbB(zzkg<E> zzkgVar) {
        int size = zzkgVar.size();
        return zzkgVar.zzd(size == 0 ? 10 : size + size);
    }

    public static Object zzbE(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zzbF(zzlg zzlgVar, String str, Object[] objArr) {
        return new zzlq(zzlgVar, str, objArr);
    }

    public static <T extends zzjz> void zzbG(Class<T> cls, T t10) {
        zza.put(cls, t10);
    }

    public static <T extends zzjz> T zzbw(Class<T> cls) {
        Map<Object, zzjz<?, ?>> map = zza;
        zzjz<?, ?> zzjzVar = map.get(cls);
        if (zzjzVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzjzVar = map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzjzVar == null) {
            zzjzVar = (zzjz) ((zzjz) zzms.zze(cls)).zzl(6, null, null);
            if (zzjzVar != null) {
                map.put(cls, zzjzVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzjzVar;
    }

    public static zzke zzbx() {
        return zzka.zzf();
    }

    public static zzkf zzby() {
        return zzkv.zzf();
    }

    public static zzkf zzbz(zzkf zzkfVar) {
        int size = zzkfVar.size();
        return zzkfVar.zzd(size == 0 ? 10 : size + size);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzlo.zza().zzb(getClass()).zzi(this, (zzjz) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzb;
        if (i10 != 0) {
            return i10;
        }
        int zzb = zzlo.zza().zzb(getClass()).zzb(this);
        this.zzb = zzb;
        return zzb;
    }

    public final String toString() {
        return zzli.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* bridge */ /* synthetic */ zzlf zzbC() {
        return (zzjv) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* bridge */ /* synthetic */ zzlf zzbD() {
        zzjv zzjvVar = (zzjv) zzl(5, null, null);
        zzjvVar.zzay(this);
        return zzjvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final void zzbH(zzjg zzjgVar) throws IOException {
        zzlo.zza().zzb(getClass()).zzm(this, zzjh.zza(zzjgVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final /* bridge */ /* synthetic */ zzlg zzbL() {
        return (zzjz) zzl(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final int zzbo() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final void zzbr(int i10) {
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final int zzbt() {
        int i10 = this.zzd;
        if (i10 != -1) {
            return i10;
        }
        int zza2 = zzlo.zza().zzb(getClass()).zza(this);
        this.zzd = zza2;
        return zza2;
    }

    public final <MessageType extends zzjz<MessageType, BuilderType>, BuilderType extends zzjv<MessageType, BuilderType>> BuilderType zzbu() {
        return (BuilderType) zzl(5, null, null);
    }

    public final BuilderType zzbv() {
        BuilderType buildertype = (BuilderType) zzl(5, null, null);
        buildertype.zzay(this);
        return buildertype;
    }

    public abstract Object zzl(int i10, Object obj, Object obj2);
}
