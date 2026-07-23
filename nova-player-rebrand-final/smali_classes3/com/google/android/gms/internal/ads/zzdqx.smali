.class final Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxh;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdra;Lcom/google/android/gms/internal/ads/zzdxh;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzb:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzb:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdra;->zzd()Lcom/google/android/gms/internal/ads/zzdxt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
