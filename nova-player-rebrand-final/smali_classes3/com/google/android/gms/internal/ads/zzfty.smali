.class public final Lcom/google/android/gms/internal/ads/zzfty;
.super Lcom/google/android/gms/internal/ads/zzftx;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftx;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzftx;->zzc(Landroid/webkit/WebView;)V

    return-void
.end method
