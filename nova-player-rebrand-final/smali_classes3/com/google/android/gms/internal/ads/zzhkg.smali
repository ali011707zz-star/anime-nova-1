.class public final Lcom/google/android/gms/internal/ads/zzhkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhkg;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkf;->zza:Lcom/google/android/gms/internal/ads/zzhkf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlm;->zza(Lcom/google/android/gms/internal/ads/zzhll;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhkg;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkg;->zza:Lcom/google/android/gms/internal/ads/zzhkg;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhlh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhlh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhlk;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzhlk;-><init>(Lcom/google/android/gms/internal/ads/zzhlh;[B)V

    .line 3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhkg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkg;->zza:Lcom/google/android/gms/internal/ads/zzhkg;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzhji;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhlh;-><init>(Lcom/google/android/gms/internal/ads/zzhlk;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlh;->zza(Lcom/google/android/gms/internal/ads/zzhji;)Lcom/google/android/gms/internal/ads/zzhlh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhlk;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhlk;-><init>(Lcom/google/android/gms/internal/ads/zzhlh;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhlh;-><init>(Lcom/google/android/gms/internal/ads/zzhlk;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlh;->zzb(Lcom/google/android/gms/internal/ads/zzhjf;)Lcom/google/android/gms/internal/ads/zzhlh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhlk;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhlk;-><init>(Lcom/google/android/gms/internal/ads/zzhlh;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzhkn;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhlh;-><init>(Lcom/google/android/gms/internal/ads/zzhlk;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlh;->zzc(Lcom/google/android/gms/internal/ads/zzhkn;)Lcom/google/android/gms/internal/ads/zzhlh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhlk;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhlk;-><init>(Lcom/google/android/gms/internal/ads/zzhlh;[B)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzhkk;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhlh;-><init>(Lcom/google/android/gms/internal/ads/zzhlk;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlh;->zzd(Lcom/google/android/gms/internal/ads/zzhkk;)Lcom/google/android/gms/internal/ads/zzhlh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhlk;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhlk;-><init>(Lcom/google/android/gms/internal/ads/zzhlh;[B)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhlg;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlk;->zza(Lcom/google/android/gms/internal/ads/zzhlg;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlk;->zzb(Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzhaz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhlk;->zzc(Lcom/google/android/gms/internal/ads/zzhaz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzhlg;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzd(Lcom/google/android/gms/internal/ads/zzhlg;)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlk;->zze(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhlg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlk;->zzf(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p1

    return-object p1
.end method
