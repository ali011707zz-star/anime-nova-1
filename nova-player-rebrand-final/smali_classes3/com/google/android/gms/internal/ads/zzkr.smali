.class final Lcom/google/android/gms/internal/ads/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzks;

.field private final zzb:Ljava/lang/ref/WeakReference;

.field private final zzc:Ljava/util/function/IntConsumer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzks;Landroid/content/Context;[B)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:Ljava/lang/ref/WeakReference;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzkp;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Lcom/google/android/gms/internal/ads/zzkr;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Ljava/util/function/IntConsumer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzks;->zzY()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzks;->zzX()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzkq;-><init>(Lcom/google/android/gms/internal/ads/zzdx;)V

    invoke-static {p2, v0, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method final synthetic zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Ljava/util/function/IntConsumer;

    .line 2
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-void
.end method
