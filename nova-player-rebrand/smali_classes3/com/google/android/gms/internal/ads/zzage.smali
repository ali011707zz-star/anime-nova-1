.class final Lcom/google/android/gms/internal/ads/zzage;
.super Lcom/google/android/gms/internal/ads/zzafj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzafy;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzagf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzagf;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzafy;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzage;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzage;->zzb:Lcom/google/android/gms/internal/ads/zzagf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzafj;-><init>(Lcom/google/android/gms/internal/ads/zzafy;)V

    return-void
.end method


# virtual methods
.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzage;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafy;->zzc(J)Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafz;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzafz;->zzb:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzage;->zzb:Lcom/google/android/gms/internal/ads/zzagf;

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzafz;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagf;->zza()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 2
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzafz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzafz;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzafz;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzafz;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagf;->zza()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {p2, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v0
.end method
