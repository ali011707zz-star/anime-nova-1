.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzae;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

.field private final synthetic zzb:J


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzae;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzae;->zzb:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzae;->zzb:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzae;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void
.end method
