.class final Lcom/google/android/gms/internal/consent_sdk/zzbv;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbx;Lcom/google/android/gms/internal/consent_sdk/zzbw;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbx;)Lcom/google/android/gms/internal/consent_sdk/zzcd;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zze(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zze(Lcom/google/android/gms/internal/consent_sdk/zzbx;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "UserMessagingPlatform"

    const-string v0, "Wall html loaded."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzbx;Z)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbx;)Lcom/google/android/gms/internal/consent_sdk/zzcd;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zzf(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/impl/zzch$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v1, "was stopped by system"

    goto :goto_0

    .line 6
    :cond_1
    const-string v1, "crashed"

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcla$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView render process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Renderer priority at exit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UserMessagingPlatform"

    .line 3
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbx;)Lcom/google/android/gms/internal/consent_sdk/zzcd;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zze(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbx;)Lcom/google/android/gms/internal/consent_sdk/zzcd;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zze(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
