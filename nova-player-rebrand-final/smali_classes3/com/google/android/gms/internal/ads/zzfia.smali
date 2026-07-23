.class final Lcom/google/android/gms/internal/ads/zzfia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzese;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoo;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfid;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfie;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfid;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfia;->zza:Lcom/google/android/gms/internal/ads/zzese;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzd:Lcom/google/android/gms/internal/ads/zzfid;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zze:Lcom/google/android/gms/internal/ads/zzfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Rewarded ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfia;->zze:Lcom/google/android/gms/internal/ads/zzfie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzh()Lcom/google/android/gms/internal/ads/zzfgj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfgj;->zzd()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdue;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzekl;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdue;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 5
    :goto_0
    monitor-enter v0

    if-eqz v1, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdue;->zze()Lcom/google/android/gms/internal/ads/zzdbh;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbh;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfhz;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzfhz;-><init>(Lcom/google/android/gms/internal/ads/zzfia;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzg()Lcom/google/android/gms/internal/ads/zzfhv;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfhv;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzd:Lcom/google/android/gms/internal/ads/zzfid;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfie;->zze(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdud;->zza()Lcom/google/android/gms/internal/ads/zzdue;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdue;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzd()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdgu;->zzo()V

    .line 15
    :goto_1
    iget v1, v2, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "RewardedAdLoader.onFailure"

    invoke-static {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzfkh;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zza:Lcom/google/android/gms/internal/ads/zzese;

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzese;->zza()V

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoo;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 21
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzi()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 18
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfoe;->zzm()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfor;->zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V

    .line 23
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfia;->zze:Lcom/google/android/gms/internal/ads/zzfie;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtz;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzq()Lcom/google/android/gms/internal/ads/zzdev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzg()Lcom/google/android/gms/internal/ads/zzfhv;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdev;->zzd(Lcom/google/android/gms/internal/ads/zzfhv;)Lcom/google/android/gms/internal/ads/zzdev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zza:Lcom/google/android/gms/internal/ads/zzese;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzese;->zzb(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzg()Lcom/google/android/gms/internal/ads/zzfhv;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfhy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzfhy;-><init>(Lcom/google/android/gms/internal/ads/zzfhv;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzg()Lcom/google/android/gms/internal/ads/zzfhv;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfhv;->onAdMetadataChanged()V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzr()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zze(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 16
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfie;->zzi()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfia;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzr()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfoe;->zzg(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 11
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzm()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfor;->zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V

    .line 18
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
