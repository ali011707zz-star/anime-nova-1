.class public final Lcom/google/android/gms/internal/ads/zzget;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/ArrayDeque;

.field private zzb:Landroid/view/MotionEvent;

.field private zzc:Lcom/google/android/gms/internal/ads/zzger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzger;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzger;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/view/MotionEvent;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Landroid/view/MotionEvent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzger;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzger;->zza(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzges;

    .line 6
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzges;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/util/Map;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const-string v1, "nv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzger;

    const-string v1, "oe"

    .line 2
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ro"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzger;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzger;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Landroid/view/MotionEvent;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
