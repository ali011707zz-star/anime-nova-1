package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class FastJsonResponse {

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @ShowFirstParty
    /* loaded from: classes.dex */
    public interface FieldConverter<I, O> {
        int zaa();

        int zab();

        @RecentlyNonNull
        I zac(@RecentlyNonNull O o10);

        @RecentlyNullable
        O zad(@RecentlyNonNull I i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RecentlyNonNull
    public static final <O, I> I zaD(@RecentlyNonNull Field<I, O> field, Object obj) {
        return ((Field) field).zak != null ? field.zai(obj) : obj;
    }

    private final <I, O> void zaE(Field<I, O> field, I i10) {
        String str = field.zae;
        O zah = field.zah(i10);
        int i11 = field.zac;
        switch (i11) {
            case 0:
                if (zah != null) {
                    setIntegerInternal(field, str, ((Integer) zah).intValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 1:
                zat(field, str, (BigInteger) zah);
                return;
            case 2:
                if (zah != null) {
                    setLongInternal(field, str, ((Long) zah).longValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 3:
            default:
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Unsupported type for conversion: ");
                sb2.append(i11);
                throw new IllegalStateException(sb2.toString());
            case 4:
                if (zah != null) {
                    zay(field, str, ((Double) zah).doubleValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 5:
                zaA(field, str, (BigDecimal) zah);
                return;
            case 6:
                if (zah != null) {
                    setBooleanInternal(field, str, ((Boolean) zah).booleanValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) zah);
                return;
            case 8:
            case 9:
                if (zah != null) {
                    setDecodedBytesInternal(field, str, (byte[]) zah);
                    return;
                } else {
                    zaG(str);
                    return;
                }
        }
    }

    private static final void zaF(StringBuilder sb2, Field field, Object obj) {
        int i10 = field.zaa;
        if (i10 == 11) {
            Class<? extends FastJsonResponse> cls = field.zag;
            Preconditions.checkNotNull(cls);
            sb2.append(cls.cast(obj).toString());
        } else {
            if (i10 == 7) {
                sb2.append("\"");
                sb2.append(JsonUtils.escapeString((String) obj));
                sb2.append("\"");
                return;
            }
            sb2.append(obj);
        }
    }

    private static final <O> void zaG(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 58);
            sb2.append("Output field (");
            sb2.append(str);
            sb2.append(") has a null value, but expected a primitive");
        }
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@RecentlyNonNull Field field, @RecentlyNonNull String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(@RecentlyNonNull Field field, @RecentlyNonNull String str, @RecentlyNonNull T t10) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @RecentlyNonNull
    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    @RecentlyNullable
    @KeepForSdk
    public Object getFieldValue(@RecentlyNonNull Field field) {
        String str = field.zae;
        if (field.zag != null) {
            Preconditions.checkState(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", field.zae);
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb2 = new StringBuilder(String.valueOf(substring).length() + 4);
                sb2.append("get");
                sb2.append(upperCase);
                sb2.append(substring);
                return getClass().getMethod(sb2.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        return getValueObject(str);
    }

    @RecentlyNullable
    @KeepForSdk
    public abstract Object getValueObject(@RecentlyNonNull String str);

    @KeepForSdk
    public boolean isFieldSet(@RecentlyNonNull Field field) {
        if (field.zac != 11) {
            return isPrimitiveFieldSet(field.zae);
        }
        if (field.zad) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(@RecentlyNonNull String str);

    @KeepForSdk
    public void setBooleanInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, boolean z10) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @KeepForSdk
    public void setDecodedBytesInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    @KeepForSdk
    public void setIntegerInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, int i10) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @KeepForSdk
    public void setLongInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, long j10) {
        throw new UnsupportedOperationException("Long not supported");
    }

    @KeepForSdk
    public void setStringInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @KeepForSdk
    public void setStringMapInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    @KeepForSdk
    public void setStringsInternal(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    @RecentlyNonNull
    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb2 = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zaD = zaD(field, getFieldValue(field));
                if (sb2.length() == 0) {
                    sb2.append("{");
                } else {
                    sb2.append(",");
                }
                sb2.append("\"");
                sb2.append(str);
                sb2.append("\":");
                if (zaD == null) {
                    sb2.append("null");
                } else {
                    switch (field.zac) {
                        case 8:
                            sb2.append("\"");
                            sb2.append(Base64Utils.encode((byte[]) zaD));
                            sb2.append("\"");
                            break;
                        case 9:
                            sb2.append("\"");
                            sb2.append(Base64Utils.encodeUrlSafe((byte[]) zaD));
                            sb2.append("\"");
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb2, (HashMap) zaD);
                            break;
                        default:
                            if (field.zab) {
                                ArrayList arrayList = (ArrayList) zaD;
                                sb2.append("[");
                                int size = arrayList.size();
                                for (int i10 = 0; i10 < size; i10++) {
                                    if (i10 > 0) {
                                        sb2.append(",");
                                    }
                                    Object obj = arrayList.get(i10);
                                    if (obj != null) {
                                        zaF(sb2, field, obj);
                                    }
                                }
                                sb2.append("]");
                                break;
                            } else {
                                zaF(sb2, field, zaD);
                                break;
                            }
                    }
                }
            }
        }
        if (sb2.length() > 0) {
            sb2.append("}");
        } else {
            sb2.append("{}");
        }
        return sb2.toString();
    }

    public void zaA(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public void zaB(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public void zaC(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zaa(@RecentlyNonNull Field<Integer, O> field, int i10) {
        if (((Field) field).zak != null) {
            zaE(field, Integer.valueOf(i10));
        } else {
            setIntegerInternal(field, field.zae, i10);
        }
    }

    public final <O> void zab(@RecentlyNonNull Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zas(field, field.zae, arrayList);
        }
    }

    public final <O> void zac(@RecentlyNonNull Field<BigInteger, O> field, BigInteger bigInteger) {
        if (((Field) field).zak != null) {
            zaE(field, bigInteger);
        } else {
            zat(field, field.zae, bigInteger);
        }
    }

    public final <O> void zad(@RecentlyNonNull Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zau(field, field.zae, arrayList);
        }
    }

    public final <O> void zae(@RecentlyNonNull Field<Long, O> field, long j10) {
        if (((Field) field).zak != null) {
            zaE(field, Long.valueOf(j10));
        } else {
            setLongInternal(field, field.zae, j10);
        }
    }

    public final <O> void zaf(@RecentlyNonNull Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zav(field, field.zae, arrayList);
        }
    }

    public final <O> void zag(@RecentlyNonNull Field<Float, O> field, float f10) {
        if (((Field) field).zak != null) {
            zaE(field, Float.valueOf(f10));
        } else {
            zaw(field, field.zae, f10);
        }
    }

    public final <O> void zah(@RecentlyNonNull Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zax(field, field.zae, arrayList);
        }
    }

    public final <O> void zai(@RecentlyNonNull Field<Double, O> field, double d10) {
        if (((Field) field).zak != null) {
            zaE(field, Double.valueOf(d10));
        } else {
            zay(field, field.zae, d10);
        }
    }

    public final <O> void zaj(@RecentlyNonNull Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.zae, arrayList);
        }
    }

    public final <O> void zak(@RecentlyNonNull Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (((Field) field).zak != null) {
            zaE(field, bigDecimal);
        } else {
            zaA(field, field.zae, bigDecimal);
        }
    }

    public final <O> void zal(@RecentlyNonNull Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaB(field, field.zae, arrayList);
        }
    }

    public final <O> void zam(@RecentlyNonNull Field<Boolean, O> field, boolean z10) {
        if (((Field) field).zak != null) {
            zaE(field, Boolean.valueOf(z10));
        } else {
            setBooleanInternal(field, field.zae, z10);
        }
    }

    public final <O> void zan(@RecentlyNonNull Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaC(field, field.zae, arrayList);
        }
    }

    public final <O> void zao(@RecentlyNonNull Field<String, O> field, String str) {
        if (((Field) field).zak != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public final <O> void zap(@RecentlyNonNull Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }

    public final <O> void zaq(@RecentlyNonNull Field<byte[], O> field, byte[] bArr) {
        if (((Field) field).zak != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public final <O> void zar(@RecentlyNonNull Field<Map<String, String>, O> field, Map<String, String> map) {
        if (((Field) field).zak != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    public void zas(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public void zat(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public void zau(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public void zav(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public void zaw(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, float f10) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public void zax(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public void zay(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, double d10) {
        throw new UnsupportedOperationException("Double not supported");
    }

    public void zaz(@RecentlyNonNull Field<?, ?> field, @RecentlyNonNull String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @VisibleForTesting
    @SafeParcelable.Class(creator = "FieldCreator")
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();

        @SafeParcelable.Field(getter = "getTypeIn", id = 2)
        public final int zaa;

        @SafeParcelable.Field(getter = "isTypeInArray", id = 3)
        public final boolean zab;

        @SafeParcelable.Field(getter = "getTypeOut", id = 4)
        public final int zac;

        @SafeParcelable.Field(getter = "isTypeOutArray", id = 5)
        public final boolean zad;

        @RecentlyNonNull
        @SafeParcelable.Field(getter = "getOutputFieldName", id = 6)
        public final String zae;

        @SafeParcelable.Field(getter = "getSafeParcelableFieldId", id = 7)
        public final int zaf;

        @RecentlyNullable
        public final Class<? extends FastJsonResponse> zag;

        @RecentlyNullable
        @SafeParcelable.Field(getter = "getConcreteTypeName", id = 8)
        public final String zah;

        @SafeParcelable.VersionField(getter = "getVersionCode", id = 1)
        private final int zai;
        private zan zaj;

        @SafeParcelable.Field(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        private FieldConverter<I, O> zak;

        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) int i11, @SafeParcelable.Param(id = 3) boolean z10, @SafeParcelable.Param(id = 4) int i12, @SafeParcelable.Param(id = 5) boolean z11, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i13, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) com.google.android.gms.common.server.converter.zaa zaaVar) {
            this.zai = i10;
            this.zaa = i11;
            this.zab = z10;
            this.zac = i12;
            this.zad = z11;
            this.zae = str;
            this.zaf = i13;
            if (str2 == null) {
                this.zag = null;
                this.zah = null;
            } else {
                this.zag = SafeParcelResponse.class;
                this.zah = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = (FieldConverter<I, O>) zaaVar.zab();
            }
        }

        @RecentlyNonNull
        @VisibleForTesting
        @KeepForSdk
        public static Field<byte[], byte[]> forBase64(@RecentlyNonNull String str, int i10) {
            return new Field<>(8, false, 8, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<Boolean, Boolean> forBoolean(@RecentlyNonNull String str, int i10) {
            return new Field<>(6, false, 6, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(@RecentlyNonNull String str, int i10, @RecentlyNonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i10, cls, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(@RecentlyNonNull String str, int i10, @RecentlyNonNull Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i10, cls, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<Double, Double> forDouble(@RecentlyNonNull String str, int i10) {
            return new Field<>(4, false, 4, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<Float, Float> forFloat(@RecentlyNonNull String str, int i10) {
            return new Field<>(3, false, 3, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @VisibleForTesting
        @KeepForSdk
        public static Field<Integer, Integer> forInteger(@RecentlyNonNull String str, int i10) {
            return new Field<>(0, false, 0, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<Long, Long> forLong(@RecentlyNonNull String str, int i10) {
            return new Field<>(2, false, 2, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<String, String> forString(@RecentlyNonNull String str, int i10) {
            return new Field<>(7, false, 7, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(@RecentlyNonNull String str, int i10) {
            return new Field<>(10, false, 10, false, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> forStrings(@RecentlyNonNull String str, int i10) {
            return new Field<>(7, true, 7, true, str, i10, null, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public static Field withConverter(@RecentlyNonNull String str, int i10, @RecentlyNonNull FieldConverter<?, ?> fieldConverter, boolean z10) {
            fieldConverter.zaa();
            fieldConverter.zab();
            return new Field(7, z10, 0, false, str, i10, null, fieldConverter);
        }

        @KeepForSdk
        public int getSafeParcelableFieldId() {
            return this.zaf;
        }

        @RecentlyNonNull
        public final String toString() {
            Objects.ToStringHelper add = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.zai)).add("typeIn", Integer.valueOf(this.zaa)).add("typeInArray", Boolean.valueOf(this.zab)).add("typeOut", Integer.valueOf(this.zac)).add("typeOutArray", Boolean.valueOf(this.zad)).add("outputFieldName", this.zae).add("safeParcelFieldId", Integer.valueOf(this.zaf)).add("concreteTypeName", zab());
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls != null) {
                add.add("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter != null) {
                add.add("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return add.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i10) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.zai);
            SafeParcelWriter.writeInt(parcel, 2, this.zaa);
            SafeParcelWriter.writeBoolean(parcel, 3, this.zab);
            SafeParcelWriter.writeInt(parcel, 4, this.zac);
            SafeParcelWriter.writeBoolean(parcel, 5, this.zad);
            SafeParcelWriter.writeString(parcel, 6, this.zae, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, zab(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, zae(), i10, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        @RecentlyNonNull
        public final Field<I, O> zaa() {
            return new Field<>(this.zai, this.zaa, this.zab, this.zac, this.zad, this.zae, this.zaf, this.zah, zae());
        }

        public final String zab() {
            String str = this.zah;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final boolean zac() {
            return this.zak != null;
        }

        public final void zad(zan zanVar) {
            this.zaj = zanVar;
        }

        public final com.google.android.gms.common.server.converter.zaa zae() {
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter == null) {
                return null;
            }
            return com.google.android.gms.common.server.converter.zaa.zaa(fieldConverter);
        }

        @RecentlyNonNull
        public final FastJsonResponse zaf() throws InstantiationException, IllegalAccessException {
            Preconditions.checkNotNull(this.zag);
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls == SafeParcelResponse.class) {
                Preconditions.checkNotNull(this.zah);
                Preconditions.checkNotNull(this.zaj, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
                return new SafeParcelResponse(this.zaj, this.zah);
            }
            return cls.newInstance();
        }

        @RecentlyNonNull
        public final Map<String, Field<?, ?>> zag() {
            Preconditions.checkNotNull(this.zah);
            Preconditions.checkNotNull(this.zaj);
            return (Map) Preconditions.checkNotNull(this.zaj.zad(this.zah));
        }

        @RecentlyNonNull
        public final O zah(I i10) {
            Preconditions.checkNotNull(this.zak);
            return (O) Preconditions.checkNotNull(this.zak.zad(i10));
        }

        @RecentlyNonNull
        public final I zai(@RecentlyNonNull O o10) {
            Preconditions.checkNotNull(this.zak);
            return this.zak.zac(o10);
        }

        public Field(int i10, boolean z10, int i11, boolean z11, @RecentlyNonNull String str, int i12, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.zai = 1;
            this.zaa = i10;
            this.zab = z10;
            this.zac = i11;
            this.zad = z11;
            this.zae = str;
            this.zaf = i12;
            this.zag = cls;
            if (cls == null) {
                this.zah = null;
            } else {
                this.zah = cls.getCanonicalName();
            }
            this.zak = fieldConverter;
        }
    }
}
