.class public abstract Lcom/google/android/gms/internal/ads/zzaag;
.super Lcom/google/android/gms/internal/ads/zzaaj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zzh(Lcom/google/android/gms/internal/ads/zzaaf;[[[I[ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Landroid/util/Pair;
.end method

.method public final zzp(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaaf;

    return-void
.end method

.method public final zzq([Lcom/google/android/gms/internal/ads/zzmn;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzaak;
    .locals 18

    move-object/from16 v0, p2

    const/4 v1, 0x3

    .line 1
    new-array v2, v1, [I

    new-array v3, v1, [[Lcom/google/android/gms/internal/ads/zzbg;

    new-array v6, v1, [[[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    new-array v7, v5, [Lcom/google/android/gms/internal/ads/zzbg;

    aput-object v7, v3, v4

    new-array v5, v5, [[I

    .line 2
    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v7, v1, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 3
    aget-object v5, p1, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzmn;->zzu()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_2
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge v4, v5, :cond_9

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v5

    .line 6
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzbg;->zzc:I

    move v10, v1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_3
    if-ge v9, v1, :cond_6

    .line 7
    aget-object v15, p1, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1

    .line 8
    :goto_4
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v12, v1, :cond_2

    .line 9
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/android/gms/internal/ads/zzmn;->zzab(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 10
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 11
    :cond_2
    aget v1, v2, v9

    if-nez v1, :cond_3

    move/from16 v1, v16

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v11, v13, :cond_4

    if-ne v11, v13, :cond_5

    const/4 v12, 0x5

    if-ne v8, v12, :cond_5

    if-nez v14, :cond_5

    if-eqz v1, :cond_5

    move v10, v9

    move v13, v11

    move/from16 v14, v16

    goto :goto_6

    :cond_4
    move v14, v1

    move v10, v9

    move v13, v11

    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    if-ne v10, v1, :cond_7

    .line 12
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v1, v1, [I

    goto :goto_8

    .line 13
    :cond_7
    aget-object v1, p1, v10

    .line 14
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v9, v8, [I

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_8

    .line 15
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v12

    invoke-interface {v1, v12}, Lcom/google/android/gms/internal/ads/zzmn;->zzab(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    move-object v1, v9

    .line 16
    :goto_8
    aget v8, v2, v10

    .line 17
    aget-object v9, v3, v10

    aput-object v5, v9, v8

    .line 18
    aget-object v5, v6, v10

    aput-object v1, v5, v8

    add-int/lit8 v8, v8, 0x1

    .line 19
    aput v8, v2, v10

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/16 v16, 0x1

    .line 15
    new-array v0, v1, [Lcom/google/android/gms/internal/ads/zzyn;

    new-array v5, v1, [Ljava/lang/String;

    move-object v9, v6

    new-array v6, v1, [I

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_a

    .line 20
    aget v1, v2, v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzyn;

    .line 21
    aget-object v10, v3, v4

    .line 22
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzyn;-><init>([Lcom/google/android/gms/internal/ads/zzbg;)V

    aput-object v8, v0, v4

    .line 23
    aget-object v8, v9, v4

    .line 24
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v9, v4

    .line 25
    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmn;->zzS()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 26
    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmn;->zza()I

    move-result v1

    aput v1, v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_9

    :cond_a
    move/from16 v17, v1

    aget v1, v2, v17

    new-instance v10, Lcom/google/android/gms/internal/ads/zzyn;

    aget-object v2, v3, v17

    .line 27
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzyn;-><init>([Lcom/google/android/gms/internal/ads/zzbg;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaaf;

    move-object v8, v7

    move-object v7, v0

    .line 28
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>([Ljava/lang/String;[I[Lcom/google/android/gms/internal/ads/zzyn;[I[[[ILcom/google/android/gms/internal/ads/zzyn;)V

    move-object v5, v4

    move-object v7, v8

    move-object v6, v9

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 29
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaag;->zzh(Lcom/google/android/gms/internal/ads/zzaaf;[[[I[ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v5

    .line 30
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaah;

    .line 31
    array-length v2, v1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    .line 32
    :goto_a
    array-length v5, v1

    if-ge v3, v5, :cond_c

    .line 33
    aget-object v5, v1, v3

    if-eqz v5, :cond_b

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v5

    goto :goto_b

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v5

    :goto_b
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzguc;

    .line 35
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v3, 0x0

    :goto_c
    const/4 v5, 0x2

    if-ge v3, v5, :cond_12

    .line 36
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v6

    .line 37
    aget-object v7, v2, v3

    const/4 v8, 0x0

    .line 38
    :goto_d
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge v8, v9, :cond_11

    .line 39
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v9

    const/4 v10, 0x0

    .line 40
    invoke-virtual {v4, v3, v8, v10}, Lcom/google/android/gms/internal/ads/zzaaf;->zzd(IIZ)I

    move-result v11

    if-eqz v11, :cond_d

    move/from16 v10, v16

    goto :goto_e

    :cond_d
    const/4 v10, 0x0

    .line 41
    :goto_e
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v12, v11, [I

    new-array v13, v11, [Z

    const/4 v14, 0x0

    :goto_f
    if-ge v14, v11, :cond_10

    .line 42
    invoke-virtual {v4, v3, v8, v14}, Lcom/google/android/gms/internal/ads/zzaaf;->zzc(III)I

    move-result v15

    and-int/lit8 v15, v15, 0x7

    .line 43
    aput v15, v12, v14

    const/4 v15, 0x0

    .line 44
    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_f

    .line 45
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaah;

    move-object/from16 p1, v2

    .line 46
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaah;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzbg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 47
    invoke-interface {v5, v14}, Lcom/google/android/gms/internal/ads/zzaah;->zzg(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_e

    move/from16 v2, v16

    goto :goto_11

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto :goto_10

    :cond_f
    move-object/from16 p1, v2

    const/4 v2, 0x0

    .line 48
    :goto_11
    aput-boolean v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    const/4 v5, 0x2

    goto :goto_f

    :cond_10
    move-object/from16 p1, v2

    .line 49
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-direct {v2, v9, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzbm;-><init>(Lcom/google/android/gms/internal/ads/zzbg;Z[I[Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    const/4 v5, 0x2

    goto :goto_d

    :cond_11
    move-object/from16 p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaaf;->zze()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v2

    const/4 v10, 0x0

    :goto_12
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge v10, v3, :cond_13

    .line 50
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v3

    .line 51
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v6, v5, [I

    const/4 v7, 0x0

    .line 52
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    new-array v5, v5, [Z

    .line 53
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-direct {v8, v3, v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzbm;-><init>(Lcom/google/android/gms/internal/ads/zzbg;Z[I[Z)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 54
    :cond_13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbn;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaak;

    .line 55
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzmo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzaak;-><init>([Lcom/google/android/gms/internal/ads/zzmo;[Lcom/google/android/gms/internal/ads/zzaac;Lcom/google/android/gms/internal/ads/zzbn;Ljava/lang/Object;)V

    return-object v1
.end method
