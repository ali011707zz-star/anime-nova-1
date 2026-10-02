package com.google.android.gms.internal.measurement;

import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzms {
    public static final long zza;
    public static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd;
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzmr zzg;
    private static final boolean zzh;
    private static final boolean zzi;

    /* JADX WARN: Removed duplicated region for block: B:15:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013b  */
    static {
        Unsafe unsafe;
        boolean z10;
        zzmr zzmrVar;
        Unsafe unsafe2;
        boolean z11;
        Field zzB;
        zzmr zzmrVar2;
        Unsafe zzg2 = zzg();
        zzc = zzg2;
        zzd = zzij.zza();
        Class<?> cls = Long.TYPE;
        boolean zzv = zzv(cls);
        zze = zzv;
        boolean zzv2 = zzv(Integer.TYPE);
        zzf = zzv2;
        zzmr zzmrVar3 = null;
        if (zzg2 != null) {
            if (zzv) {
                zzmrVar3 = new zzmq(zzg2);
            } else if (zzv2) {
                zzmrVar3 = new zzmp(zzg2);
            }
        }
        zzg = zzmrVar3;
        if (zzmrVar3 != null && (unsafe = zzmrVar3.zza) != null) {
            try {
                Class<?> cls2 = unsafe.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
            } catch (Throwable th) {
                zzh(th);
            }
            if (zzB() != null) {
                z10 = true;
                zzh = z10;
                zzmrVar = zzg;
                if (zzmrVar != null && (unsafe2 = zzmrVar.zza) != null) {
                    try {
                        Class<?> cls3 = unsafe2.getClass();
                        cls3.getMethod("objectFieldOffset", Field.class);
                        cls3.getMethod("arrayBaseOffset", Class.class);
                        cls3.getMethod("arrayIndexScale", Class.class);
                        Class<?> cls4 = Long.TYPE;
                        cls3.getMethod("getInt", Object.class, cls4);
                        cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                        cls3.getMethod("getLong", Object.class, cls4);
                        cls3.getMethod("putLong", Object.class, cls4, cls4);
                        cls3.getMethod("getObject", Object.class, cls4);
                        cls3.getMethod("putObject", Object.class, cls4, Object.class);
                        z11 = true;
                    } catch (Throwable th2) {
                        zzh(th2);
                    }
                    zzi = z11;
                    zza = zzz(byte[].class);
                    zzz(boolean[].class);
                    zzA(boolean[].class);
                    zzz(int[].class);
                    zzA(int[].class);
                    zzz(long[].class);
                    zzA(long[].class);
                    zzz(float[].class);
                    zzA(float[].class);
                    zzz(double[].class);
                    zzA(double[].class);
                    zzz(Object[].class);
                    zzA(Object[].class);
                    zzB = zzB();
                    if (zzB != null && (zzmrVar2 = zzg) != null) {
                        zzmrVar2.zzl(zzB);
                    }
                    zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
                }
                z11 = false;
                zzi = z11;
                zza = zzz(byte[].class);
                zzz(boolean[].class);
                zzA(boolean[].class);
                zzz(int[].class);
                zzA(int[].class);
                zzz(long[].class);
                zzA(long[].class);
                zzz(float[].class);
                zzA(float[].class);
                zzz(double[].class);
                zzA(double[].class);
                zzz(Object[].class);
                zzA(Object[].class);
                zzB = zzB();
                if (zzB != null) {
                    zzmrVar2.zzl(zzB);
                }
                zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
            }
        }
        z10 = false;
        zzh = z10;
        zzmrVar = zzg;
        if (zzmrVar != null) {
            Class<?> cls32 = unsafe2.getClass();
            cls32.getMethod("objectFieldOffset", Field.class);
            cls32.getMethod("arrayBaseOffset", Class.class);
            cls32.getMethod("arrayIndexScale", Class.class);
            Class<?> cls42 = Long.TYPE;
            cls32.getMethod("getInt", Object.class, cls42);
            cls32.getMethod("putInt", Object.class, cls42, Integer.TYPE);
            cls32.getMethod("getLong", Object.class, cls42);
            cls32.getMethod("putLong", Object.class, cls42, cls42);
            cls32.getMethod("getObject", Object.class, cls42);
            cls32.getMethod("putObject", Object.class, cls42, Object.class);
            z11 = true;
            zzi = z11;
            zza = zzz(byte[].class);
            zzz(boolean[].class);
            zzA(boolean[].class);
            zzz(int[].class);
            zzA(int[].class);
            zzz(long[].class);
            zzA(long[].class);
            zzz(float[].class);
            zzA(float[].class);
            zzz(double[].class);
            zzA(double[].class);
            zzz(Object[].class);
            zzA(Object[].class);
            zzB = zzB();
            if (zzB != null) {
            }
            zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        z11 = false;
        zzi = z11;
        zza = zzz(byte[].class);
        zzz(boolean[].class);
        zzA(boolean[].class);
        zzz(int[].class);
        zzA(int[].class);
        zzz(long[].class);
        zzA(long[].class);
        zzz(float[].class);
        zzA(float[].class);
        zzz(double[].class);
        zzA(double[].class);
        zzz(Object[].class);
        zzA(Object[].class);
        zzB = zzB();
        if (zzB != null) {
        }
        zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzms() {
    }

    private static int zzA(Class<?> cls) {
        if (zzi) {
            return zzg.zzi(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i10 = zzij.zza;
        Field zzC = zzC(Buffer.class, "effectiveDirectAddress");
        if (zzC != null) {
            return zzC;
        }
        Field zzC2 = zzC(Buffer.class, "address");
        if (zzC2 == null || zzC2.getType() != Long.TYPE) {
            return null;
        }
        return zzC2;
    }

    private static Field zzC(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        zzmr zzmrVar = zzg;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        zzmrVar.zzn(obj, j11, ((255 & b10) << i10) | (zzmrVar.zzj(obj, j11) & ((BaseProgressIndicator.MAX_ALPHA << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        zzmr zzmrVar = zzg;
        int i10 = (((int) j10) & 3) << 3;
        zzmrVar.zzn(obj, j11, ((255 & b10) << i10) | (zzmrVar.zzj(obj, j11) & ((BaseProgressIndicator.MAX_ALPHA << i10) ^ (-1))));
    }

    public static double zza(Object obj, long j10) {
        return zzg.zza(obj, j10);
    }

    public static float zzb(Object obj, long j10) {
        return zzg.zzb(obj, j10);
    }

    public static int zzc(Object obj, long j10) {
        return zzg.zzj(obj, j10);
    }

    public static long zzd(Object obj, long j10) {
        return zzg.zzk(obj, j10);
    }

    public static <T> T zze(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static Object zzf(Object obj, long j10) {
        return zzg.zzm(obj, j10);
    }

    public static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmo());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger logger = Logger.getLogger(zzms.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 71);
        sb2.append("platform method missing - proto runtime falling back to safer methods: ");
        sb2.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb2.toString());
    }

    public static void zzm(Object obj, long j10, boolean z10) {
        zzg.zzc(obj, j10, z10);
    }

    public static void zzn(byte[] bArr, long j10, byte b10) {
        zzg.zzd(bArr, zza + j10, b10);
    }

    public static void zzo(Object obj, long j10, double d10) {
        zzg.zze(obj, j10, d10);
    }

    public static void zzp(Object obj, long j10, float f10) {
        zzg.zzf(obj, j10, f10);
    }

    public static void zzq(Object obj, long j10, int i10) {
        zzg.zzn(obj, j10, i10);
    }

    public static void zzr(Object obj, long j10, long j11) {
        zzg.zzo(obj, j10, j11);
    }

    public static void zzs(Object obj, long j10, Object obj2) {
        zzg.zzp(obj, j10, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzt(Object obj, long j10) {
        return ((byte) ((zzg.zzj(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3))) & BaseProgressIndicator.MAX_ALPHA)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean zzu(Object obj, long j10) {
        return ((byte) ((zzg.zzj(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & BaseProgressIndicator.MAX_ALPHA)) != 0;
    }

    public static boolean zzv(Class<?> cls) {
        int i10 = zzij.zza;
        try {
            Class<?> cls2 = zzd;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zzw(Object obj, long j10) {
        return zzg.zzg(obj, j10);
    }

    public static boolean zzx() {
        return zzi;
    }

    public static boolean zzy() {
        return zzh;
    }

    private static int zzz(Class<?> cls) {
        if (zzi) {
            return zzg.zzh(cls);
        }
        return -1;
    }
}
