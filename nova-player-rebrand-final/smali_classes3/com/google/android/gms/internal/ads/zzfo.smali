.class public final Lcom/google/android/gms/internal/ads/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdx;

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    const/4 p1, 0x0

    .line 2
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Lcom/google/android/gms/internal/ads/zzdx;

    return-void
.end method

.method static synthetic zze(ZZ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zzg(ZZ)Z

    move-result p0

    return p0
.end method

.method private final zzf(ZZ)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzg(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzfo;ZZ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(Lcom/google/android/gms/internal/ads/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Lcom/google/android/gms/internal/ads/zzdx;

    const-wide/16 v2, 0x3e8

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzo(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Lcom/google/android/gms/internal/ads/zzdx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfm;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfo;Ljava/lang/Runnable;ZZ)V

    .line 4
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zzg(ZZ)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzf(ZZ)V

    return-void
.end method

.method public final zzb(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zzf(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic zzc(Ljava/lang/Runnable;ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzl(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfn;->zzb(ZZ)V

    return-void
.end method

.method final synthetic zzd(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfn;->zzb(ZZ)V

    return-void
.end method
