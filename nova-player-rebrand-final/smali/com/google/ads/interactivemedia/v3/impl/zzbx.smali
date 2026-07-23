.class final Lcom/google/ads/interactivemedia/v3/impl/zzbx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbx;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p1

    const-string p2, "4"

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbx;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
