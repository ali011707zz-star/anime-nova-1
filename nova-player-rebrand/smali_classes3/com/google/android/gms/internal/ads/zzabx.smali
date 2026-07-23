.class final Lcom/google/android/gms/internal/ads/zzabx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzado;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzacc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacc;->zzbi(Lcom/google/android/gms/internal/ads/zzacc;)Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmk;->zza()V

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacc;->zzbk()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacc;->zzbj()V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacc;->zzbk()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacc;->zzaw(II)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    .line 0
    return-void
.end method
