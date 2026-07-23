.class final Lcom/google/android/gms/internal/ads/zzaby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadp;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzuk;

.field final synthetic zzb:I

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzacc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzuk;IJ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaby;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzc:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzd:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzd:Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaby;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzc:J

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacc;->zzay(Lcom/google/android/gms/internal/ads/zzuk;IJJ)V

    return-void
.end method

.method public final zzb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzd:Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaby;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaby;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacc;->zzav(Lcom/google/android/gms/internal/ads/zzuk;IJ)V

    return-void
.end method
