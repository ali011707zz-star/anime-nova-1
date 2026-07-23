.class public abstract Lcom/google/android/gms/internal/ads/zzaek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:I

.field private final zzd:J

.field private final zze:I

.field private final zzf:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:J

    const/4 p7, -0x1

    if-ne p6, p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_1

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:J

    return-void

    :cond_1
    sub-long p6, p1, p3

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:J

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzaek;->zze(JJI)J

    move-result-wide p1

    goto :goto_0
.end method

.method private static zze(JJI)J
    .locals 2

    const-wide/16 v0, 0x0

    sub-long/2addr p0, p2

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 p2, 0x7a1200

    mul-long/2addr p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    int-to-long v5, v5

    mul-long/2addr v5, p1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    const-wide/32 v8, 0x7a1200

    div-long/2addr v5, v8

    int-to-long v7, v7

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    if-eqz v2, :cond_0

    sub-long/2addr v0, v7

    .line 2
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3
    :cond_0
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:J

    add-long/2addr v3, v0

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaek;->zzd(J)J

    move-result-wide v0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzafz;

    .line 5
    invoke-direct {v5, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    if-eqz v2, :cond_2

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    add-long/2addr v3, v7

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zza:J

    cmp-long p1, v3, p1

    if-ltz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaek;->zzd(J)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    .line 8
    invoke-direct {v0, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    .line 9
    invoke-direct {p1, v5, v0}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1

    .line 5
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    .line 6
    invoke-direct {p1, v5, v5}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1

    .line 9
    :cond_3
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafz;

    .line 10
    invoke-direct {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    .line 11
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v0
.end method

.method public final zzd(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaek;->zze(JJI)J

    move-result-wide p1

    return-wide p1
.end method
