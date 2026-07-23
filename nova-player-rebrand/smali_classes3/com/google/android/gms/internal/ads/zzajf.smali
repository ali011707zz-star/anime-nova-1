.class final Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaei;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:J

.field private final zzd:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;JIJJ)V
    .locals 12

    move/from16 v2, p4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Landroid/util/SparseArray;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    new-array v3, v2, [I

    .line 5
    new-array v4, v2, [J

    .line 6
    new-array v5, v2, [J

    .line 7
    new-array v6, v2, [J

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_1

    .line 8
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaje;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v10

    aput-wide v10, v6, v8

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaje;->zzb()J

    move-result-wide v9

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, v2, -0x1

    if-ge v7, p1, :cond_2

    add-int/lit8 p1, v7, 0x1

    .line 11
    aget-wide v8, v4, p1

    aget-wide v10, v4, v7

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v3, v7

    .line 12
    aget-wide v8, v6, p1

    aget-wide v10, v6, v7

    sub-long/2addr v8, v10

    aput-wide v8, v5, v7

    move v7, p1

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_2
    if-lez v2, :cond_3

    .line 13
    aget-wide v7, v6, v2

    cmp-long v7, v7, p2

    if-ltz v7, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    add-long v7, p5, p7

    .line 14
    aget-wide v9, v4, v2

    sub-long/2addr v7, v9

    long-to-int v7, v7

    aput v7, v3, v2

    .line 15
    aget-wide v7, v6, v2

    sub-long v0, p2, v7

    aput-wide v0, v5, v2

    if-ge v2, p1, :cond_4

    const-string p1, "MatroskaExtractor"

    const-string v0, "Discarding trailing cue points with timestamps greater than total duration."

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 17
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 18
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 19
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 20
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaei;

    .line 21
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaei;-><init>([I[J[J[J)V

    .line 2
    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaei;->zzc(J)Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzafz;->zza:Lcom/google/android/gms/internal/ads/zzafz;

    .line 2
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1
.end method
