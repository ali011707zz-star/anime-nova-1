.class final Lcom/google/android/gms/internal/ads/zzaph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaef;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfg;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Lcom/google/android/gms/internal/ads/zzfg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;J)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v7, p1

    .line 3
    invoke-interface {v7, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    move v7, v3

    move-wide v8, v5

    .line 4
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v12

    .line 5
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/ads/zzapi;->zzh([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 6
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v14

    cmp-long v3, v14, v5

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Lcom/google/android/gms/internal/ads/zzfg;

    .line 9
    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/internal/ads/zzfg;->zze(J)J

    move-result-wide v14

    cmp-long v3, v14, p2

    if-lez v3, :cond_2

    cmp-long v3, v8, v5

    if-nez v3, :cond_1

    invoke-static {v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzaee;->zza(JJ)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    return-object v1

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaee;->zzc(J)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v3, v7, p2

    if-lez v3, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaee;->zzc(J)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    move v7, v3

    move-wide v8, v14

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 11
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 12
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_2

    .line 16
    :cond_6
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    if-ge v10, v11, :cond_7

    .line 18
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v14

    .line 19
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzapi;->zzh([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-eq v10, v14, :cond_8

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v10

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v14

    if-ge v14, v10, :cond_9

    .line 23
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 25
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    if-lt v10, v11, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v14

    .line 26
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzapi;->zzh([BI)I

    move-result v10

    if-eq v10, v13, :cond_b

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_b

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_b

    .line 27
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_a

    .line 32
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_2

    .line 29
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v15

    add-int/2addr v15, v10

    .line 30
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 31
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_1

    .line 11
    :cond_b
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    goto/16 :goto_0

    :cond_c
    cmp-long v4, v8, v5

    if-eqz v4, :cond_d

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 24
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzaee;->zzb(JJ)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    return-object v1

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaee;->zza:Lcom/google/android/gms/internal/ads/zzaee;

    return-object v1
.end method

.method public final zzb()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    .line 2
    array-length v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    return-void
.end method
