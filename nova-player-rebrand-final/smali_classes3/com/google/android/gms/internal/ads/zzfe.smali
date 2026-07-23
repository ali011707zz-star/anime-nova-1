.class final Lcom/google/android/gms/internal/ads/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdx;


# static fields
.field private static final zza:Ljava/util/List;


# instance fields
.field private final zzb:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzfd;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zza:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzq()Lcom/google/android/gms/internal/ads/zzfd;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zza:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfd;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzdw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfe;->zzq()Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfd;

    return-object v1
.end method

.method public final zzd(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfe;->zzq()Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfd;

    return-object v1
.end method

.method public final zze(III)Lcom/google/android/gms/internal/ads/zzdw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfe;->zzq()Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfd;

    return-object v1
.end method

.method public final zzf(IIILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdw;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfe;->zzq()Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object p2

    const/16 p3, 0x1f

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, v0, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfd;

    return-object p2
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzdw;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc(Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public final zzh(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final zzi(II)Z
    .locals 2

    int-to-long v0, p2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final zzj(IJ)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final zzk(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final zzl(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Runnable;J)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method
