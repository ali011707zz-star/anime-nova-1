.class abstract Lcom/google/android/gms/internal/ads/zzhhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhc;->zza:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method static zza([I[I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhc;->zza:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 2
    invoke-static {p1, v2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static zzb([I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    .line 1
    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    .line 2
    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    .line 3
    invoke-static {v0, v11, v12, v3, v13}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    .line 4
    invoke-static {v0, v14, v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    .line 5
    invoke-static {v0, v1, v8, v3, v9}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    .line 6
    invoke-static {v0, v7, v12, v4, v6}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    .line 7
    invoke-static {v0, v11, v15, v5, v10}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    const/16 v3, 0x9

    const/4 v4, 0x4

    .line 8
    invoke-static {v0, v14, v4, v3, v13}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc([IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static zzc([IIIII)V
    .locals 2

    .line 1
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 2
    aget v1, p0, p4

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v1

    aput v0, p0, p4

    .line 3
    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    .line 4
    aget v0, p0, p2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xc

    ushr-int/lit8 v0, v0, -0xc

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 5
    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    .line 6
    aget p1, p0, p4

    xor-int/2addr p1, v1

    shl-int/lit8 v0, p1, 0x8

    ushr-int/lit8 p1, p1, -0x8

    or-int/2addr p1, v0

    aput p1, p0, p4

    .line 7
    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    .line 8
    aget p1, p0, p2

    xor-int/2addr p1, p4

    shl-int/lit8 p3, p1, 0x7

    ushr-int/lit8 p1, p1, -0x7

    or-int/2addr p1, p3

    aput p1, p0, p2

    return-void
.end method

.method static zzd([B)[I
    .locals 1

    .line 1
    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid input length"

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zze([I[I)[I
    .locals 4

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhhc;->zza([I[I)V

    const/4 p0, 0x0

    .line 2
    aget p0, p1, p0

    const/16 v1, 0xc

    aput p0, v0, v1

    const/4 p0, 0x1

    .line 3
    aget p0, p1, p0

    const/16 v2, 0xd

    aput p0, v0, v2

    const/4 p0, 0x2

    .line 4
    aget p0, p1, p0

    const/16 v3, 0xe

    aput p0, v0, v3

    const/4 p0, 0x3

    .line 5
    aget p0, p1, p0

    const/16 p1, 0xf

    aput p0, v0, p1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhc;->zzb([I)V

    aget p0, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    aget p0, v0, v2

    const/4 v1, 0x5

    aput p0, v0, v1

    aget p0, v0, v3

    const/4 v1, 0x6

    aput p0, v0, v1

    aget p0, v0, p1

    const/4 p1, 0x7

    aput p0, v0, p1

    const/16 p0, 0x8

    .line 7
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method
