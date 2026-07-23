.class final Lcom/google/android/gms/internal/ads/zzfok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoo;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfok;->zza:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfok;->zza:Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfok;->zza:Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfok;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    :cond_0
    return-void
.end method
