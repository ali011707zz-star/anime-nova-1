.class final Lcom/google/ads/interactivemedia/v3/impl/zzbw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zztp;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

.field final synthetic zzb:Landroid/content/Context;

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "WebView creation failed"

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzn()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzm(Landroid/content/Context;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;)V

    return-void
.end method
