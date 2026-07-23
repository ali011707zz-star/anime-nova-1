.class final Lcom/google/android/gms/internal/ads/zzajs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajr;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J

.field private final zzd:J

.field private final zze:I


# direct methods
.method private constructor <init>([J[JJJJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:[J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzd:J

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    return-void
.end method

.method public static zzd(JJLcom/google/android/gms/internal/ads/zzafr;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzajs;
    .locals 25

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    .line 1
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzafr;->zzc:I

    int-to-long v5, v5

    int-to-long v7, v4

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzafr;->zzd:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzafr;->zzg:I

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v12, v10

    const-wide/16 v10, -0x1

    add-long/2addr v12, v10

    .line 4
    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide v17

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v4

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v9

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v12

    const/4 v13, 0x2

    .line 8
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzafr;->zzc:I

    int-to-long v14, v14

    add-long v14, p2, v14

    move-wide/from16 v19, v14

    new-array v15, v4, [J

    new-array v14, v4, [J

    const/16 v16, 0x0

    move-wide/from16 v21, v10

    move/from16 v13, v16

    move-wide/from16 v10, v19

    :goto_0
    if-ge v13, v4, :cond_5

    move-wide/from16 v19, v5

    int-to-long v5, v13

    mul-long v5, v5, v17

    move-wide/from16 v23, v5

    int-to-long v5, v4

    .line 9
    div-long v5, v23, v5

    aput-wide v5, v15, v13

    .line 10
    aput-wide v10, v14, v13

    const/4 v5, 0x1

    if-eq v12, v5, :cond_4

    const/4 v5, 0x2

    if-eq v12, v5, :cond_3

    const/4 v6, 0x3

    if-eq v12, v6, :cond_2

    const/4 v6, 0x4

    if-eq v12, v6, :cond_1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v6

    :goto_2
    move/from16 v16, v4

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v6

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v6

    goto :goto_2

    :goto_3
    int-to-long v3, v9

    int-to-long v5, v6

    mul-long/2addr v5, v3

    add-long/2addr v10, v5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p5

    move/from16 v4, v16

    move-wide/from16 v5, v19

    goto :goto_0

    :cond_5
    move-wide/from16 v19, v5

    add-long v19, p2, v19

    add-long v7, v19, v7

    cmp-long v3, v0, v21

    const-string v4, "VbriSeeker"

    const-string v5, ", "

    if-eqz v3, :cond_6

    cmp-long v3, v0, v7

    if-eqz v3, :cond_6

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v3, v6

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    cmp-long v0, v7, v10

    if-eqz v0, :cond_7

    .line 16
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nSeeking will be inaccurate."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :cond_7
    move-wide/from16 v21, v7

    move-object/from16 v16, v14

    new-instance v14, Lcom/google/android/gms/internal/ads/zzajs;

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzafr;->zzf:I

    move/from16 v23, v0

    invoke-direct/range {v14 .. v23}, Lcom/google/android/gms/internal/ads/zzajs;-><init>([J[JJJJI)V

    return-object v14
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafz;

    .line 2
    aget-wide v4, v0, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:[J

    aget-wide v7, v6, v2

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzafz;->zzb:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafz;

    .line 4
    aget-wide v4, v0, v2

    aget-wide v0, v6, v2

    invoke-direct {p1, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzafw;

    .line 5
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p2

    .line 2
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    .line 3
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1
.end method

.method public final zze(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zza:[J

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result p1

    aget-wide p1, v1, p1

    return-wide p1
.end method

.method public final zzf()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzd:J

    return-wide v0
.end method

.method public final zzg()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    return v0
.end method
