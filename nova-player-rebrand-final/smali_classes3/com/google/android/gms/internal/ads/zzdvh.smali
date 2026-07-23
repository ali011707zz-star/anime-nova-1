.class public final Lcom/google/android/gms/internal/ads/zzdvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfyv;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfyv;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdz;->zzg(Lcom/google/android/gms/internal/ads/zzdvh;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrt;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zzb(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfyv;->zzg()V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfyv;->zze()V

    return-void
.end method

.method public final zze(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzf(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzg(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zzf()V

    return v0
.end method
