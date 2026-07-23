.class public final Lcom/google/android/gms/internal/ads/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdl;

.field private zzd:Ljava/lang/Object;

.field private zze:Ljava/lang/Object;

.field private zzf:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdn;Lcom/google/android/gms/internal/ads/zzdl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4, p2, v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdm;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    .line 2
    invoke-interface {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zze:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzc:Lcom/google/android/gms/internal/ads/zzdl;

    return-void
.end method

.method private final zzg(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zza()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzh(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzd:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzc:Lcom/google/android/gms/internal/ads/zzdl;

    .line 2
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgqt;Lcom/google/android/gms/internal/ads/zzgqt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zza()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzf:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzf:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdk;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzdk;-><init>(Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzgqt;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzc(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzd:Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zze:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdi;-><init>(Lcom/google/android/gms/internal/ads/zzdm;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zza()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzgqt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zze:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdm;->zze:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdj;-><init>(Lcom/google/android/gms/internal/ads/zzdm;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzf:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdm;->zzf:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
