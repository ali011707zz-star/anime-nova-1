.class public final Lcom/google/android/gms/internal/ads/zzbxb;
.super Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbks;

.field private final zzc:Landroid/graphics/drawable/Drawable;

.field private final zzd:Landroid/net/Uri;

.field private final zze:D

.field private final zzf:I

.field private final zzg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbks;)V
    .locals 4

    .line 1
    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbks;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v1

    goto :goto_2

    .line 3
    :goto_1
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzc:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbks;->zzc()Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 4
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzd:Landroid/net/Uri;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbks;->zzd()D

    move-result-wide v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    :goto_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zze:D

    const/4 p1, -0x1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbks;->zze()I

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, p1

    .line 8
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzf:I

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbks;->zzf()I

    move-result p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzg:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzeO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzb:Lcom/google/android/gms/internal/ads/zzbks;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbks;->zzg()Ljava/util/Map;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->zza:Ljava/util/Map;

    return-void
.end method
