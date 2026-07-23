.class final Lcom/google/android/gms/ads/internal/client/zzew;
.super Lcom/google/android/gms/internal/ads/zzbqm;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzex;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzex;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzew;->zza:Lcom/google/android/gms/ads/internal/client/zzex;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzew;->zza:Lcom/google/android/gms/ads/internal/client/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzw()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzex;->zzy(Z)V

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzex;->zzz(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzx()Ljava/util/ArrayList;

    move-result-object v4

    .line 3
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzx()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzv(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    throw p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
