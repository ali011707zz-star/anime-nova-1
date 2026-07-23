.class public Lcom/google/android/gms/ads/internal/util/zzv;
.super Lcom/google/android/gms/ads/internal/util/zzu;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzbgd;ZLcom/google/android/gms/internal/ads/zzejf;)Lcom/google/android/gms/internal/ads/zzcjw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcla;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzbgd;ZLcom/google/android/gms/internal/ads/zzejf;)V

    return-object v0
.end method

.method public final zzf(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzv$$ExternalSyntheticApiModelOutline1;->m(Landroid/telephony/TelephonyManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline3;->m()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzjO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "offline_notification_channel"

    const-string v0, "AdMob Offline Notifications"

    invoke-static {p3, v0, p2}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 p3, 0x0

    .line 4
    invoke-static {p2, p3}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const-class p3, Landroid/app/NotificationManager;

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 6
    invoke-static {p1, p2}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final zzh(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const-string p2, "offline_notification_channel"

    .line 2
    invoke-static {p1, p2}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzv$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method public final zzi(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
