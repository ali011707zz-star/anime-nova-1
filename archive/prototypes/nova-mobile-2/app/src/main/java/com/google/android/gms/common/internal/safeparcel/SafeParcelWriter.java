package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.annotation.RecentlyNonNull;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(@RecentlyNonNull Parcel parcel) {
        return zzb(parcel, 20293);
    }

    public static void finishObjectHeader(@RecentlyNonNull Parcel parcel, int i10) {
        zzc(parcel, i10);
    }

    public static void writeBigDecimal(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull BigDecimal bigDecimal, boolean z10) {
        if (bigDecimal == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
            parcel.writeInt(bigDecimal.scale());
            zzc(parcel, zzb);
        }
    }

    public static void writeBigDecimalArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull BigDecimal[] bigDecimalArr, boolean z10) {
        if (bigDecimalArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i11 = 0; i11 < length; i11++) {
            parcel.writeByteArray(bigDecimalArr[i11].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i11].scale());
        }
        zzc(parcel, zzb);
    }

    public static void writeBigInteger(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull BigInteger bigInteger, boolean z10) {
        if (bigInteger == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeByteArray(bigInteger.toByteArray());
            zzc(parcel, zzb);
        }
    }

    public static void writeBigIntegerArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull BigInteger[] bigIntegerArr, boolean z10) {
        if (bigIntegerArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        zzc(parcel, zzb);
    }

    public static void writeBoolean(@RecentlyNonNull Parcel parcel, int i10, boolean z10) {
        zza(parcel, i10, 4);
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static void writeBooleanArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull boolean[] zArr, boolean z10) {
        if (zArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeBooleanArray(zArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeBooleanList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Boolean> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(list.get(i11).booleanValue() ? 1 : 0);
        }
        zzc(parcel, zzb);
    }

    public static void writeBooleanObject(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Boolean bool, boolean z10) {
        if (bool != null) {
            zza(parcel, i10, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z10) {
            zza(parcel, i10, 0);
        }
    }

    public static void writeBundle(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Bundle bundle, boolean z10) {
        if (bundle == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeBundle(bundle);
            zzc(parcel, zzb);
        }
    }

    public static void writeByte(@RecentlyNonNull Parcel parcel, int i10, byte b10) {
        zza(parcel, i10, 4);
        parcel.writeInt(b10);
    }

    public static void writeByteArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull byte[] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeByteArray(bArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeByteArrayArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull byte[][] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzc(parcel, zzb);
    }

    public static void writeByteArraySparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<byte[]> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            parcel.writeByteArray(sparseArray.valueAt(i11));
        }
        zzc(parcel, zzb);
    }

    public static void writeChar(@RecentlyNonNull Parcel parcel, int i10, char c10) {
        zza(parcel, i10, 4);
        parcel.writeInt(c10);
    }

    public static void writeCharArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull char[] cArr, boolean z10) {
        if (cArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeCharArray(cArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeDouble(@RecentlyNonNull Parcel parcel, int i10, double d10) {
        zza(parcel, i10, 8);
        parcel.writeDouble(d10);
    }

    public static void writeDoubleArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull double[] dArr, boolean z10) {
        if (dArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeDoubleArray(dArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeDoubleList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Double> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeDouble(list.get(i11).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeDoubleObject(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Double d10, boolean z10) {
        if (d10 != null) {
            zza(parcel, i10, 8);
            parcel.writeDouble(d10.doubleValue());
        } else if (z10) {
            zza(parcel, i10, 0);
        }
    }

    public static void writeDoubleSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<Double> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            parcel.writeDouble(sparseArray.valueAt(i11).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloat(@RecentlyNonNull Parcel parcel, int i10, float f10) {
        zza(parcel, i10, 4);
        parcel.writeFloat(f10);
    }

    public static void writeFloatArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull float[] fArr, boolean z10) {
        if (fArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeFloatArray(fArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeFloatList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Float> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeFloat(list.get(i11).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloatObject(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Float f10, boolean z10) {
        if (f10 != null) {
            zza(parcel, i10, 4);
            parcel.writeFloat(f10.floatValue());
        } else if (z10) {
            zza(parcel, i10, 0);
        }
    }

    public static void writeFloatSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<Float> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            parcel.writeFloat(sparseArray.valueAt(i11).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIBinder(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull IBinder iBinder, boolean z10) {
        if (iBinder == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeStrongBinder(iBinder);
            zzc(parcel, zzb);
        }
    }

    public static void writeIBinderArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull IBinder[] iBinderArr, boolean z10) {
        if (iBinderArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeBinderArray(iBinderArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeIBinderList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<IBinder> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeBinderList(list);
            zzc(parcel, zzb);
        }
    }

    public static void writeIBinderSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<IBinder> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            parcel.writeStrongBinder(sparseArray.valueAt(i11));
        }
        zzc(parcel, zzb);
    }

    public static void writeInt(@RecentlyNonNull Parcel parcel, int i10, int i11) {
        zza(parcel, i10, 4);
        parcel.writeInt(i11);
    }

    public static void writeIntArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull int[] iArr, boolean z10) {
        if (iArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeIntArray(iArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeIntegerList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Integer> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(list.get(i11).intValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIntegerObject(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Integer num, boolean z10) {
        if (num != null) {
            zza(parcel, i10, 4);
            parcel.writeInt(num.intValue());
        } else if (z10) {
            zza(parcel, i10, 0);
        }
    }

    public static void writeList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeList(list);
            zzc(parcel, zzb);
        }
    }

    public static void writeLong(@RecentlyNonNull Parcel parcel, int i10, long j10) {
        zza(parcel, i10, 8);
        parcel.writeLong(j10);
    }

    public static void writeLongArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull long[] jArr, boolean z10) {
        if (jArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeLongArray(jArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeLongList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Long> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeLong(list.get(i11).longValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeLongObject(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Long l10, boolean z10) {
        if (l10 != null) {
            zza(parcel, i10, 8);
            parcel.writeLong(l10.longValue());
        } else if (z10) {
            zza(parcel, i10, 0);
        }
    }

    public static void writeParcel(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcel parcel2, boolean z10) {
        if (parcel2 == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            zzc(parcel, zzb);
        }
    }

    public static void writeParcelArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcel[] parcelArr, boolean z10) {
        if (parcelArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        parcel.writeInt(parcelArr.length);
        for (Parcel parcel2 : parcelArr) {
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<Parcel> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            Parcel parcel2 = list.get(i11);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<Parcel> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            Parcel valueAt = sparseArray.valueAt(i11);
            if (valueAt != null) {
                parcel.writeInt(valueAt.dataSize());
                parcel.appendFrom(valueAt, 0, valueAt.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelable(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcelable parcelable, int i11, boolean z10) {
        if (parcelable == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcelable.writeToParcel(parcel, i11);
            zzc(parcel, zzb);
        }
    }

    public static void writePendingIntent(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull PendingIntent pendingIntent, boolean z10) {
        if (pendingIntent == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            PendingIntent.writePendingIntentOrNullToParcel(pendingIntent, parcel);
            zzc(parcel, zzb);
        }
    }

    public static void writeShort(@RecentlyNonNull Parcel parcel, int i10, short s10) {
        zza(parcel, i10, 4);
        parcel.writeInt(s10);
    }

    public static void writeSparseBooleanArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseBooleanArray sparseBooleanArray, boolean z10) {
        if (sparseBooleanArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeSparseBooleanArray(sparseBooleanArray);
            zzc(parcel, zzb);
        }
    }

    public static void writeSparseIntArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseIntArray sparseIntArray, boolean z10) {
        if (sparseIntArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseIntArray.keyAt(i11));
            parcel.writeInt(sparseIntArray.valueAt(i11));
        }
        zzc(parcel, zzb);
    }

    public static void writeSparseLongArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseLongArray sparseLongArray, boolean z10) {
        if (sparseLongArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseLongArray.keyAt(i11));
            parcel.writeLong(sparseLongArray.valueAt(i11));
        }
        zzc(parcel, zzb);
    }

    public static void writeString(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull String str, boolean z10) {
        if (str == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeString(str);
            zzc(parcel, zzb);
        }
    }

    public static void writeStringArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull String[] strArr, boolean z10) {
        if (strArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeStringArray(strArr);
            zzc(parcel, zzb);
        }
    }

    public static void writeStringList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<String> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
            }
        } else {
            int zzb = zzb(parcel, i10);
            parcel.writeStringList(list);
            zzc(parcel, zzb);
        }
    }

    public static void writeStringSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<String> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            parcel.writeString(sparseArray.valueAt(i11));
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull T[] tArr, int i11, boolean z10) {
        if (tArr == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        parcel.writeInt(tArr.length);
        for (T t10 : tArr) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t10, i11);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List<T> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            T t10 = list.get(i11);
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t10, 0);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull SparseArray<T> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zza(parcel, i10, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i10);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(sparseArray.keyAt(i11));
            T valueAt = sparseArray.valueAt(i11);
            if (valueAt == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, valueAt, 0);
            }
        }
        zzc(parcel, zzb);
    }

    private static void zza(Parcel parcel, int i10, int i11) {
        parcel.writeInt(i10 | (i11 << 16));
    }

    private static int zzb(Parcel parcel, int i10) {
        parcel.writeInt(i10 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzc(Parcel parcel, int i10) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i10 - 4);
        parcel.writeInt(dataPosition - i10);
        parcel.setDataPosition(dataPosition);
    }

    private static <T extends Parcelable> void zzd(Parcel parcel, T t10, int i10) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t10.writeToParcel(parcel, i10);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
