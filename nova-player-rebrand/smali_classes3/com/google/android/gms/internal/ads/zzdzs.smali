.class final Lcom/google/android/gms/internal/ads/zzdzs;
.super Lcom/google/android/gms/ads/internal/client/zzbj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzt;Lcom/google/android/gms/internal/ads/zzdzm;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzm;->zzi(J)V

    return-void
.end method

.method public final zzc(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzm;->zzf(JI)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzm;->zzf(JI)V

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzm;->zze(J)V

    return-void
.end method

.method public final zzg()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzm;->zzg(J)V

    return-void
.end method

.method public final zzh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:Lcom/google/android/gms/internal/ads/zzdzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzt;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzm;->zzh(J)V

    return-void
.end method

.method public final zzi()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzj()V
    .locals 0

    .line 0
    return-void
.end method
