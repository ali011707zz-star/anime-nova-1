.class public final Lcom/google/android/gms/internal/ads/zzauk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/ads/zzauk;

.field public static final zzc:Ljava/util/Comparator;


# instance fields
.field public final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzauk;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzauj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    return-void
.end method

.method public static zze([B)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauk;->zzh([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzauk;-><init>([B)V

    return-object v0
.end method

.method public static zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 1

    .line 0
    const-string v0, "Hn2H4l0="

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzauk;->zze([B)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(B)I
    .locals 9

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    not-int v8, v1

    and-int/2addr v2, v8

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    add-int/2addr v2, v1

    sub-int/2addr v2, v6

    add-int/2addr v7, v2

    const v1, 0x31ed2baf

    rem-int/2addr v0, v1

    xor-int/2addr v0, v7

    and-int/2addr p0, v0

    return p0

    :array_0
    .array-data 4
        0x7da042a3
        0xe6032a
        0x74b36845
        -0x7fb3fcd2
        -0x7165ebeb
        -0x5f7bc0f
        0x1893d
        0x6d651b8d
        0x31ed2baf
    .end array-data
.end method

.method public static zzh([BII)[B
    .locals 2

    .line 0
    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    new-array v1, p2, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzauk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    not-int v8, v1

    and-int/2addr v2, v8

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    add-int/2addr v2, v1

    sub-int/2addr v2, v6

    add-int/2addr v7, v2

    const v1, 0x3a849116

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    xor-int/2addr v0, v7

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CVC1qiQNJHikW0iU1TIPZA=="

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Ng=="

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x37d3b790
        0xfa80b44
        0x418755a7
        0x1e2e2a40
        0x514624ae
        -0x58ebf436
        0x6946a7d
        0x3afa746f
        0x3a849116
    .end array-data
.end method

.method public final zza()[B
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [B

    return-object v0

    :cond_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzh([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzb(I)B
    .locals 7

    .line 0
    const v0, 0x7d94f75d

    not-int v1, v0

    const v2, 0x23032345

    and-int/2addr v1, v2

    const v2, 0x5ba28482

    or-int/2addr v1, v2

    const v2, 0x20012365

    and-int/2addr v0, v2

    const v2, 0x1a6e0c38

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    const v0, 0x7f6e9ee1

    sub-int/2addr v1, v0

    const v0, 0x6163ed0d

    const v2, 0x78070222

    rem-int/2addr v2, v0

    const v0, 0x4cc32f1f    # 1.02332664E8f

    not-int v3, v0

    const v4, 0x3c068aa

    and-int/2addr v3, v4

    const v4, 0x1a132ef1

    or-int/2addr v3, v4

    const v4, 0x61c0400e

    and-int/2addr v0, v4

    const v4, 0x62022dc4

    or-int/2addr v0, v4

    add-int/2addr v3, v0

    const v0, 0x7ad80684

    sub-int/2addr v3, v0

    const v0, 0x3c5e07c

    const v4, 0x55fee0d1

    rem-int/2addr v4, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v5, v0

    add-int/lit8 v6, p1, 0x1

    sub-int v6, v5, v6

    or-int/2addr v6, p1

    if-gez v6, :cond_1

    if-gez p1, :cond_0

    xor-int v0, v1, v2

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Akelqh1fajntGgo="

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    xor-int v0, v3, v4

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Akelqh1faDmxRUSK1T9GeQ=="

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Zwk="

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 5

    .line 0
    const-string v0, "Hn2H4l0="

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzauk;)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 5

    .line 0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v2, v1

    add-int v3, v2, v0

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzauk;->zze([B)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object p1

    return-object p1
.end method
