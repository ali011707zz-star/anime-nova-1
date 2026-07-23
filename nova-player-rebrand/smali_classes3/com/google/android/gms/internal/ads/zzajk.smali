.class final Lcom/google/android/gms/internal/ads/zzajk;
.super Lcom/google/android/gms/internal/ads/zzaek;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajr;


# instance fields
.field private final zza:J

.field private final zzb:I

.field private final zzc:I

.field private final zzd:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(JJIIZ)V

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajk;->zza:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajk;->zzc:I

    const-wide/16 p1, -0x1

    cmp-long p3, v1, p1

    if-eqz p3, :cond_0

    move-wide p1, v1

    :cond_0
    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzajk;->zzd:J

    return-void
.end method


# virtual methods
.method public final zze(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaek;->zzd(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzf()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzd:J

    return-wide v0
.end method

.method public final zzg()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    return v0
.end method

.method public final zzh(J)Lcom/google/android/gms/internal/ads/zzajk;
    .locals 8

    .line 1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajk;->zza:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajk;

    const/4 v7, 0x0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(JJIIZ)V

    return-object v0
.end method
