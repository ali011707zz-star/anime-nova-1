.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzh;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzf;->zzb:Ljava/lang/String;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
