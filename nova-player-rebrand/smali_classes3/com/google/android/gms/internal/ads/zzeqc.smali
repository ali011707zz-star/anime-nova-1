.class final Lcom/google/android/gms/internal/ads/zzeqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeqd;Lcom/google/android/gms/internal/ads/zzdko;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zza:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zza:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->onAdClicked()V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zza:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdko;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwg;->zze()Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza()V

    return-void
.end method
