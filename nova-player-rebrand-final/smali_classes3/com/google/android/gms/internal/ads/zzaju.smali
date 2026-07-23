.class final Lcom/google/android/gms/internal/ads/zzaju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajr;


# instance fields
.field private final zza:J

.field private final zzb:I

.field private final zzc:J

.field private final zzd:I

.field private final zze:J

.field private final zzf:J

.field private final zzg:[J


# direct methods
.method private constructor <init>(JIJIJ[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zza:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzc:J

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzd:I

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzaju;->zze:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzg:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    :goto_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzf:J

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzajt;J)Lcom/google/android/gms/internal/ads/zzaju;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzajt;->zzb()J

    move-result-wide v4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzafr;

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzc:J

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzf:[J

    move-object p0, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzafr;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzafr;->zzf:I

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzaju;-><init>(JIJIJ[J)V

    return-object v0
.end method

.method private final zzh(I)J
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzc:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzg:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzb()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zza:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzafz;

    int-to-long v5, v0

    add-long/2addr p1, v5

    invoke-direct {v4, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    .line 2
    invoke-direct {v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v3

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzc:J

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v5

    long-to-double v2, v3

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v2, v0, v5

    if-ltz v2, :cond_2

    move-wide v2, v7

    goto :goto_1

    :cond_2
    double-to-int v2, v0

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzg:[J

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v6, 0x63

    if-ne v2, v6, :cond_3

    move-wide v9, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v2, 0x1

    .line 7
    aget-wide v9, v3, v6

    long-to-double v9, v9

    :goto_0
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v9, v4

    mul-double/2addr v0, v9

    add-double v2, v4, v0

    :goto_1
    div-double/2addr v2, v7

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zze:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:I

    long-to-double v5, v0

    mul-double/2addr v2, v5

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    add-long/2addr v0, v5

    .line 9
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    int-to-long v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaju;->zza:J

    add-long/2addr v2, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafz;

    .line 10
    invoke-direct {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    .line 11
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v0
.end method

.method public final zze(J)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzb()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zza:J

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzb:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzg:[J

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double p1, p1

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zze:J

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v3

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaju;->zzh(I)J

    move-result-wide v2

    .line 3
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzaju;->zzh(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    .line 4
    :cond_1
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double/2addr p1, v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final zzf()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzf:J

    return-wide v0
.end method

.method public final zzg()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzd:I

    return v0
.end method
