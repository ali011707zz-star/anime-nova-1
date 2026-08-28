package com.google.android.gms.internal.firebase_messaging;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.protocol.HTTP;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
public final class zzab implements ObjectEncoderContext {
    private static final Charset zza = Charset.forName(HTTP.UTF_8);
    private static final FieldDescriptor zzg;
    private static final FieldDescriptor zzh;
    private static final ObjectEncoder<Map.Entry<Object, Object>> zzi;
    private OutputStream zzb;
    private final Map<Class<?>, ObjectEncoder<?>> zzc;
    private final Map<Class<?>, ValueEncoder<?>> zzd;
    private final ObjectEncoder<Object> zze;
    private final zzaf zzf = new zzaf(this);

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("key");
        zzv zzvVar = new zzv();
        zzvVar.zza(1);
        zzg = builder.withProperty(zzvVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        zzv zzvVar2 = new zzv();
        zzvVar2.zza(2);
        zzh = builder2.withProperty(zzvVar2.zzb()).build();
        zzi = zzaa.zza;
    }

    public zzab(OutputStream outputStream, Map<Class<?>, ObjectEncoder<?>> map, Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder) {
        this.zzb = outputStream;
        this.zzc = map;
        this.zzd = map2;
        this.zze = objectEncoder;
    }

    public static final /* synthetic */ void zzg(Map.Entry entry, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(zzg, entry.getKey());
        objectEncoderContext.add(zzh, entry.getValue());
    }

