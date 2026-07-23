.class final Lcom/google/android/gms/internal/ads/zzajm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajr;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzb:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzc:J

    return-void
.end method

.method public static zzd(JLcom/google/android/gms/internal/ads/zzaiq;J)Lcom/google/android/gms/internal/ads/zzajm;
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:[I

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [J

    .line 2
    new-array v2, v2, [J

    const/4 v4, 0x0

    .line 3
    aput-wide p0, v3, v4

    const-wide/16 v5, 0x0

    .line 4
    aput-wide v5, v2, v4

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v1, :cond_0

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:I

    add-int/lit8 v8, v4, -0x1

    .line 5
    aget v9, v0, v8

    add-int/2addr v7, v9

    int-to-long v9, v7

    add-long/2addr p0, v9

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:I

    iget-object v9, p2, Lcom/google/android/gms/internal/ads/zzaiq;->zze:[I

    .line 6
    aget v8, v9, v8

    add-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 7
    aput-wide p0, v3, v4

    .line 8
    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzajm;

    .line 9
    invoke-direct {p0, v3, v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzajm;-><init>([J[JJ)V

    return-object p0
.end method

.method private static zzh(J[J[J)Landroid/util/Pair;
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result v1

    .line 2
    aget-wide v2, p2, v1

    .line 3
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    aget-wide v6, p2, v1

    .line 6
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-double v0, p0

    long-to-double v8, v2

    sub-long/2addr v6, v2

    sub-double/2addr v0, v8

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_0
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double/2addr v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzc:J

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzb:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zza:[J

    .line 3
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzh(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 4
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    .line 5
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafz;

    .line 6
    invoke-direct {v3, v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    .line 7
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v2
.end method

.method public final zze(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zza:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzb:[J

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzh(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzf()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzg()I
    .locals 1

    .line 0
    const v0, -0x7fffffff

    return v0
.end method
