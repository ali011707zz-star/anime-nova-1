.class final Lcom/google/android/gms/internal/ads/zzgmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgoe;

.field private final zzb:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgao;Lcom/google/android/gms/internal/ads/zzgoe;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zzb:J

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzgdu;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza()Lcom/google/android/gms/internal/ads/zzbcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcr;->zza()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza()Lcom/google/android/gms/internal/ads/zzbcr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcr;->zzb()I

    move-result p0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatu;->zza()[B

    move-result-object v1

    const-string v2, "versionArray"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "allocate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    .line 7
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v0, "array(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdu;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmx;->zzc(Lcom/google/android/gms/internal/ads/zzgdu;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4eed

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zzc()J

    move-result-wide v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zzb:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4eeb

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    :cond_3
    return v0

    .line 1
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4eea

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdu;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmx;->zzc(Lcom/google/android/gms/internal/ads/zzgdu;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4eee

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmx;->zza:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4eec

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0
.end method
