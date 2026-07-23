.class public final Lcom/google/android/gms/internal/ads/zzhkd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhkd;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkd;->zza:Lcom/google/android/gms/internal/ads/zzhkd;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhkv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhky;

    .line 2
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzhky;-><init>(Lcom/google/android/gms/internal/ads/zzhkv;[B)V

    .line 3
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhkd;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkd;->zza:Lcom/google/android/gms/internal/ads/zzhkd;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzhku;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhky;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhkv;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzhkv;-><init>(Lcom/google/android/gms/internal/ads/zzhky;[B)V

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhky;

    .line 4
    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhky;-><init>(Lcom/google/android/gms/internal/ads/zzhkv;[B)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzhla;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhky;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhkv;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzhkv;-><init>(Lcom/google/android/gms/internal/ads/zzhky;[B)V

    .line 1
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzb(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhkv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhky;

    .line 3
    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhky;-><init>(Lcom/google/android/gms/internal/ads/zzhkv;[B)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhaz;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhky;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhky;->zzb(Lcom/google/android/gms/internal/ads/zzhaz;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhky;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhky;->zzc(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
