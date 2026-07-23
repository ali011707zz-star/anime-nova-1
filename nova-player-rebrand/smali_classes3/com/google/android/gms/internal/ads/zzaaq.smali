.class public final Lcom/google/android/gms/internal/ads/zzaaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaar;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaaq;->zzb(Lcom/google/android/gms/internal/ads/zzaar;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaar;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaar;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaap;->zzc()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaap;->zza()V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzc(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaap;->zzd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaap;->zzb()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaao;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaao;-><init>(Lcom/google/android/gms/internal/ads/zzaap;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
