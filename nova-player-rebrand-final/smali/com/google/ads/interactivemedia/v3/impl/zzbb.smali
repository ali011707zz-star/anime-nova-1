.class final Lcom/google/ads/interactivemedia/v3/impl/zzbb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzci;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field final synthetic zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;Lcom/google/ads/interactivemedia/v3/impl/zzbv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    const-string v0, "IMA WebView encountered an error."

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 2
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->WEB_VIEW_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->webViewNavigationDetected:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->webViewNavigationDetected:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 2
    const-string v3, "url"

    invoke-static {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "*"

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method
