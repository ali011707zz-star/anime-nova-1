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
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public class SafeParcelReader {

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    /* loaded from: classes.dex */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ParseException(@RecentlyNonNull String str, @RecentlyNonNull Parcel parcel) {
            super(r2.toString());
            int dataPosition = parcel.dataPosition();
            int dataSize = parcel.dataSize();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 41);
            sb2.append(str);
            sb2.append(" Parcel: pos=");
            sb2.append(dataPosition);
            sb2.append(" size=");
            sb2.append(dataSize);
        }
    }

    private SafeParcelReader() {
    }

    @RecentlyNonNull
    public static BigDecimal createBigDecimal(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    @RecentlyNonNull
    public static BigDecimal[] createBigDecimalArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i11 = 0; i11 < readInt; i11++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i11] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigDecimalArr;
    }

    @RecentlyNonNull
    public static BigInteger createBigInteger(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigInteger(createByteArray);
    }

    @RecentlyNonNull
    public static BigInteger[] createBigIntegerArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i11 = 0; i11 < readInt; i11++) {
            bigIntegerArr[i11] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigIntegerArr;
    }

    @RecentlyNonNull
    public static boolean[] createBooleanArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createBooleanArray;
    }

    @RecentlyNonNull
    public static ArrayList<Boolean> createBooleanList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Boolean> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Boolean.valueOf(parcel.readInt() != 0));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static Bundle createBundle(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + readSize);
        return readBundle;
    }

    @RecentlyNonNull
    public static byte[] createByteArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createByteArray;
    }

    @RecentlyNonNull
    public static byte[][] createByteArrayArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        byte[][] bArr = new byte[readInt];
        for (int i11 = 0; i11 < readInt; i11++) {
            bArr[i11] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bArr;
    }

    @RecentlyNonNull
    public static SparseArray<byte[]> createByteArraySparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<byte[]> sparseArray = new SparseArray<>(readInt);
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static char[] createCharArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        char[] createCharArray = parcel.createCharArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createCharArray;
    }

    @RecentlyNonNull
    public static double[] createDoubleArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createDoubleArray;
    }

    @RecentlyNonNull
    public static ArrayList<Double> createDoubleList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Double> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Double> createDoubleSparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<Double> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static float[] createFloatArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createFloatArray;
    }

    @RecentlyNonNull
    public static ArrayList<Float> createFloatList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Float> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Float> createFloatSparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<Float> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static IBinder[] createIBinderArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        IBinder[] createBinderArray = parcel.createBinderArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createBinderArray;
    }

    @RecentlyNonNull
    public static ArrayList<IBinder> createIBinderList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<IBinder> createBinderArrayList = parcel.createBinderArrayList();
        parcel.setDataPosition(dataPosition + readSize);
        return createBinderArrayList;
    }

    @RecentlyNonNull
    public static SparseArray<IBinder> createIBinderSparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<IBinder> sparseArray = new SparseArray<>(readInt);
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), parcel.readStrongBinder());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static int[] createIntArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createIntArray;
    }

    @RecentlyNonNull
    public static ArrayList<Integer> createIntegerList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static long[] createLongArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createLongArray;
    }

    @RecentlyNonNull
    public static ArrayList<Long> createLongList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Long.valueOf(parcel.readLong()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static Parcel createParcel(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, readSize);
        parcel.setDataPosition(dataPosition + readSize);
        return obtain;
    }

    @RecentlyNonNull
    public static Parcel[] createParcelArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i11 = 0; i11 < readInt; i11++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i11] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i11] = null;
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return parcelArr;
    }

    @RecentlyNonNull
    public static ArrayList<Parcel> createParcelList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        ArrayList<Parcel> arrayList = new ArrayList<>();
        for (int i11 = 0; i11 < readInt; i11++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                arrayList.add(obtain);
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                arrayList.add(null);
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Parcel> createParcelSparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<Parcel> sparseArray = new SparseArray<>();
        for (int i11 = 0; i11 < readInt; i11++) {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            if (readInt3 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt3);
                sparseArray.append(readInt2, obtain);
                parcel.setDataPosition(dataPosition2 + readInt3);
            } else {
                sparseArray.append(readInt2, null);
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static <T extends Parcelable> T createParcelable(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + readSize);
        return createFromParcel;
    }

    @RecentlyNonNull
    public static SparseBooleanArray createSparseBooleanArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
        parcel.setDataPosition(dataPosition + readSize);
        return readSparseBooleanArray;
    }

    @RecentlyNonNull
    public static SparseIntArray createSparseIntArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseIntArray.append(parcel.readInt(), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseIntArray;
    }

    @RecentlyNonNull
    public static SparseLongArray createSparseLongArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseLongArray sparseLongArray = new SparseLongArray();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseLongArray.append(parcel.readInt(), parcel.readLong());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseLongArray;
    }

    @RecentlyNonNull
    public static String createString(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + readSize);
        return readString;
    }

    @RecentlyNonNull
    public static String[] createStringArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArray;
    }

    @RecentlyNonNull
    public static ArrayList<String> createStringList(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArrayList;
    }

    @RecentlyNonNull
    public static SparseArray<String> createStringSparseArray(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<String> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), parcel.readString());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static <T> T[] createTypedArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return tArr;
    }

    @RecentlyNonNull
    public static <T> ArrayList<T> createTypedList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return createTypedArrayList;
    }

    @RecentlyNonNull
    public static <T> SparseArray<T> createTypedSparseArray(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<T> sparseArray = new SparseArray<>();
        for (int i11 = 0; i11 < readInt; i11++) {
            sparseArray.append(parcel.readInt(), parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null);
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    public static void ensureAtEnd(@RecentlyNonNull Parcel parcel, int i10) {
        if (parcel.dataPosition() == i10) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(37);
        sb2.append("Overread allowed size end=");
        sb2.append(i10);
        throw new ParseException(sb2.toString(), parcel);
    }

    public static int getFieldId(int i10) {
        return (char) i10;
    }

    public static boolean readBoolean(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return parcel.readInt() != 0;
    }

    @RecentlyNonNull
    public static Boolean readBooleanObject(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i10, readSize, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static byte readByte(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return (byte) parcel.readInt();
    }

    public static char readChar(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return (char) parcel.readInt();
    }

    public static double readDouble(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 8);
        return parcel.readDouble();
    }

    @RecentlyNonNull
    public static Double readDoubleObject(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i10, readSize, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float readFloat(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return parcel.readFloat();
    }

    @RecentlyNonNull
    public static Float readFloatObject(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i10, readSize, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int readHeader(@RecentlyNonNull Parcel parcel) {
        return parcel.readInt();
    }

    @RecentlyNonNull
    public static IBinder readIBinder(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + readSize);
        return readStrongBinder;
    }

    public static int readInt(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return parcel.readInt();
    }

    @RecentlyNonNull
    public static Integer readIntegerObject(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i10, readSize, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static void readList(@RecentlyNonNull Parcel parcel, int i10, @RecentlyNonNull List list, @RecentlyNonNull ClassLoader classLoader) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(dataPosition + readSize);
    }

    public static long readLong(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 8);
        return parcel.readLong();
    }

    @RecentlyNonNull
    public static Long readLongObject(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i10, readSize, 8);
        return Long.valueOf(parcel.readLong());
    }

    @RecentlyNonNull
    public static PendingIntent readPendingIntent(@RecentlyNonNull Parcel parcel, int i10) {
        int readSize = readSize(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        PendingIntent readPendingIntentOrNullFromParcel = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        parcel.setDataPosition(dataPosition + readSize);
        return readPendingIntentOrNullFromParcel;
    }

    public static short readShort(@RecentlyNonNull Parcel parcel, int i10) {
        zza(parcel, i10, 4);
        return (short) parcel.readInt();
    }

    public static int readSize(@RecentlyNonNull Parcel parcel, int i10) {
        return (i10 & (-65536)) != -65536 ? (char) (i10 >> 16) : parcel.readInt();
    }

    public static void skipUnknownField(@RecentlyNonNull Parcel parcel, int i10) {
        parcel.setDataPosition(parcel.dataPosition() + readSize(parcel, i10));
    }

    public static int validateObjectHeader(@RecentlyNonNull Parcel parcel) {
        int readHeader = readHeader(parcel);
        int readSize = readSize(parcel, readHeader);
        int dataPosition = parcel.dataPosition();
        if (getFieldId(readHeader) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readHeader));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i10 = readSize + dataPosition;
        if (i10 >= dataPosition && i10 <= parcel.dataSize()) {
            return i10;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("Size read is invalid start=");
        sb2.append(dataPosition);
        sb2.append(" end=");
        sb2.append(i10);
        throw new ParseException(sb2.toString(), parcel);
    }

    private static void zza(Parcel parcel, int i10, int i11) {
        int readSize = readSize(parcel, i10);
        if (readSize == i11) {
            return;
        }
        String hexString = Integer.toHexString(readSize);
        StringBuilder sb2 = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb2.append("Expected size ");
        sb2.append(i11);
        sb2.append(" got ");
        sb2.append(readSize);
        sb2.append(" (0x");
        sb2.append(hexString);
        sb2.append(")");
        throw new ParseException(sb2.toString(), parcel);
    }

    private static void zzb(Parcel parcel, int i10, int i11, int i12) {
        if (i11 == i12) {
            return;
        }
        String hexString = Integer.toHexString(i11);
        StringBuilder sb2 = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb2.append("Expected size ");
        sb2.append(i12);
        sb2.append(" got ");
        sb2.append(i11);
        sb2.append(" (0x");
        sb2.append(hexString);
        sb2.append(")");
        throw new ParseException(sb2.toString(), parcel);
    }
}
