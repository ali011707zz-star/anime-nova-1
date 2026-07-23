.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzac;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzac;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzac;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzac;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzac;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
