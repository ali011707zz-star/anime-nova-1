.class public abstract Lcom/google/android/gms/internal/ads/zzafe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzaev;Z)Lcom/google/android/gms/internal/ads/zzap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaim;->zza:Lcom/google/android/gms/internal/ads/zzaij;

    .line 1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzafp;-><init>()V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zza(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaij;I)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzap;->zza()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafd;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeq;

    const/4 v3, 0x4

    new-array v4, v3, [B

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    const/4 v5, 0x0

    .line 2
    invoke-interface {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v4

    const/4 v6, 0x7

    .line 4
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v6

    const/16 v7, 0x18

    .line 5
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    add-int/2addr v2, v3

    if-nez v6, :cond_0

    const/16 v2, 0x26

    new-array v6, v2, [B

    .line 6
    invoke-interface {v0, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafh;

    .line 7
    invoke-direct {v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzafh;-><init>([BI)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzafd;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    return v4

    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzafd;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    if-eqz v7, :cond_4

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 10
    invoke-interface {v0, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafe;->zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzafg;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzafh;->zze(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzafd;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    return v4

    :cond_1
    if-ne v6, v3, :cond_2

    .line 12
    new-instance v6, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v8

    .line 13
    invoke-interface {v0, v8, v5, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 14
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 15
    invoke-static {v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzagn;->zzb(Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzagk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagk;->zza:[Ljava/lang/String;

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagn;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v19

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    iget v13, v7, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    iget v15, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzk:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzafh;

    move-object/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzap;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzafd;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    return v4

    :cond_2
    const/4 v8, 0x6

    if-ne v6, v8, :cond_3

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v8

    .line 19
    invoke-interface {v0, v8, v5, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 20
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 21
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaia;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzap;

    .line 23
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v19

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    iget v13, v7, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    iget v15, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzafh;->zzk:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzafh;

    move-object/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzap;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzafd;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    return v4

    .line 24
    :cond_3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return v4

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzafg;
    .locals 12

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    div-int/lit8 v0, v0, 0x12

    new-array v5, v0, [J

    new-array v6, v0, [J

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    .line 7
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 8
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    goto :goto_1

    .line 4
    :cond_0
    aput-wide v8, v5, v7

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v8, 0x2

    .line 6
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-long/2addr v1, v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzafg;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzafg;-><init>([J[J)V

    return-object p0
.end method
