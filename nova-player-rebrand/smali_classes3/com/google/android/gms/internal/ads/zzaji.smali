.class final Lcom/google/android/gms/internal/ads/zzaji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzaev;)J
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-virtual {p1, v1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    .line 2
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    const/16 v4, 0x80

    move v5, v2

    :goto_0
    add-int/lit8 v6, v5, 0x1

    and-int v7, v1, v4

    if-nez v7, :cond_0

    shr-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    not-int v4, v4

    and-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 3
    invoke-virtual {p1, v4, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    :goto_1
    if-ge v2, v5, :cond_1

    shl-int/lit8 p1, v1, 0x8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 4
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    int-to-long v0, v1

    return-wide v0

    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 14

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v0

    .line 0
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzael;

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 1
    invoke-virtual {v7, v6, v8, v9, v8}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v10

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    :goto_1
    const-wide/32 v12, 0x1a45dfa3

    cmp-long v6, v10, v12

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    long-to-int v6, v3

    iget v12, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    add-int/2addr v12, v9

    iput v12, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    if-ne v12, v6, :cond_2

    return v8

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 3
    invoke-virtual {v7, v6, v8, v9, v8}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    const/16 v6, 0x8

    shl-long v9, v10, v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 4
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    int-to-long v11, v6

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_1

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)J

    move-result-wide v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    int-to-long v5, v5

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v3, v10

    if-eqz v12, :cond_9

    add-long/2addr v5, v3

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v0, v5, v0

    if-ltz v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    int-to-long v0, v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_8

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_6

    return v8

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    if-eqz v2, :cond_5

    long-to-int v0, v0

    .line 8
    invoke-virtual {v7, v0, v8}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    goto :goto_2

    :cond_7
    return v8

    :cond_8
    if-nez v0, :cond_9

    return v9

    :cond_9
    :goto_3
    return v8
.end method
