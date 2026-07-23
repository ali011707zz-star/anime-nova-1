.class final Lcom/google/android/gms/internal/ads/zzesj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzese;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoo;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdmq;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzesm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzesm;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzdmq;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzese;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzd:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zze:Lcom/google/android/gms/internal/ads/zzesm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

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

    const-string v0, "Native ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzd:Lcom/google/android/gms/internal/ads/zzdmq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzb()Lcom/google/android/gms/internal/ads/zzdbh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbh;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zze:Lcom/google/android/gms/internal/ads/zzesm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zze()Lcom/google/android/gms/internal/ads/zzcma;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzesh;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzesh;-><init>(Lcom/google/android/gms/internal/ads/zzesj;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget v2, v1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "NativeAdLoader.onFailure"

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfkh;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzese;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzese;->zza()V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zzg()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 11
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzm()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfor;->zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zze:Lcom/google/android/gms/internal/ads/zzesm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwf;

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

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zzf()Lcom/google/android/gms/internal/ads/zzesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzesc;->zzc()Lcom/google/android/gms/internal/ads/zzerp;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdev;->zza(Lcom/google/android/gms/internal/ads/zzerp;)Lcom/google/android/gms/internal/ads/zzdev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzese;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzese;->zzb(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zze()Lcom/google/android/gms/internal/ads/zzcma;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzesi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzesi;-><init>(Lcom/google/android/gms/internal/ads/zzesj;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzb:Lcom/google/android/gms/internal/ads/zzfoo;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzr()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zze(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 15
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zzg()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesj;->zzc:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzr()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfoe;->zzg(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 10
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzm()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfor;->zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V

    .line 17
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
