package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.apache.http.impl.auth.NTLMEngineImpl;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlj<T> implements zzlr<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzms.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlg zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzku zzm;
    private final zzmi<?, ?> zzn;
    private final zzjm<?> zzo;
    private final zzll zzp;
    private final zzlb zzq;

    /* JADX WARN: Multi-variable type inference failed */
    private zzlj(int[] iArr, int[] iArr2, Object[] objArr, int i10, int i11, zzlg zzlgVar, boolean z10, boolean z11, int[] iArr3, int i12, int i13, zzll zzllVar, zzku zzkuVar, zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlb zzlbVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i10;
        this.zzi = zzlgVar;
        boolean z12 = false;
        if (zzmiVar != 0 && zzmiVar.zzc((zzlg) i11)) {
            z12 = true;
        }
        this.zzh = z12;
        this.zzj = z11;
        this.zzk = iArr3;
        this.zzl = i12;
        this.zzp = i13;
        this.zzm = zzllVar;
        this.zzn = zzkuVar;
        this.zzo = zzmiVar;
        this.zzg = i11;
        this.zzq = zzjmVar;
    }

    private static int zzA(int i10) {
        return (i10 >>> 20) & BaseProgressIndicator.MAX_ALPHA;
    }

    private final int zzB(int i10) {
        return this.zzc[i10 + 1];
    }

    private static <T> long zzC(T t10, long j10) {
        return ((Long) zzms.zzf(t10, j10)).longValue();
    }

    private final zzkd zzD(int i10) {
        int i11 = i10 / 3;
        return (zzkd) this.zzd[i11 + i11 + 1];
    }

    private final zzlr zzE(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzlr zzlrVar = (zzlr) this.zzd[i12];
        if (zzlrVar != null) {
            return zzlrVar;
        }
        zzlr<T> zzb2 = zzlo.zza().zzb((Class) this.zzd[i12 + 1]);
        this.zzd[i12] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    private static Field zzG(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            sb2.append(" not found. Known fields are ");
            sb2.append(arrays);
            throw new RuntimeException(sb2.toString());
        }
    }

    private final void zzH(T t10, T t11, int i10) {
        long zzB = zzB(i10) & 1048575;
        if (zzM(t11, i10)) {
            Object zzf = zzms.zzf(t10, zzB);
            Object zzf2 = zzms.zzf(t11, zzB);
            if (zzf != null && zzf2 != null) {
                zzms.zzs(t10, zzB, zzkh.zzg(zzf, zzf2));
                zzJ(t10, i10);
            } else if (zzf2 != null) {
                zzms.zzs(t10, zzB, zzf2);
                zzJ(t10, i10);
            }
        }
    }

    private final void zzI(T t10, T t11, int i10) {
        int zzB = zzB(i10);
        int i11 = this.zzc[i10];
        long j10 = zzB & 1048575;
        if (zzP(t11, i11, i10)) {
            Object zzf = zzP(t10, i11, i10) ? zzms.zzf(t10, j10) : null;
            Object zzf2 = zzms.zzf(t11, j10);
            if (zzf != null && zzf2 != null) {
                zzms.zzs(t10, j10, zzkh.zzg(zzf, zzf2));
                zzK(t10, i11, i10);
            } else if (zzf2 != null) {
                zzms.zzs(t10, j10, zzf2);
                zzK(t10, i11, i10);
            }
        }
    }

    private final void zzJ(T t10, int i10) {
        int zzy = zzy(i10);
        long j10 = 1048575 & zzy;
        if (j10 == 1048575) {
            return;
        }
        zzms.zzq(t10, j10, (1 << (zzy >>> 20)) | zzms.zzc(t10, j10));
    }

    private final void zzK(T t10, int i10, int i11) {
        zzms.zzq(t10, zzy(i11) & 1048575, i10);
    }

    private final boolean zzL(T t10, T t11, int i10) {
        return zzM(t10, i10) == zzM(t11, i10);
    }

    private final boolean zzM(T t10, int i10) {
        int zzy = zzy(i10);
        long j10 = zzy & 1048575;
        if (j10 != 1048575) {
            return (zzms.zzc(t10, j10) & (1 << (zzy >>> 20))) != 0;
        }
        int zzB = zzB(i10);
        long j11 = zzB & 1048575;
        switch (zzA(zzB)) {
            case 0:
                return zzms.zza(t10, j11) != ShadowDrawableWrapper.COS_45;
            case 1:
                return zzms.zzb(t10, j11) != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            case 2:
                return zzms.zzd(t10, j11) != 0;
            case 3:
                return zzms.zzd(t10, j11) != 0;
            case 4:
                return zzms.zzc(t10, j11) != 0;
            case 5:
                return zzms.zzd(t10, j11) != 0;
            case 6:
                return zzms.zzc(t10, j11) != 0;
            case 7:
                return zzms.zzw(t10, j11);
            case 8:
                Object zzf = zzms.zzf(t10, j11);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                }
                if (zzf instanceof zziy) {
                    return !zziy.zzb.equals(zzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzms.zzf(t10, j11) != null;
            case 10:
                return !zziy.zzb.equals(zzms.zzf(t10, j11));
            case 11:
                return zzms.zzc(t10, j11) != 0;
            case 12:
                return zzms.zzc(t10, j11) != 0;
            case 13:
                return zzms.zzc(t10, j11) != 0;
            case 14:
                return zzms.zzd(t10, j11) != 0;
            case 15:
                return zzms.zzc(t10, j11) != 0;
            case 16:
                return zzms.zzd(t10, j11) != 0;
            case 17:
                return zzms.zzf(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzN(T t10, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzM(t10, i10);
        }
        return (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzO(Object obj, int i10, zzlr zzlrVar) {
        return zzlrVar.zzj(zzms.zzf(obj, i10 & 1048575));
    }

    private final boolean zzP(T t10, int i10, int i11) {
        return zzms.zzc(t10, (long) (zzy(i11) & 1048575)) == i10;
    }

    private static <T> boolean zzQ(T t10, long j10) {
        return ((Boolean) zzms.zzf(t10, j10)).booleanValue();
    }

    private final void zzR(T t10, zzjh zzjhVar) throws IOException {
        int i10;
        if (!this.zzh) {
            int length = this.zzc.length;
            Unsafe unsafe = zzb;
            int i11 = 1048575;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1048575;
            while (i12 < length) {
                int zzB = zzB(i12);
                int i15 = this.zzc[i12];
                int zzA = zzA(zzB);
                if (zzA <= 17) {
                    int i16 = this.zzc[i12 + 2];
                    int i17 = i16 & i11;
                    if (i17 != i14) {
                        i13 = unsafe.getInt(t10, i17);
                        i14 = i17;
                    }
                    i10 = 1 << (i16 >>> 20);
                } else {
                    i10 = 0;
                }
                long j10 = zzB & i11;
                switch (zzA) {
                    case 0:
                        if ((i13 & i10) == 0) {
                            break;
                        } else {
                            zzjhVar.zzf(i15, zzms.zza(t10, j10));
                            continue;
                        }
                    case 1:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzo(i15, zzms.zzb(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzt(i15, unsafe.getLong(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzJ(i15, unsafe.getLong(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzr(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzm(i15, unsafe.getLong(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzk(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzb(i15, zzms.zzw(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        if ((i13 & i10) != 0) {
                            zzT(i15, unsafe.getObject(t10, j10), zzjhVar);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzv(i15, unsafe.getObject(t10, j10), zzE(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzd(i15, (zziy) unsafe.getObject(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzH(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzi(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzw(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzy(i15, unsafe.getLong(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzA(i15, unsafe.getInt(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzC(i15, unsafe.getLong(t10, j10));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        if ((i13 & i10) != 0) {
                            zzjhVar.zzq(i15, unsafe.getObject(t10, j10), zzE(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        zzlt.zzL(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 19:
                        zzlt.zzP(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 20:
                        zzlt.zzS(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 21:
                        zzlt.zzaa(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 22:
                        zzlt.zzR(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 23:
                        zzlt.zzO(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 24:
                        zzlt.zzN(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 25:
                        zzlt.zzJ(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        continue;
                    case 26:
                        zzlt.zzY(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar);
                        break;
                    case 27:
                        zzlt.zzT(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, zzE(i12));
                        break;
                    case 28:
                        zzlt.zzK(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar);
                        break;
                    case 29:
                        zzlt.zzZ(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 30:
                        zzlt.zzM(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 31:
                        zzlt.zzU(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 32:
                        zzlt.zzV(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 33:
                        zzlt.zzW(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 34:
                        zzlt.zzX(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, false);
                        break;
                    case 35:
                        zzlt.zzL(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 36:
                        zzlt.zzP(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 37:
                        zzlt.zzS(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 38:
                        zzlt.zzaa(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 39:
                        zzlt.zzR(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 40:
                        zzlt.zzO(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 41:
                        zzlt.zzN(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 42:
                        zzlt.zzJ(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 43:
                        zzlt.zzZ(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 44:
                        zzlt.zzM(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 45:
                        zzlt.zzU(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 46:
                        zzlt.zzV(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 47:
                        zzlt.zzW(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 48:
                        zzlt.zzX(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, true);
                        break;
                    case 49:
                        zzlt.zzQ(this.zzc[i12], (List) unsafe.getObject(t10, j10), zzjhVar, zzE(i12));
                        break;
                    case 50:
                        zzS(zzjhVar, i15, unsafe.getObject(t10, j10), i12);
                        break;
                    case 51:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzf(i15, zzn(t10, j10));
                            break;
                        }
                        break;
                    case 52:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzo(i15, zzo(t10, j10));
                            break;
                        }
                        break;
                    case 53:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzt(i15, zzC(t10, j10));
                            break;
                        }
                        break;
                    case 54:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzJ(i15, zzC(t10, j10));
                            break;
                        }
                        break;
                    case 55:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzr(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 56:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzm(i15, zzC(t10, j10));
                            break;
                        }
                        break;
                    case 57:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzk(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 58:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzb(i15, zzQ(t10, j10));
                            break;
                        }
                        break;
                    case 59:
                        if (zzP(t10, i15, i12)) {
                            zzT(i15, unsafe.getObject(t10, j10), zzjhVar);
                            break;
                        }
                        break;
                    case 60:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzv(i15, unsafe.getObject(t10, j10), zzE(i12));
                            break;
                        }
                        break;
                    case 61:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzd(i15, (zziy) unsafe.getObject(t10, j10));
                            break;
                        }
                        break;
                    case 62:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzH(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 63:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzi(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 64:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzw(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 65:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzy(i15, zzC(t10, j10));
                            break;
                        }
                        break;
                    case 66:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzA(i15, zzr(t10, j10));
                            break;
                        }
                        break;
                    case 67:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzC(i15, zzC(t10, j10));
                            break;
                        }
                        break;
                    case 68:
                        if (zzP(t10, i15, i12)) {
                            zzjhVar.zzq(i15, unsafe.getObject(t10, j10), zzE(i12));
                            break;
                        }
                        break;
                }
                i12 += 3;
                i11 = 1048575;
            }
            zzmi<?, ?> zzmiVar = this.zzn;
            zzmiVar.zzi(zzmiVar.zzc(t10), zzjhVar);
            return;
        }
        this.zzo.zza(t10);
        throw null;
    }

    private final <K, V> void zzS(zzjh zzjhVar, int i10, Object obj, int i11) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private static final void zzT(int i10, Object obj, zzjh zzjhVar) throws IOException {
        if (obj instanceof String) {
            zzjhVar.zzF(i10, (String) obj);
        } else {
            zzjhVar.zzd(i10, (zziy) obj);
        }
    }

    public static zzmj zzd(Object obj) {
        zzjz zzjzVar = (zzjz) obj;
        zzmj zzmjVar = zzjzVar.zzc;
        if (zzmjVar != zzmj.zzc()) {
            return zzmjVar;
        }
        zzmj zze = zzmj.zze();
        zzjzVar.zzc = zze;
        return zze;
    }

    public static <T> zzlj<T> zzk(Class<T> cls, zzld zzldVar, zzll zzllVar, zzku zzkuVar, zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlb zzlbVar) {
        if (zzldVar instanceof zzlq) {
            return zzl((zzlq) zzldVar, zzllVar, zzkuVar, zzmiVar, zzjmVar, zzlbVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0260  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> zzlj<T> zzl(zzlq zzlqVar, zzll zzllVar, zzku zzkuVar, zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlb zzlbVar) {
        int i10;
        int charAt;
        int charAt2;
        int charAt3;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        char charAt4;
        int i16;
        char charAt5;
        int i17;
        char charAt6;
        int i18;
        char charAt7;
        int i19;
        char charAt8;
        int i20;
        char charAt9;
        int i21;
        char charAt10;
        int i22;
        char charAt11;
        int i23;
        int i24;
        int i25;
        int[] iArr2;
        int i26;
        int i27;
        int i28;
        int objectFieldOffset;
        Object[] objArr;
        String str;
        Class<?> cls;
        int i29;
        int i30;
        int i31;
        Field zzG;
        char charAt12;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field zzG2;
        Object obj2;
        Field zzG3;
        int i35;
        char charAt13;
        int i36;
        char charAt14;
        int i37;
        char charAt15;
        int i38;
        char charAt16;
        boolean z10 = zzlqVar.zzc() == 2;
        String zzd = zzlqVar.zzd();
        int length = zzd.length();
        char c10 = 55296;
        if (zzd.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (zzd.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int charAt17 = zzd.charAt(i10);
        if (charAt17 >= 55296) {
            int i41 = charAt17 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                charAt16 = zzd.charAt(i40);
                if (charAt16 < 55296) {
                    break;
                }
                i41 |= (charAt16 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            charAt17 = i41 | (charAt16 << i42);
            i40 = i38;
        }
        if (charAt17 == 0) {
            iArr = zza;
            i12 = 0;
            charAt = 0;
            i14 = 0;
            charAt2 = 0;
            i13 = 0;
            charAt3 = 0;
            i11 = 0;
        } else {
            int i43 = i40 + 1;
            int charAt18 = zzd.charAt(i40);
            if (charAt18 >= 55296) {
                int i44 = charAt18 & 8191;
                int i45 = 13;
                while (true) {
                    i22 = i43 + 1;
                    charAt11 = zzd.charAt(i43);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i44 |= (charAt11 & 8191) << i45;
                    i45 += 13;
                    i43 = i22;
                }
                charAt18 = i44 | (charAt11 << i45);
                i43 = i22;
            }
            int i46 = i43 + 1;
            int charAt19 = zzd.charAt(i43);
            if (charAt19 >= 55296) {
                int i47 = charAt19 & 8191;
                int i48 = 13;
                while (true) {
                    i21 = i46 + 1;
                    charAt10 = zzd.charAt(i46);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i47 |= (charAt10 & 8191) << i48;
                    i48 += 13;
                    i46 = i21;
                }
                charAt19 = i47 | (charAt10 << i48);
                i46 = i21;
            }
            int i49 = i46 + 1;
            charAt = zzd.charAt(i46);
            if (charAt >= 55296) {
                int i50 = charAt & 8191;
                int i51 = 13;
                while (true) {
                    i20 = i49 + 1;
                    charAt9 = zzd.charAt(i49);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i50 |= (charAt9 & 8191) << i51;
                    i51 += 13;
                    i49 = i20;
                }
                charAt = i50 | (charAt9 << i51);
                i49 = i20;
            }
            int i52 = i49 + 1;
            int charAt20 = zzd.charAt(i49);
            if (charAt20 >= 55296) {
                int i53 = charAt20 & 8191;
                int i54 = 13;
                while (true) {
                    i19 = i52 + 1;
                    charAt8 = zzd.charAt(i52);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i53 |= (charAt8 & 8191) << i54;
                    i54 += 13;
                    i52 = i19;
                }
                charAt20 = i53 | (charAt8 << i54);
                i52 = i19;
            }
            int i55 = i52 + 1;
            charAt2 = zzd.charAt(i52);
            if (charAt2 >= 55296) {
                int i56 = charAt2 & 8191;
                int i57 = 13;
                while (true) {
                    i18 = i55 + 1;
                    charAt7 = zzd.charAt(i55);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i56 |= (charAt7 & 8191) << i57;
                    i57 += 13;
                    i55 = i18;
                }
                charAt2 = i56 | (charAt7 << i57);
                i55 = i18;
            }
            int i58 = i55 + 1;
            int charAt21 = zzd.charAt(i55);
            if (charAt21 >= 55296) {
                int i59 = charAt21 & 8191;
                int i60 = 13;
                while (true) {
                    i17 = i58 + 1;
                    charAt6 = zzd.charAt(i58);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i59 |= (charAt6 & 8191) << i60;
                    i60 += 13;
                    i58 = i17;
                }
                charAt21 = i59 | (charAt6 << i60);
                i58 = i17;
            }
            int i61 = i58 + 1;
            int charAt22 = zzd.charAt(i58);
            if (charAt22 >= 55296) {
                int i62 = charAt22 & 8191;
                int i63 = 13;
                while (true) {
                    i16 = i61 + 1;
                    charAt5 = zzd.charAt(i61);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i62 |= (charAt5 & 8191) << i63;
                    i63 += 13;
                    i61 = i16;
                }
                charAt22 = i62 | (charAt5 << i63);
                i61 = i16;
            }
            int i64 = i61 + 1;
            charAt3 = zzd.charAt(i61);
            if (charAt3 >= 55296) {
                int i65 = charAt3 & 8191;
                int i66 = 13;
                while (true) {
                    i15 = i64 + 1;
                    charAt4 = zzd.charAt(i64);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i65 |= (charAt4 & 8191) << i66;
                    i66 += 13;
                    i64 = i15;
                }
                charAt3 = i65 | (charAt4 << i66);
                i64 = i15;
            }
            iArr = new int[charAt3 + charAt21 + charAt22];
            i11 = charAt18 + charAt18 + charAt19;
            i12 = charAt18;
            i40 = i64;
            int i67 = charAt21;
            i13 = charAt20;
            i14 = i67;
        }
        Unsafe unsafe = zzb;
        Object[] zze = zzlqVar.zze();
        Class<?> cls2 = zzlqVar.zza().getClass();
        int[] iArr3 = new int[charAt2 * 3];
        Object[] objArr2 = new Object[charAt2 + charAt2];
        int i68 = charAt3 + i14;
        int i69 = charAt3;
        int i70 = i68;
        int i71 = 0;
        int i72 = 0;
        while (i40 < length) {
            int i73 = i40 + 1;
            int charAt23 = zzd.charAt(i40);
            if (charAt23 >= c10) {
                int i74 = charAt23 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i37 = i75 + 1;
                    charAt15 = zzd.charAt(i75);
                    if (charAt15 < c10) {
                        break;
                    }
                    i74 |= (charAt15 & 8191) << i76;
                    i76 += 13;
                    i75 = i37;
                }
                charAt23 = i74 | (charAt15 << i76);
                i23 = i37;
            } else {
                i23 = i73;
            }
            int i77 = i23 + 1;
            int charAt24 = zzd.charAt(i23);
            if (charAt24 >= c10) {
                int i78 = charAt24 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i36 = i79 + 1;
                    charAt14 = zzd.charAt(i79);
                    i24 = length;
                    if (charAt14 < 55296) {
                        break;
                    }
                    i78 |= (charAt14 & 8191) << i80;
                    i80 += 13;
                    i79 = i36;
                    length = i24;
                }
                charAt24 = i78 | (charAt14 << i80);
                i25 = i36;
            } else {
                i24 = length;
                i25 = i77;
            }
            int i81 = charAt24 & BaseProgressIndicator.MAX_ALPHA;
            int i82 = charAt3;
            if ((charAt24 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0) {
                iArr[i72] = i71;
                i72++;
            }
            if (i81 >= 51) {
                int i83 = i25 + 1;
                int charAt25 = zzd.charAt(i25);
                if (charAt25 >= 55296) {
                    int i84 = charAt25 & 8191;
                    int i85 = i83;
                    int i86 = 13;
                    while (true) {
                        i35 = i85 + 1;
                        charAt13 = zzd.charAt(i85);
                        i27 = i13;
                        if (charAt13 < 55296) {
                            break;
                        }
                        i84 |= (charAt13 & 8191) << i86;
                        i86 += 13;
                        i85 = i35;
                        i13 = i27;
                    }
                    charAt25 = i84 | (charAt13 << i86);
                    i33 = i35;
                } else {
                    i27 = i13;
                    i33 = i83;
                }
                int i87 = i81 - 51;
                i29 = i33;
                if (i87 == 9 || i87 == 17) {
                    int i88 = i71 / 3;
                    i34 = i11 + 1;
                    objArr2[i88 + i88 + 1] = zze[i11];
                } else {
                    if (i87 == 12 && !z10) {
                        int i89 = i71 / 3;
                        i34 = i11 + 1;
                        objArr2[i89 + i89 + 1] = zze[i11];
                    }
                    int i90 = charAt25 + charAt25;
                    obj = zze[i90];
                    if (!(obj instanceof Field)) {
                        zzG2 = (Field) obj;
                    } else {
                        zzG2 = zzG(cls2, (String) obj);
                        zze[i90] = zzG2;
                    }
                    iArr2 = iArr3;
                    i26 = charAt;
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(zzG2);
                    int i91 = i90 + 1;
                    obj2 = zze[i91];
                    if (!(obj2 instanceof Field)) {
                        zzG3 = (Field) obj2;
                    } else {
                        zzG3 = zzG(cls2, (String) obj2);
                        zze[i91] = zzG3;
                    }
                    int objectFieldOffset3 = (int) unsafe.objectFieldOffset(zzG3);
                    str = zzd;
                    cls = cls2;
                    i30 = objectFieldOffset3;
                    objArr = objArr2;
                    objectFieldOffset = objectFieldOffset2;
                    i31 = 0;
                }
                i11 = i34;
                int i902 = charAt25 + charAt25;
                obj = zze[i902];
                if (!(obj instanceof Field)) {
                }
                iArr2 = iArr3;
                i26 = charAt;
                int objectFieldOffset22 = (int) unsafe.objectFieldOffset(zzG2);
                int i912 = i902 + 1;
                obj2 = zze[i912];
                if (!(obj2 instanceof Field)) {
                }
                int objectFieldOffset32 = (int) unsafe.objectFieldOffset(zzG3);
                str = zzd;
                cls = cls2;
                i30 = objectFieldOffset32;
                objArr = objArr2;
                objectFieldOffset = objectFieldOffset22;
                i31 = 0;
            } else {
                iArr2 = iArr3;
                i26 = charAt;
                i27 = i13;
                int i92 = i11 + 1;
                Field zzG4 = zzG(cls2, (String) zze[i11]);
                if (i81 == 9 || i81 == 17) {
                    int i93 = i71 / 3;
                    objArr2[i93 + i93 + 1] = zzG4.getType();
                } else {
                    if (i81 == 27 || i81 == 49) {
                        int i94 = i71 / 3;
                        i32 = i92 + 1;
                        objArr2[i94 + i94 + 1] = zze[i92];
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        if (!z10) {
                            int i95 = i71 / 3;
                            i32 = i92 + 1;
                            objArr2[i95 + i95 + 1] = zze[i92];
                        }
                    } else if (i81 == 50) {
                        int i96 = i69 + 1;
                        iArr[i69] = i71;
                        int i97 = i71 / 3;
                        int i98 = i97 + i97;
                        int i99 = i92 + 1;
                        objArr2[i98] = zze[i92];
                        if ((charAt24 & RecyclerView.e0.FLAG_MOVED) != 0) {
                            i92 = i99 + 1;
                            objArr2[i98 + 1] = zze[i99];
                            i69 = i96;
                        } else {
                            i69 = i96;
                            i28 = i99;
                            objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                            objArr = objArr2;
                            if ((charAt24 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) == 4096 || i81 > 17) {
                                str = zzd;
                                cls = cls2;
                                i29 = i25;
                                i30 = 1048575;
                                i31 = 0;
                            } else {
                                int i100 = i25 + 1;
                                int charAt26 = zzd.charAt(i25);
                                if (charAt26 >= 55296) {
                                    int i101 = charAt26 & 8191;
                                    int i102 = 13;
                                    while (true) {
                                        i29 = i100 + 1;
                                        charAt12 = zzd.charAt(i100);
                                        if (charAt12 < 55296) {
                                            break;
                                        }
                                        i101 |= (charAt12 & 8191) << i102;
                                        i102 += 13;
                                        i100 = i29;
                                    }
                                    charAt26 = i101 | (charAt12 << i102);
                                } else {
                                    i29 = i100;
                                }
                                int i103 = i12 + i12 + (charAt26 / 32);
                                Object obj3 = zze[i103];
                                str = zzd;
                                if (obj3 instanceof Field) {
                                    zzG = (Field) obj3;
                                } else {
                                    zzG = zzG(cls2, (String) obj3);
                                    zze[i103] = zzG;
                                }
                                cls = cls2;
                                i30 = (int) unsafe.objectFieldOffset(zzG);
                                i31 = charAt26 % 32;
                            }
                            if (i81 >= 18 && i81 <= 49) {
                                iArr[i70] = objectFieldOffset;
                                i70++;
                            }
                            i11 = i28;
                        }
                    }
                    i28 = i32;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                    objArr = objArr2;
                    if ((charAt24 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) == 4096) {
                    }
                    str = zzd;
                    cls = cls2;
                    i29 = i25;
                    i30 = 1048575;
                    i31 = 0;
                    if (i81 >= 18) {
                        iArr[i70] = objectFieldOffset;
                        i70++;
                    }
                    i11 = i28;
                }
                i28 = i92;
                objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                objArr = objArr2;
                if ((charAt24 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) == 4096) {
                }
                str = zzd;
                cls = cls2;
                i29 = i25;
                i30 = 1048575;
                i31 = 0;
                if (i81 >= 18) {
                }
                i11 = i28;
            }
            int i104 = i71 + 1;
            iArr2[i71] = charAt23;
            int i105 = i104 + 1;
            iArr2[i104] = ((charAt24 & 256) != 0 ? 268435456 : 0) | ((charAt24 & 512) != 0 ? NTLMEngineImpl.FLAG_NEGOTIATE_128 : 0) | (i81 << 20) | objectFieldOffset;
            i71 = i105 + 1;
            iArr2[i105] = (i31 << 20) | i30;
            cls2 = cls;
            charAt = i26;
            charAt3 = i82;
            i40 = i29;
            length = i24;
            objArr2 = objArr;
            zzd = str;
            iArr3 = iArr2;
            i13 = i27;
            c10 = 55296;
        }
        return new zzlj<>(iArr3, objArr2, charAt, i13, zzlqVar.zza(), z10, false, iArr, charAt3, i68, zzllVar, zzkuVar, zzmiVar, zzjmVar, zzlbVar, null);
    }

    private static <T> double zzn(T t10, long j10) {
        return ((Double) zzms.zzf(t10, j10)).doubleValue();
    }

    private static <T> float zzo(T t10, long j10) {
        return ((Float) zzms.zzf(t10, j10)).floatValue();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x003c. Please report as an issue. */
    private final int zzp(T t10) {
        int i10;
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int zzo;
        int zzz;
        int zzA8;
        int i11;
        Unsafe unsafe = zzb;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        for (int i15 = 0; i15 < this.zzc.length; i15 += 3) {
            int zzB2 = zzB(i15);
            int i16 = this.zzc[i15];
            int zzA9 = zzA(zzB2);
            if (zzA9 <= 17) {
                int i17 = this.zzc[i15 + 2];
                int i18 = i17 & 1048575;
                i10 = 1 << (i17 >>> 20);
                if (i18 != i14) {
                    i13 = unsafe.getInt(t10, i18);
                    i14 = i18;
                }
            } else {
                i10 = 0;
            }
            long j10 = zzB2 & 1048575;
            switch (zzA9) {
                case 0:
                    if ((i13 & i10) != 0) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i13 & i10) != 0) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i13 & i10) != 0) {
                        long j11 = unsafe.getLong(t10, j10);
                        zzA3 = zzjg.zzA(i16 << 3);
                        zzB = zzjg.zzB(j11);
                        zzo = zzA3 + zzB;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i13 & i10) != 0) {
                        long j12 = unsafe.getLong(t10, j10);
                        zzA3 = zzjg.zzA(i16 << 3);
                        zzB = zzjg.zzB(j12);
                        zzo = zzA3 + zzB;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i13 & i10) != 0) {
                        int i19 = unsafe.getInt(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzv(i19);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i13 & i10) != 0) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i13 & i10) != 0) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i13 & i10) != 0) {
                        zzA5 = zzjg.zzA(i16 << 3);
                        zzo = zzA5 + 1;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i13 & i10) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t10, j10);
                        if (object instanceof zziy) {
                            zzA6 = zzjg.zzA(i16 << 3);
                            zzd = ((zziy) object).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i11 = zzA6 + zzA7 + zzd;
                            i12 += i11;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i16 << 3);
                            zzv = zzjg.zzy((String) object);
                            i11 = zzA4 + zzv;
                            i12 += i11;
                        }
                    }
                case 9:
                    if ((i13 & i10) != 0) {
                        zzo = zzlt.zzo(i16, unsafe.getObject(t10, j10), zzE(i15));
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i13 & i10) != 0) {
                        zziy zziyVar = (zziy) unsafe.getObject(t10, j10);
                        zzA6 = zzjg.zzA(i16 << 3);
                        zzd = zziyVar.zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i11 = zzA6 + zzA7 + zzd;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i13 & i10) != 0) {
                        int i20 = unsafe.getInt(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzA(i20);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i13 & i10) != 0) {
                        int i21 = unsafe.getInt(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzv(i21);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i13 & i10) != 0) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i13 & i10) != 0) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i13 & i10) != 0) {
                        int i22 = unsafe.getInt(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzA((i22 >> 31) ^ (i22 + i22));
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i13 & i10) != 0) {
                        long j13 = unsafe.getLong(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzB((j13 >> 63) ^ (j13 + j13));
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i13 & i10) != 0) {
                        zzo = zzjg.zzu(i16, (zzlg) unsafe.getObject(t10, j10), zzE(i15));
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzlt.zzh(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 19:
                    zzo = zzlt.zzf(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 20:
                    zzo = zzlt.zzm(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 21:
                    zzo = zzlt.zzx(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 22:
                    zzo = zzlt.zzk(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 23:
                    zzo = zzlt.zzh(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 24:
                    zzo = zzlt.zzf(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 25:
                    zzo = zzlt.zza(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 26:
                    zzo = zzlt.zzu(i16, (List) unsafe.getObject(t10, j10));
                    i12 += zzo;
                    break;
                case 27:
                    zzo = zzlt.zzp(i16, (List) unsafe.getObject(t10, j10), zzE(i15));
                    i12 += zzo;
                    break;
                case 28:
                    zzo = zzlt.zzc(i16, (List) unsafe.getObject(t10, j10));
                    i12 += zzo;
                    break;
                case 29:
                    zzo = zzlt.zzv(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 30:
                    zzo = zzlt.zzd(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 31:
                    zzo = zzlt.zzf(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 32:
                    zzo = zzlt.zzh(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 33:
                    zzo = zzlt.zzq(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 34:
                    zzo = zzlt.zzs(i16, (List) unsafe.getObject(t10, j10), false);
                    i12 += zzo;
                    break;
                case 35:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzv = zzlt.zzn((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzv = zzlt.zzy((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzv = zzlt.zzl((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzv = zzlt.zzb((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzv = zzlt.zzw((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzv = zzlt.zze((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzv = zzlt.zzr((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzv = zzlt.zzt((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i16);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzlt.zzj(i16, (List) unsafe.getObject(t10, j10), zzE(i15));
                    i12 += zzo;
                    break;
                case 50:
                    zzlb.zza(i16, unsafe.getObject(t10, j10), zzF(i15));
                    break;
                case 51:
                    if (zzP(t10, i16, i15)) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(t10, i16, i15)) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzP(t10, i16, i15)) {
                        long zzC = zzC(t10, j10);
                        zzA3 = zzjg.zzA(i16 << 3);
                        zzB = zzjg.zzB(zzC);
                        zzo = zzA3 + zzB;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(t10, i16, i15)) {
                        long zzC2 = zzC(t10, j10);
                        zzA3 = zzjg.zzA(i16 << 3);
                        zzB = zzjg.zzB(zzC2);
                        zzo = zzA3 + zzB;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(t10, i16, i15)) {
                        int zzr = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzv(zzr);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(t10, i16, i15)) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(t10, i16, i15)) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(t10, i16, i15)) {
                        zzA5 = zzjg.zzA(i16 << 3);
                        zzo = zzA5 + 1;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzP(t10, i16, i15)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t10, j10);
                        if (object2 instanceof zziy) {
                            zzA6 = zzjg.zzA(i16 << 3);
                            zzd = ((zziy) object2).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i11 = zzA6 + zzA7 + zzd;
                            i12 += i11;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i16 << 3);
                            zzv = zzjg.zzy((String) object2);
                            i11 = zzA4 + zzv;
                            i12 += i11;
                        }
                    }
                case 60:
                    if (zzP(t10, i16, i15)) {
                        zzo = zzlt.zzo(i16, unsafe.getObject(t10, j10), zzE(i15));
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(t10, i16, i15)) {
                        zziy zziyVar2 = (zziy) unsafe.getObject(t10, j10);
                        zzA6 = zzjg.zzA(i16 << 3);
                        zzd = zziyVar2.zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i11 = zzA6 + zzA7 + zzd;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzP(t10, i16, i15)) {
                        int zzr2 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzA(zzr2);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(t10, i16, i15)) {
                        int zzr3 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzv(zzr3);
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(t10, i16, i15)) {
                        zzA2 = zzjg.zzA(i16 << 3);
                        zzo = zzA2 + 4;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(t10, i16, i15)) {
                        zzA = zzjg.zzA(i16 << 3);
                        zzo = zzA + 8;
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzP(t10, i16, i15)) {
                        int zzr4 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(t10, i16, i15)) {
                        long zzC3 = zzC(t10, j10);
                        zzA4 = zzjg.zzA(i16 << 3);
                        zzv = zzjg.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i11 = zzA4 + zzv;
                        i12 += i11;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzP(t10, i16, i15)) {
                        zzo = zzjg.zzu(i16, (zzlg) unsafe.getObject(t10, j10), zzE(i15));
                        i12 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzmi<?, ?> zzmiVar = this.zzn;
        int zza2 = i12 + zzmiVar.zza(zzmiVar.zzc(t10));
        if (!this.zzh) {
            return zza2;
        }
        this.zzo.zza(t10);
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0033. Please report as an issue. */
    private final int zzq(T t10) {
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int zzo;
        int zzz;
        int zzA8;
        int i10;
        Unsafe unsafe = zzb;
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzc.length; i12 += 3) {
            int zzB2 = zzB(i12);
            int zzA9 = zzA(zzB2);
            int i13 = this.zzc[i12];
            long j10 = zzB2 & 1048575;
            if (zzA9 >= zzjr.zzJ.zza() && zzA9 <= zzjr.zzW.zza()) {
                int i14 = this.zzc[i12 + 2];
            }
            switch (zzA9) {
                case 0:
                    if (zzM(t10, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(t10, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(t10, i12)) {
                        long zzd2 = zzms.zzd(t10, j10);
                        zzA3 = zzjg.zzA(i13 << 3);
                        zzB = zzjg.zzB(zzd2);
                        i11 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(t10, i12)) {
                        long zzd3 = zzms.zzd(t10, j10);
                        zzA3 = zzjg.zzA(i13 << 3);
                        zzB = zzjg.zzB(zzd3);
                        i11 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(t10, i12)) {
                        int zzc = zzms.zzc(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzv(zzc);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(t10, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(t10, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(t10, i12)) {
                        zzA5 = zzjg.zzA(i13 << 3);
                        zzo = zzA5 + 1;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzM(t10, i12)) {
                        break;
                    } else {
                        Object zzf = zzms.zzf(t10, j10);
                        if (zzf instanceof zziy) {
                            zzA6 = zzjg.zzA(i13 << 3);
                            zzd = ((zziy) zzf).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i10 = zzA6 + zzA7 + zzd;
                            i11 += i10;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i13 << 3);
                            zzv = zzjg.zzy((String) zzf);
                            i10 = zzA4 + zzv;
                            i11 += i10;
                        }
                    }
                case 9:
                    if (zzM(t10, i12)) {
                        zzo = zzlt.zzo(i13, zzms.zzf(t10, j10), zzE(i12));
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzM(t10, i12)) {
                        zziy zziyVar = (zziy) zzms.zzf(t10, j10);
                        zzA6 = zzjg.zzA(i13 << 3);
                        zzd = zziyVar.zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i10 = zzA6 + zzA7 + zzd;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(t10, i12)) {
                        int zzc2 = zzms.zzc(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzA(zzc2);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(t10, i12)) {
                        int zzc3 = zzms.zzc(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzv(zzc3);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(t10, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(t10, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(t10, i12)) {
                        int zzc4 = zzms.zzc(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzA((zzc4 >> 31) ^ (zzc4 + zzc4));
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(t10, i12)) {
                        long zzd4 = zzms.zzd(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzB((zzd4 >> 63) ^ (zzd4 + zzd4));
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzM(t10, i12)) {
                        zzo = zzjg.zzu(i13, (zzlg) zzms.zzf(t10, j10), zzE(i12));
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzlt.zzh(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 19:
                    zzo = zzlt.zzf(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 20:
                    zzo = zzlt.zzm(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 21:
                    zzo = zzlt.zzx(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 22:
                    zzo = zzlt.zzk(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 23:
                    zzo = zzlt.zzh(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 24:
                    zzo = zzlt.zzf(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 25:
                    zzo = zzlt.zza(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 26:
                    zzo = zzlt.zzu(i13, (List) zzms.zzf(t10, j10));
                    i11 += zzo;
                    break;
                case 27:
                    zzo = zzlt.zzp(i13, (List) zzms.zzf(t10, j10), zzE(i12));
                    i11 += zzo;
                    break;
                case 28:
                    zzo = zzlt.zzc(i13, (List) zzms.zzf(t10, j10));
                    i11 += zzo;
                    break;
                case 29:
                    zzo = zzlt.zzv(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 30:
                    zzo = zzlt.zzd(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 31:
                    zzo = zzlt.zzf(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 32:
                    zzo = zzlt.zzh(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 33:
                    zzo = zzlt.zzq(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 34:
                    zzo = zzlt.zzs(i13, (List) zzms.zzf(t10, j10), false);
                    i11 += zzo;
                    break;
                case 35:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzv = zzlt.zzn((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzv = zzlt.zzy((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzv = zzlt.zzl((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzv = zzlt.zzb((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzv = zzlt.zzw((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzv = zzlt.zze((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzv = zzlt.zzg((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzv = zzlt.zzi((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzv = zzlt.zzr((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzv = zzlt.zzt((List) unsafe.getObject(t10, j10));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i13);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzlt.zzj(i13, (List) zzms.zzf(t10, j10), zzE(i12));
                    i11 += zzo;
                    break;
                case 50:
                    zzlb.zza(i13, zzms.zzf(t10, j10), zzF(i12));
                    break;
                case 51:
                    if (zzP(t10, i13, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(t10, i13, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzP(t10, i13, i12)) {
                        long zzC = zzC(t10, j10);
                        zzA3 = zzjg.zzA(i13 << 3);
                        zzB = zzjg.zzB(zzC);
                        i11 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(t10, i13, i12)) {
                        long zzC2 = zzC(t10, j10);
                        zzA3 = zzjg.zzA(i13 << 3);
                        zzB = zzjg.zzB(zzC2);
                        i11 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(t10, i13, i12)) {
                        int zzr = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzv(zzr);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(t10, i13, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(t10, i13, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(t10, i13, i12)) {
                        zzA5 = zzjg.zzA(i13 << 3);
                        zzo = zzA5 + 1;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzP(t10, i13, i12)) {
                        break;
                    } else {
                        Object zzf2 = zzms.zzf(t10, j10);
                        if (zzf2 instanceof zziy) {
                            zzA6 = zzjg.zzA(i13 << 3);
                            zzd = ((zziy) zzf2).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i10 = zzA6 + zzA7 + zzd;
                            i11 += i10;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i13 << 3);
                            zzv = zzjg.zzy((String) zzf2);
                            i10 = zzA4 + zzv;
                            i11 += i10;
                        }
                    }
                case 60:
                    if (zzP(t10, i13, i12)) {
                        zzo = zzlt.zzo(i13, zzms.zzf(t10, j10), zzE(i12));
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(t10, i13, i12)) {
                        zziy zziyVar2 = (zziy) zzms.zzf(t10, j10);
                        zzA6 = zzjg.zzA(i13 << 3);
                        zzd = zziyVar2.zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i10 = zzA6 + zzA7 + zzd;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzP(t10, i13, i12)) {
                        int zzr2 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzA(zzr2);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(t10, i13, i12)) {
                        int zzr3 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzv(zzr3);
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(t10, i13, i12)) {
                        zzA2 = zzjg.zzA(i13 << 3);
                        zzo = zzA2 + 4;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(t10, i13, i12)) {
                        zzA = zzjg.zzA(i13 << 3);
                        zzo = zzA + 8;
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzP(t10, i13, i12)) {
                        int zzr4 = zzr(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(t10, i13, i12)) {
                        long zzC3 = zzC(t10, j10);
                        zzA4 = zzjg.zzA(i13 << 3);
                        zzv = zzjg.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i10 = zzA4 + zzv;
                        i11 += i10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzP(t10, i13, i12)) {
                        zzo = zzjg.zzu(i13, (zzlg) zzms.zzf(t10, j10), zzE(i12));
                        i11 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzmi<?, ?> zzmiVar = this.zzn;
        return i11 + zzmiVar.zza(zzmiVar.zzc(t10));
    }

    private static <T> int zzr(T t10, long j10) {
        return ((Integer) zzms.zzf(t10, j10)).intValue();
    }

    private final <K, V> int zzs(T t10, byte[] bArr, int i10, int i11, int i12, long j10, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i12);
        Object object = unsafe.getObject(t10, j10);
        if (!((zzla) object).zze()) {
            zzla<K, V> zzb2 = zzla.zza().zzb();
            zzlb.zzb(zzb2, object);
            unsafe.putObject(t10, j10, zzb2);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    private final int zzt(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        long j11 = this.zzc[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 == 1) {
                    unsafe.putObject(t10, j10, Double.valueOf(Double.longBitsToDouble(zzil.zzn(bArr, i10))));
                    unsafe.putInt(t10, j11, i13);
                    return i10 + 8;
                }
                return i10;
            case 52:
                if (i14 == 5) {
                    unsafe.putObject(t10, j10, Float.valueOf(Float.intBitsToFloat(zzil.zzb(bArr, i10))));
                    unsafe.putInt(t10, j11, i13);
                    return i10 + 4;
                }
                return i10;
            case 53:
            case 54:
                if (i14 == 0) {
                    int zzm = zzil.zzm(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, Long.valueOf(zzikVar.zzb));
                    unsafe.putInt(t10, j11, i13);
                    return zzm;
                }
                return i10;
            case 55:
            case 62:
                if (i14 == 0) {
                    int zzj = zzil.zzj(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(zzikVar.zza));
                    unsafe.putInt(t10, j11, i13);
                    return zzj;
                }
                return i10;
            case 56:
            case 65:
                if (i14 == 1) {
                    unsafe.putObject(t10, j10, Long.valueOf(zzil.zzn(bArr, i10)));
                    unsafe.putInt(t10, j11, i13);
                    return i10 + 8;
                }
                return i10;
            case 57:
            case 64:
                if (i14 == 5) {
                    unsafe.putObject(t10, j10, Integer.valueOf(zzil.zzb(bArr, i10)));
                    unsafe.putInt(t10, j11, i13);
                    return i10 + 4;
                }
                return i10;
            case 58:
                if (i14 == 0) {
                    int zzm2 = zzil.zzm(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, Boolean.valueOf(zzikVar.zzb != 0));
                    unsafe.putInt(t10, j11, i13);
                    return zzm2;
                }
                return i10;
            case 59:
                if (i14 == 2) {
                    int zzj2 = zzil.zzj(bArr, i10, zzikVar);
                    int i18 = zzikVar.zza;
                    if (i18 == 0) {
                        unsafe.putObject(t10, j10, "");
                    } else {
                        if ((i15 & NTLMEngineImpl.FLAG_NEGOTIATE_128) != 0 && !zzmx.zzf(bArr, zzj2, zzj2 + i18)) {
                            throw zzkj.zzc();
                        }
                        unsafe.putObject(t10, j10, new String(bArr, zzj2, i18, zzkh.zza));
                        zzj2 += i18;
                    }
                    unsafe.putInt(t10, j11, i13);
                    return zzj2;
                }
                return i10;
            case 60:
                if (i14 == 2) {
                    int zzd = zzil.zzd(zzE(i17), bArr, i10, i11, zzikVar);
                    Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                    if (object == null) {
                        unsafe.putObject(t10, j10, zzikVar.zzc);
                    } else {
                        unsafe.putObject(t10, j10, zzkh.zzg(object, zzikVar.zzc));
                    }
                    unsafe.putInt(t10, j11, i13);
                    return zzd;
                }
                return i10;
            case 61:
                if (i14 == 2) {
                    int zza2 = zzil.zza(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, zzikVar.zzc);
                    unsafe.putInt(t10, j11, i13);
                    return zza2;
                }
                return i10;
            case 63:
                if (i14 == 0) {
                    int zzj3 = zzil.zzj(bArr, i10, zzikVar);
                    int i19 = zzikVar.zza;
                    zzkd zzD = zzD(i17);
                    if (zzD != null && !zzD.zza(i19)) {
                        zzd(t10).zzh(i12, Long.valueOf(i19));
                    } else {
                        unsafe.putObject(t10, j10, Integer.valueOf(i19));
                        unsafe.putInt(t10, j11, i13);
                    }
                    return zzj3;
                }
                return i10;
            case 66:
                if (i14 == 0) {
                    int zzj4 = zzil.zzj(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(zzjc.zzb(zzikVar.zza)));
                    unsafe.putInt(t10, j11, i13);
                    return zzj4;
                }
                return i10;
            case 67:
                if (i14 == 0) {
                    int zzm3 = zzil.zzm(bArr, i10, zzikVar);
                    unsafe.putObject(t10, j10, Long.valueOf(zzjc.zzc(zzikVar.zzb)));
                    unsafe.putInt(t10, j11, i13);
                    return zzm3;
                }
                return i10;
            case 68:
                if (i14 == 3) {
                    int zzc = zzil.zzc(zzE(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzikVar);
                    Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                    if (object2 == null) {
                        unsafe.putObject(t10, j10, zzikVar.zzc);
                    } else {
                        unsafe.putObject(t10, j10, zzkh.zzg(object2, zzikVar.zzc));
                    }
                    unsafe.putInt(t10, j11, i13);
                    return zzc;
                }
                return i10;
            default:
                return i10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:151:0x02a8, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02aa, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r19;
        r1 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02be, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02f1, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0314, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0097. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zzu(T t10, byte[] bArr, int i10, int i11, zzik zzikVar) throws IOException {
        byte b10;
        int i12;
        int zzw;
        int i13;
        int i14;
        Unsafe unsafe;
        int i15;
        int i16;
        Unsafe unsafe2;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int zzm;
        int i22;
        Unsafe unsafe3;
        zzlj<T> zzljVar = this;
        T t11 = t10;
        byte[] bArr2 = bArr;
        int i23 = i11;
        zzik zzikVar2 = zzikVar;
        Unsafe unsafe4 = zzb;
        int i24 = -1;
        int i25 = 1048575;
        int i26 = i10;
        int i27 = -1;
        int i28 = 0;
        int i29 = 0;
        int i30 = 1048575;
        while (i26 < i23) {
            int i31 = i26 + 1;
            byte b11 = bArr2[i26];
            if (b11 < 0) {
                i12 = zzil.zzk(b11, bArr2, i31, zzikVar2);
                b10 = zzikVar2.zza;
            } else {
                b10 = b11;
                i12 = i31;
            }
            int i32 = b10 >>> 3;
            int i33 = b10 & 7;
            if (i32 > i27) {
                zzw = zzljVar.zzx(i32, i28 / 3);
            } else {
                zzw = zzljVar.zzw(i32);
            }
            int i34 = zzw;
            if (i34 == i24) {
                i13 = i12;
                i14 = i32;
                unsafe = unsafe4;
                i15 = 0;
            } else {
                int i35 = zzljVar.zzc[i34 + 1];
                int zzA = zzA(i35);
                Unsafe unsafe5 = unsafe4;
                long j10 = i35 & i25;
                if (zzA <= 17) {
                    int i36 = zzljVar.zzc[i34 + 2];
                    int i37 = 1 << (i36 >>> 20);
                    int i38 = i36 & 1048575;
                    if (i38 != i30) {
                        i20 = i35;
                        i21 = i34;
                        if (i30 != 1048575) {
                            long j11 = i30;
                            unsafe3 = unsafe5;
                            unsafe3.putInt(t11, j11, i29);
                        } else {
                            unsafe3 = unsafe5;
                        }
                        if (i38 != 1048575) {
                            i29 = unsafe3.getInt(t11, i38);
                        }
                        unsafe2 = unsafe3;
                        i30 = i38;
                    } else {
                        i20 = i35;
                        i21 = i34;
                        unsafe2 = unsafe5;
                    }
                    switch (zzA) {
                        case 0:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 1) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                zzms.zzo(t11, j10, Double.longBitsToDouble(zzil.zzn(bArr2, i12)));
                                i26 = i12 + 8;
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 1:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 5) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                zzms.zzp(t11, j10, Float.intBitsToFloat(zzil.zzb(bArr2, i12)));
                                i26 = i12 + 4;
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 2:
                        case 3:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 0) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                zzm = zzil.zzm(bArr2, i12, zzikVar2);
                                unsafe2.putLong(t10, j10, zzikVar2.zzb);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i26 = zzm;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 4:
                        case 11:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 0) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i26 = zzil.zzj(bArr2, i12, zzikVar2);
                                unsafe2.putInt(t11, j10, zzikVar2.zza);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 5:
                        case 14:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 1) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                unsafe2.putLong(t10, j10, zzil.zzn(bArr2, i12));
                                i26 = i12 + 8;
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 6:
                        case 13:
                            i22 = i11;
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 5) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                unsafe2.putInt(t11, j10, zzil.zzb(bArr2, i12));
                                i26 = i12 + 4;
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                int i39 = i16;
                                i23 = i22;
                                i28 = i39;
                                break;
                            }
                        case 7:
                            i22 = i11;
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 0) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i26 = zzil.zzm(bArr2, i12, zzikVar2);
                                zzms.zzm(t11, j10, zzikVar2.zzb != 0);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                int i392 = i16;
                                i23 = i22;
                                i28 = i392;
                                break;
                            }
                        case 8:
                            i22 = i11;
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 2) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                if ((i20 & NTLMEngineImpl.FLAG_NEGOTIATE_128) == 0) {
                                    i26 = zzil.zzg(bArr2, i12, zzikVar2);
                                } else {
                                    i26 = zzil.zzh(bArr2, i12, zzikVar2);
                                }
                                unsafe2.putObject(t11, j10, zzikVar2.zzc);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                int i3922 = i16;
                                i23 = i22;
                                i28 = i3922;
                                break;
                            }
                        case 9:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 2) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i22 = i11;
                                i26 = zzil.zzd(zzljVar.zzE(i16), bArr2, i12, i22, zzikVar2);
                                Object object = unsafe2.getObject(t11, j10);
                                if (object == null) {
                                    unsafe2.putObject(t11, j10, zzikVar2.zzc);
                                } else {
                                    unsafe2.putObject(t11, j10, zzkh.zzg(object, zzikVar2.zzc));
                                }
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                int i39222 = i16;
                                i23 = i22;
                                i28 = i39222;
                                break;
                            }
                        case 10:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 2) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i26 = zzil.zza(bArr2, i12, zzikVar2);
                                unsafe2.putObject(t11, j10, zzikVar2.zzc);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 12:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 0) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i26 = zzil.zzj(bArr2, i12, zzikVar2);
                                unsafe2.putInt(t11, j10, zzikVar2.zza);
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 15:
                            i16 = i21;
                            i14 = i32;
                            if (i33 != 0) {
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                i26 = zzil.zzj(bArr2, i12, zzikVar2);
                                unsafe2.putInt(t11, j10, zzjc.zzb(zzikVar2.zza));
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        case 16:
                            if (i33 != 0) {
                                i16 = i21;
                                i14 = i32;
                                i13 = i12;
                                unsafe = unsafe2;
                                i15 = i16;
                                break;
                            } else {
                                zzm = zzil.zzm(bArr2, i12, zzikVar2);
                                i16 = i21;
                                i14 = i32;
                                unsafe2.putLong(t10, j10, zzjc.zzc(zzikVar2.zzb));
                                i29 |= i37;
                                unsafe4 = unsafe2;
                                i28 = i16;
                                i26 = zzm;
                                i27 = i14;
                                i25 = 1048575;
                                i24 = -1;
                                i23 = i11;
                                break;
                            }
                        default:
                            i16 = i21;
                            i14 = i32;
                            i13 = i12;
                            unsafe = unsafe2;
                            i15 = i16;
                            break;
                    }
                } else {
                    i14 = i32;
                    i16 = i34;
                    unsafe2 = unsafe5;
                    if (zzA != 27) {
                        if (zzA <= 49) {
                            int i40 = i12;
                            i18 = i29;
                            i19 = i30;
                            unsafe = unsafe2;
                            i15 = i16;
                            i26 = zzv(t10, bArr, i12, i11, b10, i14, i33, i16, i35, zzA, j10, zzikVar);
                        } else {
                            i17 = i12;
                            i18 = i29;
                            i19 = i30;
                            unsafe = unsafe2;
                            i15 = i16;
                            if (zzA != 50) {
                                i26 = zzt(t10, bArr, i17, i11, b10, i14, i33, i35, zzA, j10, i15, zzikVar);
                            } else if (i33 == 2) {
                                i26 = zzs(t10, bArr, i17, i11, i15, j10, zzikVar);
                            }
                        }
                        unsafe4 = unsafe;
                        i25 = 1048575;
                        i24 = -1;
                    } else if (i33 == 2) {
                        zzkg zzkgVar = (zzkg) unsafe2.getObject(t11, j10);
                        if (!zzkgVar.zzc()) {
                            int size = zzkgVar.size();
                            zzkgVar = zzkgVar.zzd(size == 0 ? 10 : size + size);
                            unsafe2.putObject(t11, j10, zzkgVar);
                        }
                        i26 = zzil.zze(zzljVar.zzE(i16), b10, bArr, i12, i11, zzkgVar, zzikVar);
                        i29 = i29;
                        unsafe4 = unsafe2;
                        i28 = i16;
                        i27 = i14;
                        i25 = 1048575;
                        i24 = -1;
                        i23 = i11;
                    } else {
                        i17 = i12;
                        i18 = i29;
                        i19 = i30;
                        unsafe = unsafe2;
                        i15 = i16;
                    }
                    i13 = i17;
                    i29 = i18;
                    i30 = i19;
                }
            }
            i26 = zzil.zzi(b10, bArr, i13, i11, zzd(t10), zzikVar);
            zzljVar = this;
            t11 = t10;
            bArr2 = bArr;
            i23 = i11;
            zzikVar2 = zzikVar;
            i28 = i15;
            i27 = i14;
            unsafe4 = unsafe;
            i25 = 1048575;
            i24 = -1;
        }
        int i41 = i29;
        Unsafe unsafe6 = unsafe4;
        if (i30 != 1048575) {
            unsafe6.putInt(t10, i30, i41);
        }
        if (i26 == i11) {
            return i26;
        }
        throw zzkj.zze();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0037. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private final int zzv(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, zzik zzikVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int zzj;
        int i21 = i10;
        Unsafe unsafe = zzb;
        zzkg zzkgVar = (zzkg) unsafe.getObject(t10, j11);
        if (!zzkgVar.zzc()) {
            int size = zzkgVar.size();
            zzkgVar = zzkgVar.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(t10, j11, zzkgVar);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzji zzjiVar = (zzji) zzkgVar;
                    int zzj2 = zzil.zzj(bArr, i21, zzikVar);
                    int i22 = zzikVar.zza + zzj2;
                    while (zzj2 < i22) {
                        zzjiVar.zze(Double.longBitsToDouble(zzil.zzn(bArr, zzj2)));
                        zzj2 += 8;
                    }
                    if (zzj2 == i22) {
                        return zzj2;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 1) {
                    zzji zzjiVar2 = (zzji) zzkgVar;
                    zzjiVar2.zze(Double.longBitsToDouble(zzil.zzn(bArr, i10)));
                    while (true) {
                        i17 = i21 + 8;
                        if (i17 < i11) {
                            i21 = zzil.zzj(bArr, i17, zzikVar);
                            if (i12 == zzikVar.zza) {
                                zzjiVar2.zze(Double.longBitsToDouble(zzil.zzn(bArr, i21)));
                            }
                        }
                    }
                    return i17;
                }
                return i21;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzjs zzjsVar = (zzjs) zzkgVar;
                    int zzj3 = zzil.zzj(bArr, i21, zzikVar);
                    int i23 = zzikVar.zza + zzj3;
                    while (zzj3 < i23) {
                        zzjsVar.zze(Float.intBitsToFloat(zzil.zzb(bArr, zzj3)));
                        zzj3 += 4;
                    }
                    if (zzj3 == i23) {
                        return zzj3;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 5) {
                    zzjs zzjsVar2 = (zzjs) zzkgVar;
                    zzjsVar2.zze(Float.intBitsToFloat(zzil.zzb(bArr, i10)));
                    while (true) {
                        i18 = i21 + 4;
                        if (i18 < i11) {
                            i21 = zzil.zzj(bArr, i18, zzikVar);
                            if (i12 == zzikVar.zza) {
                                zzjsVar2.zze(Float.intBitsToFloat(zzil.zzb(bArr, i21)));
                            }
                        }
                    }
                    return i18;
                }
                return i21;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    zzkv zzkvVar = (zzkv) zzkgVar;
                    int zzj4 = zzil.zzj(bArr, i21, zzikVar);
                    int i24 = zzikVar.zza + zzj4;
                    while (zzj4 < i24) {
                        zzj4 = zzil.zzm(bArr, zzj4, zzikVar);
                        zzkvVar.zzg(zzikVar.zzb);
                    }
                    if (zzj4 == i24) {
                        return zzj4;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 0) {
                    zzkv zzkvVar2 = (zzkv) zzkgVar;
                    int zzm = zzil.zzm(bArr, i21, zzikVar);
                    zzkvVar2.zzg(zzikVar.zzb);
                    while (zzm < i11) {
                        int zzj5 = zzil.zzj(bArr, zzm, zzikVar);
                        if (i12 != zzikVar.zza) {
                            return zzm;
                        }
                        zzm = zzil.zzm(bArr, zzj5, zzikVar);
                        zzkvVar2.zzg(zzikVar.zzb);
                    }
                    return zzm;
                }
                return i21;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzil.zzf(bArr, i21, zzkgVar, zzikVar);
                }
                if (i14 == 0) {
                    return zzil.zzl(i12, bArr, i10, i11, zzkgVar, zzikVar);
                }
                return i21;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzkv zzkvVar3 = (zzkv) zzkgVar;
                    int zzj6 = zzil.zzj(bArr, i21, zzikVar);
                    int i25 = zzikVar.zza + zzj6;
                    while (zzj6 < i25) {
                        zzkvVar3.zzg(zzil.zzn(bArr, zzj6));
                        zzj6 += 8;
                    }
                    if (zzj6 == i25) {
                        return zzj6;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 1) {
                    zzkv zzkvVar4 = (zzkv) zzkgVar;
                    zzkvVar4.zzg(zzil.zzn(bArr, i10));
                    while (true) {
                        i19 = i21 + 8;
                        if (i19 < i11) {
                            i21 = zzil.zzj(bArr, i19, zzikVar);
                            if (i12 == zzikVar.zza) {
                                zzkvVar4.zzg(zzil.zzn(bArr, i21));
                            }
                        }
                    }
                    return i19;
                }
                return i21;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    zzka zzkaVar = (zzka) zzkgVar;
                    int zzj7 = zzil.zzj(bArr, i21, zzikVar);
                    int i26 = zzikVar.zza + zzj7;
                    while (zzj7 < i26) {
                        zzkaVar.zzh(zzil.zzb(bArr, zzj7));
                        zzj7 += 4;
                    }
                    if (zzj7 == i26) {
                        return zzj7;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 5) {
                    zzka zzkaVar2 = (zzka) zzkgVar;
                    zzkaVar2.zzh(zzil.zzb(bArr, i10));
                    while (true) {
                        i20 = i21 + 4;
                        if (i20 < i11) {
                            i21 = zzil.zzj(bArr, i20, zzikVar);
                            if (i12 == zzikVar.zza) {
                                zzkaVar2.zzh(zzil.zzb(bArr, i21));
                            }
                        }
                    }
                    return i20;
                }
                return i21;
            case 25:
            case 42:
                if (i14 == 2) {
                    zzim zzimVar = (zzim) zzkgVar;
                    zzj = zzil.zzj(bArr, i21, zzikVar);
                    int i27 = zzikVar.zza + zzj;
                    while (zzj < i27) {
                        zzj = zzil.zzm(bArr, zzj, zzikVar);
                        zzimVar.zze(zzikVar.zzb != 0);
                    }
                    if (zzj != i27) {
                        throw zzkj.zzf();
                    }
                    return zzj;
                }
                if (i14 == 0) {
                    zzim zzimVar2 = (zzim) zzkgVar;
                    int zzm2 = zzil.zzm(bArr, i21, zzikVar);
                    zzimVar2.zze(zzikVar.zzb != 0);
                    while (zzm2 < i11) {
                        int zzj8 = zzil.zzj(bArr, zzm2, zzikVar);
                        if (i12 != zzikVar.zza) {
                            return zzm2;
                        }
                        zzm2 = zzil.zzm(bArr, zzj8, zzikVar);
                        zzimVar2.zze(zzikVar.zzb != 0);
                    }
                    return zzm2;
                }
                return i21;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        i21 = zzil.zzj(bArr, i21, zzikVar);
                        int i28 = zzikVar.zza;
                        if (i28 < 0) {
                            throw zzkj.zzd();
                        }
                        if (i28 == 0) {
                            zzkgVar.add("");
                        } else {
                            zzkgVar.add(new String(bArr, i21, i28, zzkh.zza));
                            i21 += i28;
                        }
                        while (i21 < i11) {
                            int zzj9 = zzil.zzj(bArr, i21, zzikVar);
                            if (i12 == zzikVar.zza) {
                                i21 = zzil.zzj(bArr, zzj9, zzikVar);
                                int i29 = zzikVar.zza;
                                if (i29 < 0) {
                                    throw zzkj.zzd();
                                }
                                if (i29 == 0) {
                                    zzkgVar.add("");
                                } else {
                                    zzkgVar.add(new String(bArr, i21, i29, zzkh.zza));
                                    i21 += i29;
                                }
                            }
                        }
                    } else {
                        i21 = zzil.zzj(bArr, i21, zzikVar);
                        int i30 = zzikVar.zza;
                        if (i30 < 0) {
                            throw zzkj.zzd();
                        }
                        if (i30 == 0) {
                            zzkgVar.add("");
                        } else {
                            int i31 = i21 + i30;
                            if (zzmx.zzf(bArr, i21, i31)) {
                                zzkgVar.add(new String(bArr, i21, i30, zzkh.zza));
                                i21 = i31;
                            } else {
                                throw zzkj.zzc();
                            }
                        }
                        while (i21 < i11) {
                            int zzj10 = zzil.zzj(bArr, i21, zzikVar);
                            if (i12 == zzikVar.zza) {
                                i21 = zzil.zzj(bArr, zzj10, zzikVar);
                                int i32 = zzikVar.zza;
                                if (i32 < 0) {
                                    throw zzkj.zzd();
                                }
                                if (i32 == 0) {
                                    zzkgVar.add("");
                                } else {
                                    int i33 = i21 + i32;
                                    if (zzmx.zzf(bArr, i21, i33)) {
                                        zzkgVar.add(new String(bArr, i21, i32, zzkh.zza));
                                        i21 = i33;
                                    } else {
                                        throw zzkj.zzc();
                                    }
                                }
                            }
                        }
                    }
                }
                return i21;
            case 27:
                if (i14 == 2) {
                    return zzil.zze(zzE(i15), i12, bArr, i10, i11, zzkgVar, zzikVar);
                }
                return i21;
            case 28:
                if (i14 == 2) {
                    int zzj11 = zzil.zzj(bArr, i21, zzikVar);
                    int i34 = zzikVar.zza;
                    if (i34 >= 0) {
                        if (i34 > bArr.length - zzj11) {
                            throw zzkj.zzf();
                        }
                        if (i34 == 0) {
                            zzkgVar.add(zziy.zzb);
                        } else {
                            zzkgVar.add(zziy.zzl(bArr, zzj11, i34));
                            zzj11 += i34;
                        }
                        while (zzj11 < i11) {
                            int zzj12 = zzil.zzj(bArr, zzj11, zzikVar);
                            if (i12 != zzikVar.zza) {
                                return zzj11;
                            }
                            zzj11 = zzil.zzj(bArr, zzj12, zzikVar);
                            int i35 = zzikVar.zza;
                            if (i35 >= 0) {
                                if (i35 > bArr.length - zzj11) {
                                    throw zzkj.zzf();
                                }
                                if (i35 == 0) {
                                    zzkgVar.add(zziy.zzb);
                                } else {
                                    zzkgVar.add(zziy.zzl(bArr, zzj11, i35));
                                    zzj11 += i35;
                                }
                            } else {
                                throw zzkj.zzd();
                            }
                        }
                        return zzj11;
                    }
                    throw zzkj.zzd();
                }
                return i21;
            case 30:
            case 44:
                if (i14 != 2) {
                    if (i14 == 0) {
                        zzj = zzil.zzl(i12, bArr, i10, i11, zzkgVar, zzikVar);
                    }
                    return i21;
                }
                zzj = zzil.zzf(bArr, i21, zzkgVar, zzikVar);
                zzjz zzjzVar = (zzjz) t10;
                zzmj zzmjVar = zzjzVar.zzc;
                if (zzmjVar == zzmj.zzc()) {
                    zzmjVar = null;
                }
                Object zzC = zzlt.zzC(i13, zzkgVar, zzD(i15), zzmjVar, this.zzn);
                if (zzC != null) {
                    zzjzVar.zzc = (zzmj) zzC;
                    return zzj;
                }
                return zzj;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzka zzkaVar3 = (zzka) zzkgVar;
                    int zzj13 = zzil.zzj(bArr, i21, zzikVar);
                    int i36 = zzikVar.zza + zzj13;
                    while (zzj13 < i36) {
                        zzj13 = zzil.zzj(bArr, zzj13, zzikVar);
                        zzkaVar3.zzh(zzjc.zzb(zzikVar.zza));
                    }
                    if (zzj13 == i36) {
                        return zzj13;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 0) {
                    zzka zzkaVar4 = (zzka) zzkgVar;
                    int zzj14 = zzil.zzj(bArr, i21, zzikVar);
                    zzkaVar4.zzh(zzjc.zzb(zzikVar.zza));
                    while (zzj14 < i11) {
                        int zzj15 = zzil.zzj(bArr, zzj14, zzikVar);
                        if (i12 != zzikVar.zza) {
                            return zzj14;
                        }
                        zzj14 = zzil.zzj(bArr, zzj15, zzikVar);
                        zzkaVar4.zzh(zzjc.zzb(zzikVar.zza));
                    }
                    return zzj14;
                }
                return i21;
            case 34:
            case 48:
                if (i14 == 2) {
                    zzkv zzkvVar5 = (zzkv) zzkgVar;
                    int zzj16 = zzil.zzj(bArr, i21, zzikVar);
                    int i37 = zzikVar.zza + zzj16;
                    while (zzj16 < i37) {
                        zzj16 = zzil.zzm(bArr, zzj16, zzikVar);
                        zzkvVar5.zzg(zzjc.zzc(zzikVar.zzb));
                    }
                    if (zzj16 == i37) {
                        return zzj16;
                    }
                    throw zzkj.zzf();
                }
                if (i14 == 0) {
                    zzkv zzkvVar6 = (zzkv) zzkgVar;
                    int zzm3 = zzil.zzm(bArr, i21, zzikVar);
                    zzkvVar6.zzg(zzjc.zzc(zzikVar.zzb));
                    while (zzm3 < i11) {
                        int zzj17 = zzil.zzj(bArr, zzm3, zzikVar);
                        if (i12 != zzikVar.zza) {
                            return zzm3;
                        }
                        zzm3 = zzil.zzm(bArr, zzj17, zzikVar);
                        zzkvVar6.zzg(zzjc.zzc(zzikVar.zzb));
                    }
                    return zzm3;
                }
                return i21;
            default:
                if (i14 == 3) {
                    zzlr zzE = zzE(i15);
                    int i38 = (i12 & (-8)) | 4;
                    int zzc = zzil.zzc(zzE, bArr, i10, i11, i38, zzikVar);
                    zzkgVar.add(zzikVar.zzc);
                    while (zzc < i11) {
                        int zzj18 = zzil.zzj(bArr, zzc, zzikVar);
                        if (i12 != zzikVar.zza) {
                            return zzc;
                        }
                        zzc = zzil.zzc(zzE, bArr, zzj18, i11, i38, zzikVar);
                        zzkgVar.add(zzikVar.zzc);
                    }
                    return zzc;
                }
                return i21;
        }
    }

    private final int zzw(int i10) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzz(i10, 0);
    }

    private final int zzx(int i10, int i11) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzz(i10, i11);
    }

    private final int zzy(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzz(int i10, int i11) {
        int length = (this.zzc.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.zzc[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zza(T t10) {
        return this.zzi ? zzq(t10) : zzp(t10);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zzb(T t10) {
        int i10;
        int zzc;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int zzB = zzB(i12);
            int i13 = this.zzc[i12];
            long j10 = 1048575 & zzB;
            int i14 = 37;
            switch (zzA(zzB)) {
                case 0:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(Double.doubleToLongBits(zzms.zza(t10, j10)));
                    i11 = i10 + zzc;
                    break;
                case 1:
                    i10 = i11 * 53;
                    zzc = Float.floatToIntBits(zzms.zzb(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 2:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 3:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 4:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 5:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 6:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 7:
                    i10 = i11 * 53;
                    zzc = zzkh.zza(zzms.zzw(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 8:
                    i10 = i11 * 53;
                    zzc = ((String) zzms.zzf(t10, j10)).hashCode();
                    i11 = i10 + zzc;
                    break;
                case 9:
                    Object zzf = zzms.zzf(t10, j10);
                    if (zzf != null) {
                        i14 = zzf.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 10:
                    i10 = i11 * 53;
                    zzc = zzms.zzf(t10, j10).hashCode();
                    i11 = i10 + zzc;
                    break;
                case 11:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 12:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 13:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 14:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 15:
                    i10 = i11 * 53;
                    zzc = zzms.zzc(t10, j10);
                    i11 = i10 + zzc;
                    break;
                case 16:
                    i10 = i11 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t10, j10));
                    i11 = i10 + zzc;
                    break;
                case 17:
                    Object zzf2 = zzms.zzf(t10, j10);
                    if (zzf2 != null) {
                        i14 = zzf2.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    zzc = zzms.zzf(t10, j10).hashCode();
                    i11 = i10 + zzc;
                    break;
                case 50:
                    i10 = i11 * 53;
                    zzc = zzms.zzf(t10, j10).hashCode();
                    i11 = i10 + zzc;
                    break;
                case 51:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(Double.doubleToLongBits(zzn(t10, j10)));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = Float.floatToIntBits(zzo(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(zzC(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(zzC(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(zzC(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zza(zzQ(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = ((String) zzms.zzf(t10, j10)).hashCode();
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzms.zzf(t10, j10).hashCode();
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzms.zzf(t10, j10).hashCode();
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(zzC(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzr(t10, j10);
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzkh.zzc(zzC(t10, j10));
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzP(t10, i13, i12)) {
                        i10 = i11 * 53;
                        zzc = zzms.zzf(t10, j10).hashCode();
                        i11 = i10 + zzc;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.zzn.zzc(t10).hashCode();
        if (!this.zzh) {
            return hashCode;
        }
        this.zzo.zza(t10);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0417, code lost:
    
        if (r6 == 1048575) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0419, code lost:
    
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x041f, code lost:
    
        r3 = r9.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0423, code lost:
    
        if (r3 >= r9.zzl) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0425, code lost:
    
        r4 = r9.zzj[r3];
        r5 = r9.zzc[r4];
        r5 = com.google.android.gms.internal.measurement.zzms.zzf(r12, r9.zzB(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0437, code lost:
    
        if (r5 != null) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x043e, code lost:
    
        if (r9.zzD(r4) != null) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0443, code lost:
    
        r5 = (com.google.android.gms.internal.measurement.zzla) r5;
        r0 = (com.google.android.gms.internal.measurement.zzkz) r9.zzF(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x044b, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0440, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x044c, code lost:
    
        if (r7 != 0) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0450, code lost:
    
        if (r0 != r32) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0457, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkj.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x045e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x045a, code lost:
    
        if (r0 > r32) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x045c, code lost:
    
        if (r1 != r7) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0464, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkj.zze();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:113:0x008b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzc(T t10, byte[] bArr, int i10, int i11, int i12, zzik zzikVar) throws IOException {
        Unsafe unsafe;
        int i13;
        Object obj;
        zzlj<T> zzljVar;
        int i14;
        int zzw;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        Object obj2;
        int i20;
        zzik zzikVar2;
        int i21;
        int i22;
        int i23;
        int i24;
        int zzm;
        int i25;
        int i26;
        int i27;
        zzlj<T> zzljVar2 = this;
        Object obj3 = t10;
        byte[] bArr2 = bArr;
        int i28 = i11;
        int i29 = i12;
        zzik zzikVar3 = zzikVar;
        Unsafe unsafe2 = zzb;
        int i30 = i10;
        int i31 = 0;
        int i32 = -1;
        int i33 = 0;
        int i34 = 0;
        int i35 = 1048575;
        while (true) {
            if (i30 < i28) {
                int i36 = i30 + 1;
                byte b10 = bArr2[i30];
                if (b10 < 0) {
                    int zzk = zzil.zzk(b10, bArr2, i36, zzikVar3);
                    i14 = zzikVar3.zza;
                    i36 = zzk;
                } else {
                    i14 = b10;
                }
                int i37 = i14 >>> 3;
                int i38 = i14 & 7;
                if (i37 > i32) {
                    zzw = zzljVar2.zzx(i37, i33 / 3);
                } else {
                    zzw = zzljVar2.zzw(i37);
                }
                if (zzw == -1) {
                    i15 = i37;
                    i16 = i36;
                    i17 = i14;
                    i18 = i34;
                    unsafe = unsafe2;
                    i13 = i29;
                    i19 = 0;
                } else {
                    int i39 = zzljVar2.zzc[zzw + 1];
                    int zzA = zzA(i39);
                    int i40 = i14;
                    long j10 = i39 & 1048575;
                    if (zzA <= 17) {
                        int i41 = zzljVar2.zzc[zzw + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i35) {
                            if (i35 != 1048575) {
                                unsafe2.putInt(obj3, i35, i34);
                            }
                            i34 = unsafe2.getInt(obj3, i43);
                            i21 = i43;
                        } else {
                            i21 = i35;
                        }
                        int i44 = i34;
                        switch (zzA) {
                            case 0:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                i16 = i36;
                                if (i38 != 1) {
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    zzms.zzo(obj3, j10, Double.longBitsToDouble(zzil.zzn(bArr2, i16)));
                                    i30 = i16 + 8;
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 1:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                i16 = i36;
                                if (i38 != 5) {
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    zzms.zzp(obj3, j10, Float.intBitsToFloat(zzil.zzb(bArr2, i16)));
                                    i30 = i16 + 4;
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 2:
                            case 3:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                i16 = i36;
                                if (i38 != 0) {
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    zzm = zzil.zzm(bArr2, i16, zzikVar3);
                                    unsafe2.putLong(t10, j10, zzikVar3.zzb);
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i30 = zzm;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 4:
                            case 11:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                i16 = i36;
                                if (i38 != 0) {
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzj(bArr2, i16, zzikVar3);
                                    unsafe2.putInt(obj3, j10, zzikVar3.zza);
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 5:
                            case 14:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 1) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    unsafe2.putLong(t10, j10, zzil.zzn(bArr2, i36));
                                    i30 = i36 + 8;
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 6:
                            case 13:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 5) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    unsafe2.putInt(obj3, j10, zzil.zzb(bArr2, i36));
                                    i30 = i36 + 4;
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 7:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 0) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzm(bArr2, i36, zzikVar3);
                                    zzms.zzm(obj3, j10, zzikVar3.zzb != 0);
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 8:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 2) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    if ((i39 & NTLMEngineImpl.FLAG_NEGOTIATE_128) == 0) {
                                        i30 = zzil.zzg(bArr2, i36, zzikVar3);
                                    } else {
                                        i30 = zzil.zzh(bArr2, i36, zzikVar3);
                                    }
                                    unsafe2.putObject(obj3, j10, zzikVar3.zzc);
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 9:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 2) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzd(zzljVar2.zzE(i22), bArr2, i36, i28, zzikVar3);
                                    if ((i44 & i42) == 0) {
                                        unsafe2.putObject(obj3, j10, zzikVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj3, j10, zzkh.zzg(unsafe2.getObject(obj3, j10), zzikVar3.zzc));
                                    }
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 10:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 2) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zza(bArr2, i36, zzikVar3);
                                    unsafe2.putObject(obj3, j10, zzikVar3.zzc);
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 12:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 0) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzj(bArr2, i36, zzikVar3);
                                    int i45 = zzikVar3.zza;
                                    zzkd zzD = zzljVar2.zzD(i22);
                                    if (zzD != null && !zzD.zza(i45)) {
                                        zzd(t10).zzh(i24, Long.valueOf(i45));
                                        i34 = i44;
                                        i33 = i22;
                                        i31 = i24;
                                        i32 = i37;
                                        i35 = i23;
                                        i29 = i12;
                                    } else {
                                        unsafe2.putInt(obj3, j10, i45);
                                        i34 = i44 | i42;
                                        i35 = i23;
                                        i33 = i22;
                                        i31 = i24;
                                        i32 = i37;
                                        i29 = i12;
                                    }
                                }
                                break;
                            case 15:
                                bArr2 = bArr;
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                if (i38 != 0) {
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzj(bArr2, i36, zzikVar3);
                                    unsafe2.putInt(obj3, j10, zzjc.zzb(zzikVar3.zza));
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            case 16:
                                if (i38 != 0) {
                                    i22 = zzw;
                                    i23 = i21;
                                    i24 = i40;
                                    i16 = i36;
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    zzm = zzil.zzm(bArr2, i36, zzikVar3);
                                    i23 = i21;
                                    i24 = i40;
                                    i22 = zzw;
                                    unsafe2.putLong(t10, j10, zzjc.zzc(zzikVar3.zzb));
                                    i34 = i44 | i42;
                                    i35 = i23;
                                    i30 = zzm;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                            default:
                                i22 = zzw;
                                i23 = i21;
                                i24 = i40;
                                i16 = i36;
                                if (i38 != 3) {
                                    i13 = i12;
                                    i19 = i22;
                                    unsafe = unsafe2;
                                    i17 = i24;
                                    i35 = i23;
                                    i15 = i37;
                                    i18 = i44;
                                    break;
                                } else {
                                    i30 = zzil.zzc(zzljVar2.zzE(i22), bArr, i16, i11, (i37 << 3) | 4, zzikVar);
                                    if ((i44 & i42) == 0) {
                                        unsafe2.putObject(obj3, j10, zzikVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj3, j10, zzkh.zzg(unsafe2.getObject(obj3, j10), zzikVar3.zzc));
                                    }
                                    i34 = i44 | i42;
                                    bArr2 = bArr;
                                    i35 = i23;
                                    i28 = i11;
                                    i33 = i22;
                                    i31 = i24;
                                    i32 = i37;
                                    i29 = i12;
                                }
                        }
                    } else {
                        int i46 = zzw;
                        int i47 = i36;
                        if (zzA != 27) {
                            i18 = i34;
                            i25 = i35;
                            if (zzA <= 49) {
                                i15 = i37;
                                i19 = i46;
                                unsafe = unsafe2;
                                i27 = i40;
                                i30 = zzv(t10, bArr, i47, i11, i40, i37, i38, i46, i39, zzA, j10, zzikVar);
                                if (i30 != i47) {
                                    zzljVar2 = this;
                                    obj3 = t10;
                                    bArr2 = bArr;
                                    i32 = i15;
                                    i28 = i11;
                                    i29 = i12;
                                    zzikVar3 = zzikVar;
                                    i33 = i19;
                                    i34 = i18;
                                    i35 = i25;
                                    i31 = i27;
                                    unsafe2 = unsafe;
                                } else {
                                    i13 = i12;
                                    i16 = i30;
                                    i35 = i25;
                                    i17 = i27;
                                }
                            } else {
                                i26 = i47;
                                i15 = i37;
                                i19 = i46;
                                unsafe = unsafe2;
                                i27 = i40;
                                if (zzA != 50) {
                                    i30 = zzt(t10, bArr, i26, i11, i27, i15, i38, i39, zzA, j10, i19, zzikVar);
                                    if (i30 != i26) {
                                        zzljVar2 = this;
                                        obj3 = t10;
                                        bArr2 = bArr;
                                        i32 = i15;
                                        i28 = i11;
                                        i29 = i12;
                                        zzikVar3 = zzikVar;
                                        i33 = i19;
                                        i34 = i18;
                                        i35 = i25;
                                        i31 = i27;
                                        unsafe2 = unsafe;
                                    } else {
                                        i13 = i12;
                                        i16 = i30;
                                        i35 = i25;
                                        i17 = i27;
                                    }
                                } else if (i38 == 2) {
                                    i30 = zzs(t10, bArr, i26, i11, i19, j10, zzikVar);
                                    if (i30 != i26) {
                                        zzljVar2 = this;
                                        obj3 = t10;
                                        bArr2 = bArr;
                                        i32 = i15;
                                        i28 = i11;
                                        i29 = i12;
                                        zzikVar3 = zzikVar;
                                        i33 = i19;
                                        i34 = i18;
                                        i35 = i25;
                                        i31 = i27;
                                        unsafe2 = unsafe;
                                    } else {
                                        i13 = i12;
                                        i16 = i30;
                                        i35 = i25;
                                        i17 = i27;
                                    }
                                }
                            }
                        } else if (i38 == 2) {
                            zzkg zzkgVar = (zzkg) unsafe2.getObject(obj3, j10);
                            if (!zzkgVar.zzc()) {
                                int size = zzkgVar.size();
                                zzkgVar = zzkgVar.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj3, j10, zzkgVar);
                            }
                            i31 = i40;
                            i30 = zzil.zze(zzljVar2.zzE(i46), i31, bArr, i47, i11, zzkgVar, zzikVar);
                            i28 = i11;
                            i33 = i46;
                            i32 = i37;
                            i34 = i34;
                            i35 = i35;
                            bArr2 = bArr;
                            i29 = i12;
                        } else {
                            i18 = i34;
                            i25 = i35;
                            i26 = i47;
                            i15 = i37;
                            i19 = i46;
                            unsafe = unsafe2;
                            i27 = i40;
                        }
                        i13 = i12;
                        i16 = i26;
                        i35 = i25;
                        i17 = i27;
                    }
                }
                if (i17 != i13 || i13 == 0) {
                    if (this.zzh) {
                        zzikVar2 = zzikVar;
                        if (zzikVar2.zzd != zzjl.zza()) {
                            i20 = i15;
                            if (zzikVar2.zzd.zzc(this.zzg, i20) == null) {
                                i30 = zzil.zzi(i17, bArr, i16, i11, zzd(t10), zzikVar);
                                obj2 = t10;
                                i28 = i11;
                                i31 = i17;
                                zzljVar2 = this;
                                zzikVar3 = zzikVar2;
                                i32 = i20;
                                obj3 = obj2;
                                i33 = i19;
                                i34 = i18;
                                unsafe2 = unsafe;
                                bArr2 = bArr;
                                i29 = i13;
                            } else {
                                throw null;
                            }
                        } else {
                            obj2 = t10;
                            i20 = i15;
                        }
                    } else {
                        obj2 = t10;
                        i20 = i15;
                        zzikVar2 = zzikVar;
                    }
                    i30 = zzil.zzi(i17, bArr, i16, i11, zzd(t10), zzikVar);
                    i28 = i11;
                    i31 = i17;
                    zzljVar2 = this;
                    zzikVar3 = zzikVar2;
                    i32 = i20;
                    obj3 = obj2;
                    i33 = i19;
                    i34 = i18;
                    unsafe2 = unsafe;
                    bArr2 = bArr;
                    i29 = i13;
                } else {
                    zzljVar = this;
                    obj = t10;
                    i30 = i16;
                    i31 = i17;
                    i34 = i18;
                }
            } else {
                unsafe = unsafe2;
                i13 = i29;
                obj = obj3;
                zzljVar = zzljVar2;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final T zze() {
        return (T) ((zzjz) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzf(T t10) {
        int i10;
        int i11 = this.zzk;
        while (true) {
            i10 = this.zzl;
            if (i11 >= i10) {
                break;
            }
            long zzB = zzB(this.zzj[i11]) & 1048575;
            Object zzf = zzms.zzf(t10, zzB);
            if (zzf != null) {
                ((zzla) zzf).zzc();
                zzms.zzs(t10, zzB, zzf);
            }
            i11++;
        }
        int length = this.zzj.length;
        while (i10 < length) {
            this.zzm.zza(t10, this.zzj[i10]);
            i10++;
        }
        this.zzn.zzg(t10);
        if (this.zzh) {
            this.zzo.zzb(t10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzg(T t10, T t11) {
        t11.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzB = zzB(i10);
            long j10 = 1048575 & zzB;
            int i11 = this.zzc[i10];
            switch (zzA(zzB)) {
                case 0:
                    if (zzM(t11, i10)) {
                        zzms.zzo(t10, j10, zzms.zza(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(t11, i10)) {
                        zzms.zzp(t10, j10, zzms.zzb(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(t11, i10)) {
                        zzms.zzr(t10, j10, zzms.zzd(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(t11, i10)) {
                        zzms.zzr(t10, j10, zzms.zzd(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(t11, i10)) {
                        zzms.zzr(t10, j10, zzms.zzd(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(t11, i10)) {
                        zzms.zzm(t10, j10, zzms.zzw(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzM(t11, i10)) {
                        zzms.zzs(t10, j10, zzms.zzf(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(t10, t11, i10);
                    break;
                case 10:
                    if (zzM(t11, i10)) {
                        zzms.zzs(t10, j10, zzms.zzf(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(t11, i10)) {
                        zzms.zzr(t10, j10, zzms.zzd(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(t11, i10)) {
                        zzms.zzq(t10, j10, zzms.zzc(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(t11, i10)) {
                        zzms.zzr(t10, j10, zzms.zzd(t11, j10));
                        zzJ(t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(t10, t11, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(t10, t11, j10);
                    break;
                case 50:
                    zzlt.zzI(this.zzq, t10, t11, j10);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzP(t11, i11, i10)) {
                        zzms.zzs(t10, j10, zzms.zzf(t11, j10));
                        zzK(t10, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzP(t11, i11, i10)) {
                        zzms.zzs(t10, j10, zzms.zzf(t11, j10));
                        zzK(t10, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(t10, t11, i10);
                    break;
            }
        }
        zzlt.zzF(this.zzn, t10, t11);
        if (this.zzh) {
            zzlt.zzE(this.zzo, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzh(T t10, byte[] bArr, int i10, int i11, zzik zzikVar) throws IOException {
        if (this.zzi) {
            zzu(t10, bArr, i10, i11, zzikVar);
        } else {
            zzc(t10, bArr, i10, i11, 0, zzikVar);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c3 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzlr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzi(T t10, T t11) {
        int i10;
        boolean zzH;
        int length = this.zzc.length;
        while (i10 < length) {
            int zzB = zzB(i10);
            long j10 = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    i10 = (zzL(t10, t11, i10) && Double.doubleToLongBits(zzms.zza(t10, j10)) == Double.doubleToLongBits(zzms.zza(t11, j10))) ? i10 + 3 : 0;
                    return false;
                case 1:
                    if (zzL(t10, t11, i10) && Float.floatToIntBits(zzms.zzb(t10, j10)) == Float.floatToIntBits(zzms.zzb(t11, j10))) {
                    }
                    return false;
                case 2:
                    if (zzL(t10, t11, i10) && zzms.zzd(t10, j10) == zzms.zzd(t11, j10)) {
                    }
                    return false;
                case 3:
                    if (zzL(t10, t11, i10) && zzms.zzd(t10, j10) == zzms.zzd(t11, j10)) {
                    }
                    return false;
                case 4:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 5:
                    if (zzL(t10, t11, i10) && zzms.zzd(t10, j10) == zzms.zzd(t11, j10)) {
                    }
                    return false;
                case 6:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 7:
                    if (zzL(t10, t11, i10) && zzms.zzw(t10, j10) == zzms.zzw(t11, j10)) {
                    }
                    return false;
                case 8:
                    if (zzL(t10, t11, i10) && zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10))) {
                    }
                    return false;
                case 9:
                    if (zzL(t10, t11, i10) && zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10))) {
                    }
                    return false;
                case 10:
                    if (zzL(t10, t11, i10) && zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10))) {
                    }
                    return false;
                case 11:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 12:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 13:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 14:
                    if (zzL(t10, t11, i10) && zzms.zzd(t10, j10) == zzms.zzd(t11, j10)) {
                    }
                    return false;
                case 15:
                    if (zzL(t10, t11, i10) && zzms.zzc(t10, j10) == zzms.zzc(t11, j10)) {
                    }
                    return false;
                case 16:
                    if (zzL(t10, t11, i10) && zzms.zzd(t10, j10) == zzms.zzd(t11, j10)) {
                    }
                    return false;
                case 17:
                    if (zzL(t10, t11, i10) && zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10))) {
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzH = zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10));
                    if (zzH) {
                        return false;
                    }
                case 50:
                    zzH = zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10));
                    if (zzH) {
                    }
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzy = zzy(i10) & 1048575;
                    if (zzms.zzc(t10, zzy) == zzms.zzc(t11, zzy) && zzlt.zzH(zzms.zzf(t10, j10), zzms.zzf(t11, j10))) {
                    }
                    return false;
                default:
            }
        }
        if (!this.zzn.zzc(t10).equals(this.zzn.zzc(t11))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(t10);
        this.zzo.zza(t11);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzj(T t10) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.zzk) {
            int i15 = this.zzj[i14];
            int i16 = this.zzc[i15];
            int zzB = zzB(i15);
            int i17 = this.zzc[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i12) {
                if (i18 != 1048575) {
                    i13 = zzb.getInt(t10, i18);
                }
                i11 = i13;
                i10 = i18;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if ((268435456 & zzB) != 0 && !zzN(t10, i15, i10, i11, i19)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA == 60 || zzA == 68) {
                        if (zzP(t10, i16, i15) && !zzO(t10, zzB, zzE(i15))) {
                            return false;
                        }
                    } else if (zzA != 49) {
                        if (zzA == 50 && !((zzla) zzms.zzf(t10, zzB & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) zzms.zzf(t10, zzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzlr zzE = zzE(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!zzE.zzj(list.get(i20))) {
                            return false;
                        }
                    }
                }
            } else if (zzN(t10, i15, i10, i11, i19) && !zzO(t10, zzB, zzE(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzm(T t10, zzjh zzjhVar) throws IOException {
        if (!this.zzi) {
            zzR(t10, zzjhVar);
            return;
        }
        if (!this.zzh) {
            int length = this.zzc.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int zzB = zzB(i10);
                int i11 = this.zzc[i10];
                switch (zzA(zzB)) {
                    case 0:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzf(i11, zzms.zza(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzo(i11, zzms.zzb(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzt(i11, zzms.zzd(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzJ(i11, zzms.zzd(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzr(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzm(i11, zzms.zzd(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzk(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzb(i11, zzms.zzw(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzM(t10, i10)) {
                            zzT(i11, zzms.zzf(t10, zzB & 1048575), zzjhVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzv(i11, zzms.zzf(t10, zzB & 1048575), zzE(i10));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzd(i11, (zziy) zzms.zzf(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzH(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzi(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzw(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzy(i11, zzms.zzd(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzA(i11, zzms.zzc(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzC(i11, zzms.zzd(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzM(t10, i10)) {
                            zzjhVar.zzq(i11, zzms.zzf(t10, zzB & 1048575), zzE(i10));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzlt.zzL(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 19:
                        zzlt.zzP(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 20:
                        zzlt.zzS(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 21:
                        zzlt.zzaa(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 22:
                        zzlt.zzR(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 23:
                        zzlt.zzO(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 24:
                        zzlt.zzN(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 25:
                        zzlt.zzJ(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 26:
                        zzlt.zzY(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar);
                        break;
                    case 27:
                        zzlt.zzT(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, zzE(i10));
                        break;
                    case 28:
                        zzlt.zzK(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar);
                        break;
                    case 29:
                        zzlt.zzZ(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 30:
                        zzlt.zzM(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 31:
                        zzlt.zzU(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 32:
                        zzlt.zzV(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 33:
                        zzlt.zzW(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 34:
                        zzlt.zzX(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, false);
                        break;
                    case 35:
                        zzlt.zzL(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 36:
                        zzlt.zzP(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 37:
                        zzlt.zzS(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 38:
                        zzlt.zzaa(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 39:
                        zzlt.zzR(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 40:
                        zzlt.zzO(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 41:
                        zzlt.zzN(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 42:
                        zzlt.zzJ(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 43:
                        zzlt.zzZ(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 44:
                        zzlt.zzM(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 45:
                        zzlt.zzU(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 46:
                        zzlt.zzV(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 47:
                        zzlt.zzW(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 48:
                        zzlt.zzX(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, true);
                        break;
                    case 49:
                        zzlt.zzQ(this.zzc[i10], (List) zzms.zzf(t10, zzB & 1048575), zzjhVar, zzE(i10));
                        break;
                    case 50:
                        zzS(zzjhVar, i11, zzms.zzf(t10, zzB & 1048575), i10);
                        break;
                    case 51:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzf(i11, zzn(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzo(i11, zzo(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzt(i11, zzC(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzJ(i11, zzC(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzr(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzm(i11, zzC(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzk(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzb(i11, zzQ(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzP(t10, i11, i10)) {
                            zzT(i11, zzms.zzf(t10, zzB & 1048575), zzjhVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzv(i11, zzms.zzf(t10, zzB & 1048575), zzE(i10));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzd(i11, (zziy) zzms.zzf(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzH(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzi(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzw(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzy(i11, zzC(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzA(i11, zzr(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzC(i11, zzC(t10, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzP(t10, i11, i10)) {
                            zzjhVar.zzq(i11, zzms.zzf(t10, zzB & 1048575), zzE(i10));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzmi<?, ?> zzmiVar = this.zzn;
            zzmiVar.zzi(zzmiVar.zzc(t10), zzjhVar);
            return;
        }
        this.zzo.zza(t10);
        throw null;
    }
}
