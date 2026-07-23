.class final Lcom/google/ads/interactivemedia/v3/impl/zzbl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzes;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzba;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

.field private final zzg:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzgd;Lcom/google/ads/interactivemedia/v3/impl/zzbz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zze:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzg:Landroid/util/DisplayMetrics;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzes;

    .line 2
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p3, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzes;-><init>(Ljava/util/concurrent/ExecutorService;F)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzes;

    return-void
.end method

.method private final zzd()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Unable to parse companion information."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->companions:Ljava/util/Map;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zza(I)Ljava/util/HashMap;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzd()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p1, 0x0

    .line 15
    throw p1

    .line 1
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zzd()V

    return-void
.end method
