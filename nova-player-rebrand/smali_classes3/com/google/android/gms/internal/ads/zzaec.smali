.class public final Lcom/google/android/gms/internal/ads/zzaec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:J

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    const-wide/16 p5, 0x0

    invoke-static/range {p3 .. p14}, Lcom/google/android/gms/internal/ads/zzaec;->zza(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzh:J

    return-void
.end method

.method protected static zza(JJJJJJ)J
    .locals 4

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v2, v2, p8

    if-gez v2, :cond_1

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, p2

    sub-long v0, p8, p6

    sub-long/2addr p4, p2

    long-to-float p0, p0

    long-to-float p1, v0

    long-to-float p2, p4

    div-float/2addr p1, p2

    mul-float/2addr p0, p1

    float-to-long p0, p0

    add-long p2, p6, p0

    sub-long/2addr p2, p10

    const-wide/16 p4, -0x1

    add-long/2addr p8, p4

    .line 1
    sget-object p4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const-wide/16 p4, 0x14

    div-long/2addr p0, p4

    sub-long/2addr p2, p0

    .line 2
    invoke-static {p2, p3, p8, p9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method private final zzi()V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzaec;->zza(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzh:J

    return-void
.end method


# virtual methods
.method final synthetic zzb()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:J

    return-wide v0
.end method

.method final synthetic zzc()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    return-wide v0
.end method

.method final synthetic zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    return-wide v0
.end method

.method final synthetic zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:J

    return-wide v0
.end method

.method final synthetic zzf(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaec;->zzi()V

    return-void
.end method

.method final synthetic zzg(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaec;->zzi()V

    return-void
.end method

.method final synthetic zzh()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzh:J

    return-wide v0
.end method
