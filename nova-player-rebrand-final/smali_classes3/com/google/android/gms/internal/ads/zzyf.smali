.class public final Lcom/google/android/gms/internal/ads/zzyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/Random;

.field private final zzb:[I

.field private final zzc:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzyf;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyf;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyf;->zza:Ljava/util/Random;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v0, v0

    return v0
.end method

.method public final zzb(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzc(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    .line 2
    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public final zzd()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v1, v0

    const/4 v2, -0x1

    if-lez v1, :cond_0

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    :cond_0
    return v2
.end method

.method public final zze()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/ads/zzyf;
    .locals 7

    .line 1
    new-array p1, p2, [I

    .line 2
    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyf;->zza:Ljava/util/Random;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 5
    aget v5, v0, v3

    aput v5, v0, v2

    .line 6
    aput v2, v0, v3

    move v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[I

    array-length v3, v2

    add-int/2addr v3, p2

    .line 8
    new-array v3, v3, [I

    move v4, v1

    move v5, v4

    :goto_1
    array-length v6, v2

    add-int/2addr v6, p2

    if-ge v1, v6, :cond_3

    if-ge v4, p2, :cond_1

    .line 9
    aget v6, p1, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 12
    aget v4, v0, v4

    aput v4, v3, v1

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 10
    aget v5, v2, v5

    aput v5, v3, v1

    if-ltz v5, :cond_2

    add-int/2addr v5, p2

    .line 11
    aput v5, v3, v1

    :cond_2
    move v5, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zza:Ljava/util/Random;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzyf;

    new-instance v0, Ljava/util/Random;

    .line 13
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzyf;-><init>([ILjava/util/Random;)V

    return-object p2
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzyf;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zza:Ljava/util/Random;

    new-instance v2, Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzyf;-><init>(ILjava/util/Random;)V

    return-object v0
.end method
