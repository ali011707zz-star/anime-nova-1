.class public final Lcom/google/android/gms/internal/ads/zzdtz;
.super Lcom/google/android/gms/internal/ads/zzcwf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdiq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdbs;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdcz;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcxa;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcaw;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfvr;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfje;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zzn:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzdcz;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfvr;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwf;-><init>(Lcom/google/android/gms/internal/ads/zzcwe;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzn:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zze:Lcom/google/android/gms/internal/ads/zzdmc;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzf:Lcom/google/android/gms/internal/ads/zzdiq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzg:Lcom/google/android/gms/internal/ads/zzdbs;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzh:Lcom/google/android/gms/internal/ads/zzdcz;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzi:Lcom/google/android/gms/internal/ads/zzcxa;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzk:Lcom/google/android/gms/internal/ads/zzfvr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcbq;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzfir;->zzl:Lcom/google/android/gms/internal/ads/zzcas;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzcas;->zza:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcas;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 3
    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzj:Lcom/google/android/gms/internal/ads/zzcaw;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzl:Lcom/google/android/gms/internal/ads/zzfje;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzm:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzhE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzn:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdty;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdty;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public final zza(ZLandroid/app/Activity;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zze:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzm:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 6
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzdxz;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzbi:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzg:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbs;->zze()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzbj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzk:Lcom/google/android/gms/internal/ads/zzfvr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfvr;->zza(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzn:Z

    if-eqz v1, :cond_3

    .line 9
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "The rewarded ad have been showed."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzg:Lcom/google/android/gms/internal/ads/zzdbs;

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 11
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbs;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v2

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzn:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzf:Lcom/google/android/gms/internal/ads/zzdiq;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdiq;->zza()V

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzc:Landroid/content/Context;

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzg:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 14
    invoke-interface {v0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdiq;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdmb; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzg:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbs;->zzd(Lcom/google/android/gms/internal/ads/zzdmb;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzn:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcaw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzj:Lcom/google/android/gms/internal/ads/zzcaw;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzi:Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxa;->zzl()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzh:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcz;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfje;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtz;->zzl:Lcom/google/android/gms/internal/ads/zzfje;

    return-object v0
.end method
