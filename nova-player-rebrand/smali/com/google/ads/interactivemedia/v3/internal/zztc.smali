.class final Lcom/google/ads/interactivemedia/v3/internal/zztc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzta;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzta;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/ads/interactivemedia/v3/internal/zztd;)I
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zztd;->remainingField:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zztd;->remainingField:I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
