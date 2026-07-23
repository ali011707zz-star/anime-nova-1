.class final Lcom/google/android/gms/internal/ads/zzapj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfg;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zza:Lcom/google/android/gms/internal/ads/zzfg;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzh:J

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzer;)J
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v3, [B

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    aget-byte v0, v2, v4

    and-int/lit16 v1, v0, 0xc4

    const/16 v3, 0x44

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    aget-byte v1, v2, v1

    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    aget-byte v3, v2, v4

    and-int/lit8 v5, v3, 0x4

    if-ne v5, v4, :cond_1

    const/4 v4, 0x5

    aget-byte v5, v2, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    const/16 v5, 0x8

    aget-byte v5, v2, v5

    const/4 v7, 0x3

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    int-to-long v8, v0

    aget-byte v0, v2, v6

    int-to-long v5, v0

    int-to-long v0, v1

    aget-byte v2, v2, v7

    int-to-long v10, v2

    int-to-long v2, v3

    const-wide/16 v12, 0xf8

    and-long/2addr v2, v12

    shr-long/2addr v2, v7

    const-wide/16 v14, 0xff

    and-long/2addr v10, v14

    shl-long/2addr v10, v4

    and-long/2addr v12, v0

    shr-long/2addr v12, v7

    const-wide/16 v16, 0x38

    and-long v16, v8, v16

    shr-long v16, v16, v7

    const-wide/16 v18, 0x3

    and-long v8, v8, v18

    and-long/2addr v5, v14

    and-long v0, v0, v18

    const/16 v4, 0x1e

    shl-long v14, v16, v4

    const/16 v4, 0x1c

    shl-long v7, v8, v4

    or-long/2addr v7, v14

    const/16 v4, 0x14

    shl-long v4, v5, v4

    or-long/2addr v4, v7

    const/16 v6, 0xf

    shl-long v6, v12, v6

    or-long/2addr v4, v6

    const/16 v6, 0xd

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    or-long/2addr v0, v10

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzaev;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    .line 2
    array-length v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzc:Z

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    return v2
.end method

.method private static final zzg([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzc:Z

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zza:Lcom/google/android/gms/internal/ads/zzfg;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zze:Z

    const/16 v1, 0x1ba

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    sub-long/2addr v8, v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    return v4

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 4
    invoke-interface {p1, v2, v7, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-lt v0, p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzg([BI)I

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v2, v0, 0x4

    .line 6
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_1

    move-wide v5, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzg:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzapj;->zze:Z

    return v7

    :cond_3
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzg:J

    cmp-long v0, v8, v5

    if-nez v0, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzf(Lcom/google/android/gms/internal/ads/zzaev;)I

    return v7

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzd:Z

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v8

    .line 9
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    return v4

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 12
    invoke-interface {p1, v2, v7, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v0

    :goto_2
    add-int/lit8 v2, v0, -0x3

    if-ge p1, v2, :cond_7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 13
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzg([BI)I

    move-result v2

    if-ne v2, v1, :cond_6

    add-int/lit8 v2, p1, 0x4

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_6

    move-wide v5, v2

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzd:Z

    return v7

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    cmp-long p2, v0, v5

    if-nez p2, :cond_9

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzf(Lcom/google/android/gms/internal/ads/zzaev;)I

    return v7

    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapj;->zza:Lcom/google/android/gms/internal/ads/zzfg;

    .line 17
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfg;->zze(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzg:J

    .line 18
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzfg;->zzf(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzh:J

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzf(Lcom/google/android/gms/internal/ads/zzaev;)I

    return v7
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapj;->zzh:J

    return-wide v0
.end method
