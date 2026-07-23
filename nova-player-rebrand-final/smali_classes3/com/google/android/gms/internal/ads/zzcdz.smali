.class public final Lcom/google/android/gms/internal/ads/zzcdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdy;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzcdw;

.field final zzb:Ljava/util/HashSet;

.field final zzc:Ljava/util/HashSet;

.field private final zzd:Ljava/lang/Object;

.field private final zze:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcdx;

.field private zzg:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzb:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzc:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzg:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdw;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdw;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zze:Lcom/google/android/gms/ads/internal/util/zzg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzf:Lcom/google/android/gms/internal/ads/zzcdx;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zze:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzm()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzbB:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzo()I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    :goto_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzg:Z

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zze:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzn(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcdo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzb:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/util/HashSet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzb:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zza()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzb()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zzm;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdw;->zze(Lcom/google/android/gms/ads/internal/client/zzm;J)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzf()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzg()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzc()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzj()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzd()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzk(Lcom/google/android/gms/common/util/Clock;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcdo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzf:Lcom/google/android/gms/internal/ads/zzcdx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzcdo;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcdz;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzl()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzg:Z

    return v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzf:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzn(Ljava/util/Set;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcdv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdw;->zzi(Ljava/util/Set;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfks;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzb:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/os/Bundle;

    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzf:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzcdw;->zzh(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "app"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzc:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    const-string v2, "slots"

    .line 11
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcdo;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdo;->zzi()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "ads"

    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Ljava/util/HashSet;)V

    return-object v1

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    throw p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