    private final <T> zzab zzh(ObjectEncoder<T> objectEncoder, FieldDescriptor fieldDescriptor, T t10, boolean z10) throws IOException {
        long zzi2 = zzi(objectEncoder, t10);
        if (z10 && zzi2 == 0) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 2);
        zzo(zzi2);
        objectEncoder.encode(t10, this);
        return this;
    }

    private final <T> long zzi(ObjectEncoder<T> objectEncoder, T t10) throws IOException {
        zzw zzwVar = new zzw();
        try {
            OutputStream outputStream = this.zzb;
            this.zzb = zzwVar;
            try {
                objectEncoder.encode(t10, this);
                this.zzb = outputStream;
                long zza2 = zzwVar.zza();
                zzwVar.close();
                return zza2;
            } catch (Throwable th) {
                this.zzb = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                zzwVar.close();
            } catch (Throwable th3) {
                zzt.zza(th2, th3);
            }
            throw th2;
        }
    }

    private final <T> zzab zzj(ValueEncoder<T> valueEncoder, FieldDescriptor fieldDescriptor, T t10, boolean z10) throws IOException {
        this.zzf.zza(fieldDescriptor, z10);
        valueEncoder.encode(t10, this.zzf);
        return this;
    }

    private static ByteBuffer zzk(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static int zzl(FieldDescriptor fieldDescriptor) {
        zzz zzzVar = (zzz) fieldDescriptor.getProperty(zzz.class);
        if (zzzVar != null) {
            return zzzVar.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static zzz zzm(FieldDescriptor fieldDescriptor) {
        zzz zzzVar = (zzz) fieldDescriptor.getProperty(zzz.class);
        if (zzzVar != null) {
            return zzzVar;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final void zzn(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.zzb.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.zzb.write(i10 & 127);
    }

    private final void zzo(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.zzb.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.zzb.write(((int) j10) & 127);
    }

    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d10) throws IOException {
        zzb(fieldDescriptor, d10, true);
        return this;
    }

    public final ObjectEncoderContext inline(Object obj) throws IOException {
        zzf(obj);
        return this;
    }

    public final ObjectEncoderContext nested(FieldDescriptor fieldDescriptor) throws IOException {
        throw new EncodingException("nested() is not implemented for protobuf encoding.");
    }

    public final ObjectEncoderContext zza(FieldDescriptor fieldDescriptor, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            zzn((zzl(fieldDescriptor) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(zza);
            zzn(bytes.length);
            this.zzb.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it2 = ((Collection) obj).iterator();
            while (it2.hasNext()) {
                zza(fieldDescriptor, it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it3 = ((Map) obj).entrySet().iterator();
            while (it3.hasNext()) {
                zzh(zzi, fieldDescriptor, (Map.Entry) it3.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            zzb(fieldDescriptor, ((Double) obj).doubleValue(), z10);
            return this;
        }
        if (obj instanceof Float) {
            zzc(fieldDescriptor, ((Float) obj).floatValue(), z10);
            return this;
        }
        if (obj instanceof Number) {
            zze(fieldDescriptor, ((Number) obj).longValue(), z10);
            return this;
        }
        if (obj instanceof Boolean) {
            zzd(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z10);
            return this;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            zzn((zzl(fieldDescriptor) << 3) | 2);
            zzn(bArr.length);
            this.zzb.write(bArr);
            return this;
        }
        ObjectEncoder<?> objectEncoder = this.zzc.get(obj.getClass());
        if (objectEncoder != null) {
            zzh(objectEncoder, fieldDescriptor, obj, z10);
            return this;
        }
        ValueEncoder<?> valueEncoder = this.zzd.get(obj.getClass());
        if (valueEncoder != null) {
            zzj(valueEncoder, fieldDescriptor, obj, z10);
            return this;
        }
        if (obj instanceof zzx) {
            zzd(fieldDescriptor, ((zzx) obj).getNumber(), true);
            return this;
        }
        if (obj instanceof Enum) {
            zzd(fieldDescriptor, ((Enum) obj).ordinal(), true);
            return this;
        }
        zzh(this.zze, fieldDescriptor, obj, z10);
        return this;
    }

    public final ObjectEncoderContext zzb(FieldDescriptor fieldDescriptor, double d10, boolean z10) throws IOException {
        if (z10 && d10 == ShadowDrawableWrapper.COS_45) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 1);
        this.zzb.write(zzk(8).putDouble(d10).array());
        return this;
    }

    public final ObjectEncoderContext zzc(FieldDescriptor fieldDescriptor, float f10, boolean z10) throws IOException {
        if (z10 && f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 5);
        this.zzb.write(zzk(4).putFloat(f10).array());
        return this;
    }

    public final zzab zzd(FieldDescriptor fieldDescriptor, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        zzz zzm = zzm(fieldDescriptor);
        zzy zzyVar = zzy.DEFAULT;
        int ordinal = zzm.zzb().ordinal();
        if (ordinal == 0) {
            zzn(zzm.zza() << 3);
            zzn(i10);
        } else if (ordinal == 1) {
            zzn(zzm.zza() << 3);
            zzn((i10 + i10) ^ (i10 >> 31));
        } else if (ordinal == 2) {
            zzn((zzm.zza() << 3) | 5);
            this.zzb.write(zzk(4).putInt(i10).array());
        }
        return this;
    }

    public final zzab zze(FieldDescriptor fieldDescriptor, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        zzz zzm = zzm(fieldDescriptor);
        zzy zzyVar = zzy.DEFAULT;
        int ordinal = zzm.zzb().ordinal();
        if (ordinal == 0) {
            zzn(zzm.zza() << 3);
            zzo(j10);
        } else if (ordinal == 1) {
            zzn(zzm.zza() << 3);
            zzo((j10 >> 63) ^ (j10 + j10));
        } else if (ordinal == 2) {
            zzn((zzm.zza() << 3) | 1);
            this.zzb.write(zzk(8).putLong(j10).array());
        }
        return this;
    }

    public final zzab zzf(Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        ObjectEncoder<?> objectEncoder = this.zzc.get(obj.getClass());
        if (objectEncoder != null) {
            objectEncoder.encode(obj, this);
            return this;
        }
        String valueOf = String.valueOf(obj.getClass());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 15);
        sb2.append("No encoder for ");
        sb2.append(valueOf);
        throw new EncodingException(sb2.toString());
    }

    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, float f10) throws IOException {
        zzc(fieldDescriptor, f10, true);
        return this;
    }

    public final ObjectEncoderContext nested(String str) throws IOException {
        return nested(FieldDescriptor.of(str));
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* bridge */ /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i10) throws IOException {
        zzd(fieldDescriptor, i10, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* bridge */ /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j10) throws IOException {
        zze(fieldDescriptor, j10, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) throws IOException {
        zza(fieldDescriptor, obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* bridge */ /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z10) throws IOException {
        zzd(fieldDescriptor, z10 ? 1 : 0, true);
        return this;
    }

    public final ObjectEncoderContext add(String str, double d10) throws IOException {
        zzb(FieldDescriptor.of(str), d10, true);
        return this;
    }

    public final ObjectEncoderContext add(String str, int i10) throws IOException {
        zzd(FieldDescriptor.of(str), i10, true);
        return this;
    }

    public final ObjectEncoderContext add(String str, long j10) throws IOException {
        zze(FieldDescriptor.of(str), j10, true);
        return this;
    }

    public final ObjectEncoderContext add(String str, Object obj) throws IOException {
        zza(FieldDescriptor.of(str), obj, true);
        return this;
    }

    public final ObjectEncoderContext add(String str, boolean z10) throws IOException {
        zzd(FieldDescriptor.of(str), z10 ? 1 : 0, true);
        return this;
    }
}
