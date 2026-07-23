.class final Lcom/google/android/gms/ads/internal/zzq;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzs;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzN()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzW()Landroid/webkit/WebView;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzW()Landroid/webkit/WebView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
