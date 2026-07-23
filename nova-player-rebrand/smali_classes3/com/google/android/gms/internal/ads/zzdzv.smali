.class final Lcom/google/android/gms/internal/ads/zzdzv;
.super Lcom/google/android/gms/internal/ads/zzcbf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzx;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zze()Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzm;->zzk(J)V

    return-void
.end method

.method public final zzf(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zze()Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzm;->zzl(JI)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zze()Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzx;->zzd()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzm;->zzl(JI)V

    return-void
.end method
