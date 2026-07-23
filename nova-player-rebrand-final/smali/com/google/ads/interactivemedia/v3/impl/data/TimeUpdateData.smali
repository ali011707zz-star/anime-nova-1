.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;
.end annotation


# static fields
.field private static final DEFAULT_TIME_UNIT:Ljava/lang/String; = "ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTimeMs()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDurationMs()J

    move-result-wide v3

    const-string v5, "ms"

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;-><init>(JJLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract currentTime()J
.end method

.method public abstract duration()J
.end method

.method public abstract timeUnit()Ljava/lang/String;
.end method
