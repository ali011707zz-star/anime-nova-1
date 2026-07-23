.class public abstract Lcom/google/android/gms/ads/internal/util/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;)Landroid/webkit/CookieManager;
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzbgd;ZLcom/google/android/gms/internal/ads/zzejf;)Lcom/google/android/gms/internal/ads/zzcjw;
.end method

.method public abstract zzc(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
.end method

.method public zzd(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public zzf(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p1
.end method

.method public zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public zzh(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public zzi(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package"

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public zzj(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public zzk(Landroid/media/AudioManager;)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public zzm(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    return p1
.end method
