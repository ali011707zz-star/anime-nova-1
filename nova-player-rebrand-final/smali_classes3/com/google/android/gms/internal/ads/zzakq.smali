.class abstract Lcom/google/android/gms/internal/ads/zzakq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static varargs zza(ILcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzap;[Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzap;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {p3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    :cond_0
    if-eqz p1, :cond_3

    const-class v1, Lcom/google/android/gms/internal/ads/zzfs;

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzap;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfs;

    .line 3
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v3, v4, v0

    .line 4
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    array-length p0, p4

    :goto_1
    if-ge v0, p0, :cond_4

    .line 5
    aget-object p1, p4, v0

    .line 6
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzap;->zza()I

    move-result p0

    if-lez p0, :cond_5

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    :cond_5
    return-void
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzafn;Lcom/google/android/gms/internal/ads/zzt;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzafn;->zzb()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzafn;->zza:I

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzafn;->zzb:I

    .line 2
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_0
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzao;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const-string v3, "Skipped unknown metadata entry: "

    const/16 v4, 0xa9

    const v5, 0xffffff

    const-string v6, "TCON"

    const v7, 0x64617461

    const/4 v8, 0x1

    const-string v9, "MetadataUtil"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eq v2, v4, :cond_1c

    const/16 v4, 0xfd

    if-ne v2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const v2, 0x676e7265

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzf(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result v1

    add-int/2addr v1, v4

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaio;->zza(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzais;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    invoke-direct {v2, v6, v11, v1}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    move-object v11, v2

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_1
    const-string v1, "Failed to parse standard genre code"

    .line 22
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    const v2, 0x6469736b

    if-ne v1, v2, :cond_3

    const-string v1, "TPOS"

    .line 23
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_3
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_4

    const-string v1, "TRCK"

    .line 24
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_4
    const v2, 0x746d706f

    if-ne v1, v2, :cond_5

    const-string v1, "TBPM"

    .line 25
    invoke-static {v2, v1, p0, v8, v10}, Lcom/google/android/gms/internal/ads/zzakq;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v11

    goto/16 :goto_6

    :cond_5
    const v2, 0x6370696c

    if-ne v1, v2, :cond_6

    const-string v1, "TCMP"

    .line 26
    invoke-static {v2, v1, p0, v8, v8}, Lcom/google/android/gms/internal/ads/zzakq;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v11

    goto/16 :goto_6

    :cond_6
    const v2, 0x636f7672

    const/4 v6, 0x4

    if-ne v1, v2, :cond_b

    const-string v1, "Unrecognized cover art flags: "

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    .line 30
    sget v4, Lcom/google/android/gms/internal/ads/zzakh;->$r8$clinit:I

    and-int/2addr v3, v5

    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    const-string v4, "image/jpeg"

    goto :goto_1

    :cond_7
    const/16 v4, 0xe

    if-ne v3, v4, :cond_8

    .line 34
    const-string v3, "image/png"

    move v14, v4

    move-object v4, v3

    move v3, v14

    goto :goto_1

    :cond_8
    move-object v4, v11

    :goto_1
    if-nez v4, :cond_9

    .line 31
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 32
    :cond_9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v2, v2, -0x10

    .line 33
    new-array v1, v2, [B

    .line 34
    invoke-virtual {p0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaid;

    const/4 v3, 0x3

    invoke-direct {v2, v4, v11, v3, v1}, Lcom/google/android/gms/internal/ads/zzaid;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "Failed to parse cover art attribute"

    .line 35
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const v2, 0x61415254

    if-ne v1, v2, :cond_c

    const-string v1, "TPE2"

    .line 36
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_c
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_d

    const-string v1, "TSOT"

    .line 37
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_d
    const v2, 0x736f616c

    if-ne v1, v2, :cond_e

    const-string v1, "TSOA"

    .line 38
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_e
    const v2, 0x736f6172

    if-ne v1, v2, :cond_f

    const-string v1, "TSOP"

    .line 39
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_f
    const v2, 0x736f6161

    if-ne v1, v2, :cond_10

    const-string v1, "TSO2"

    .line 40
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_10
    const v2, 0x736f636f

    if-ne v1, v2, :cond_11

    const-string v1, "TSOC"

    .line 41
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_11
    const v2, 0x72746e67

    if-ne v1, v2, :cond_12

    const-string v1, "ITUNESADVISORY"

    .line 42
    invoke-static {v2, v1, p0, v10, v10}, Lcom/google/android/gms/internal/ads/zzakq;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v11

    goto/16 :goto_6

    :cond_12
    const v2, 0x70676170

    if-ne v1, v2, :cond_13

    const-string v1, "ITUNESGAPLESS"

    .line 43
    invoke-static {v2, v1, p0, v10, v8}, Lcom/google/android/gms/internal/ads/zzakq;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v11

    goto/16 :goto_6

    :cond_13
    const v2, 0x736f736e

    if-ne v1, v2, :cond_14

    const-string v1, "TVSHOWSORT"

    .line 44
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_14
    const v2, 0x74767368

    if-ne v1, v2, :cond_15

    const-string v1, "TVSHOW"

    .line 45
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_15
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_29

    move v3, v4

    move v5, v3

    move-object v1, v11

    move-object v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v8

    if-ge v8, v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v8

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v10

    .line 49
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    const v12, 0x6d65616e

    if-ne v10, v12, :cond_16

    add-int/lit8 v9, v9, -0xc

    .line 50
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzL(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_16
    add-int/lit8 v12, v9, -0xc

    const v13, 0x6e616d65

    if-ne v10, v13, :cond_17

    .line 51
    invoke-virtual {p0, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzL(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_17
    if-ne v10, v7, :cond_18

    move v5, v9

    :cond_18
    if-ne v10, v7, :cond_19

    move v3, v8

    .line 52
    :cond_19
    invoke-virtual {p0, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    goto :goto_2

    :cond_1a
    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2c

    if-ne v3, v4, :cond_1b

    goto/16 :goto_6

    .line 53
    :cond_1b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/16 v3, 0x10

    .line 54
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v5, v5, -0x10

    .line 55
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzL(I)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v11, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1c
    :goto_3
    and-int v2, v1, v5

    const v4, 0x636d74

    if-ne v2, v4, :cond_1e

    .line 2
    const-string v2, "Failed to parse comment attribute: "

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v4

    if-ne v4, v7, :cond_1d

    const/16 v1, 0x8

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v3, v3, -0x10

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzL(I)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaih;

    const-string v2, "und"

    invoke-direct {v11, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 7
    :cond_1d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const v4, 0x6e616d

    if-eq v2, v4, :cond_2b

    const v4, 0x74726b

    if-ne v2, v4, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const v4, 0x636f6d

    if-eq v2, v4, :cond_2a

    const v4, 0x777274

    if-ne v2, v4, :cond_20

    goto/16 :goto_4

    :cond_20
    const v4, 0x646179

    if-ne v2, v4, :cond_21

    .line 9
    const-string v2, "TDRC"

    .line 10
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_21
    const v4, 0x415254

    if-ne v2, v4, :cond_22

    const-string v2, "TPE1"

    .line 11
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_22
    const v4, 0x746f6f

    if-ne v2, v4, :cond_23

    const-string v2, "TSSE"

    .line 12
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto/16 :goto_6

    :cond_23
    const v4, 0x616c62

    if-ne v2, v4, :cond_24

    const-string v2, "TALB"

    .line 13
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    :cond_24
    const v4, 0x6c7972

    if-ne v2, v4, :cond_25

    const-string v2, "USLT"

    .line 14
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    :cond_25
    const v4, 0x67656e

    if-ne v2, v4, :cond_26

    .line 15
    invoke-static {v1, v6, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    :cond_26
    const v4, 0x677270

    if-ne v2, v4, :cond_27

    const-string v2, "TIT1"

    .line 16
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    :cond_27
    const v4, 0x6d766e

    if-ne v2, v4, :cond_28

    const-string v2, "MVNM"

    .line 17
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    :cond_28
    const v4, 0x6d7669

    if-ne v2, v4, :cond_29

    const-string v2, "MVIN"

    .line 18
    invoke-static {v1, v2, p0, v8, v10}, Lcom/google/android/gms/internal/ads/zzakq;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v11

    goto :goto_6

    .line 46
    :cond_29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzee;->zza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 8
    :cond_2a
    :goto_4
    const-string v2, "TCOM"

    .line 9
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11

    goto :goto_6

    .line 7
    :cond_2b
    :goto_5
    const-string v2, "TIT2"

    .line 8
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_2c
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return-object v11

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 57
    throw v1
.end method

.method private static zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v0, v0, -0x10

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzL(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzais;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse text attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;ZZ)Lcom/google/android/gms/internal/ads/zzain;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakq;->zzf(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 2
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzais;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaih;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "und"

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzer;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzn()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p0

    return p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    .line 9
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzais;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzais;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
