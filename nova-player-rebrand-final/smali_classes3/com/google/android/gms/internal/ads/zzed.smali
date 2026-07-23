.class public final Lcom/google/android/gms/internal/ads/zzed;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/Thread;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdz;

.field private final zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 7

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 7

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzed;->zza:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzed;->zzc:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzg:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zze:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzf:Ljava/util/ArrayDeque;

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzec;-><init>(Lcom/google/android/gms/internal/ads/zzed;)V

    .line 6
    invoke-interface {p4, p2, p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzed;->zzi:Z

    return-void
.end method

.method private final zzi()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zza:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;)Lcom/google/android/gms/internal/ads/zzed;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzed;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdz;Z)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzh:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzea;

    .line 2
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzea;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzea;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzed;->zzc:Lcom/google/android/gms/internal/ads/zzdz;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzc(Lcom/google/android/gms/internal/ads/zzdz;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzdy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeb;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeb;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzf:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzf:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzc:Lcom/google/android/gms/internal/ads/zzdz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(I)Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v2

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Lcom/google/android/gms/internal/ads/zzdw;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zze:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v2, :cond_2

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzh:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzea;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzed;->zzc:Lcom/google/android/gms/internal/ads/zzdz;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzc(Lcom/google/android/gms/internal/ads/zzdz;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzg(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzi:Z

    return-void
.end method

.method final synthetic zzh(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzc:Lcom/google/android/gms/internal/ads/zzdz;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzed;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzea;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Lcom/google/android/gms/internal/ads/zzdz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzed;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v2
.end method
