.class final Lcom/google/android/gms/ads/internal/zzo;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzd(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 4
    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzc(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 7
    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "gmsg://noAdLoaded"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "#007 Could not call remote method."

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 3
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzd(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 6
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzc(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 9
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzs;->zzM(I)V

    return v3

    :cond_3
    const-string p1, "gmsg://scriptLoadFailed"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 12
    invoke-static {v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzd(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 14
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 15
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 16
    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzc(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 17
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 18
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 19
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzs;->zzM(I)V

    return v3

    :cond_6
    const-string p1, "gmsg://adResized"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzf()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 22
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 23
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->zzL(Ljava/lang/String;)I

    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->zzM(I)V

    return v3

    :cond_8
    const-string p1, "gmsg://"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzh()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzX()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zze()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 29
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 30
    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->zzV(Ljava/lang/String;)V

    return v3
.end method
