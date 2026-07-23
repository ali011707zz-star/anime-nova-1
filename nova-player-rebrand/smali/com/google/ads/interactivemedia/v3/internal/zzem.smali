.class public final Lcom/google/ads/interactivemedia/v3/internal/zzem;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field public final zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field public final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field public final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field public final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field public final zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 2
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->disableAppSetId:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 3
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->appSetIdTimeoutMs:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 4
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->gksFirstPartyAdServers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 5
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->gksDaiNativeXhrApps:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 6
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->gksTimeoutMs:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method
