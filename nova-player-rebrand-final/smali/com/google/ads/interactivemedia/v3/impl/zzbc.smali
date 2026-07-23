.class final Lcom/google/ads/interactivemedia/v3/impl/zzbc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field public final zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public final zzb:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

.field public zzc:Ljava/util/Map;

.field public zzd:Ljava/util/List;

.field public zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field zzf:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

.field zzg:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

.field public zzh:D


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzd:Ljava/util/List;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v5, 0x0

    .line 1
    new-array v6, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagj;->zzb(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
