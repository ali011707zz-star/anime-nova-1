.class final Lcom/google/ads/interactivemedia/v3/impl/zzda;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzba;

.field private final zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private final zzf:Ljava/util/concurrent/ExecutorService;

.field private final zzg:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzgd;Lcom/google/ads/interactivemedia/v3/impl/zzbz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzf:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzg:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->getPauseAdSlot()Lcom/google/ads/interactivemedia/v3/api/AdSlot;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "No pause ad slot in display container."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->getPauseAdSlot()Lcom/google/ads/interactivemedia/v3/api/AdSlot;

    return-void
.end method
