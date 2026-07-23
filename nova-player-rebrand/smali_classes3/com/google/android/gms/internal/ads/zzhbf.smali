.class public final Lcom/google/android/gms/internal/ads/zzhbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhjr;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbf;->zza:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhjr;->zza:Lcom/google/android/gms/internal/ads/zzhjr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbf;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbf;->zzc:Z

    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbf;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhbd;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhbd;->zzd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhbd;)Lcom/google/android/gms/internal/ads/zzhbf;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbd;->zzh()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbd;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzd()V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzhbd;->zzi(Lcom/google/android/gms/internal/ads/zzhbf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbf;->zza:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhbf;->zzc:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhbf;->zzc:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhbf;->zza:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 4
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhbd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhbd;->zzg()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbe;->zzb()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v7

    if-ne v5, v7, :cond_1

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhbd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhbd;->zzg()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbe;->zzb()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v7

    if-ne v5, v7, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    move v5, v6

    goto :goto_0

    .line 5
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    .line 6
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    move-object v7, v6

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzhbd;

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zze()Lcom/google/android/gms/internal/ads/zzhbb;

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzg()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 10
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzg()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbe;->zzb()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-ne v9, v10, :cond_6

    move v9, v4

    :cond_3
    if-eqz v9, :cond_5

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v16, v9

    goto :goto_5

    .line 12
    :cond_5
    :goto_3
    sget v9, Lcom/google/android/gms/internal/ads/zzhln;->$r8$clinit:I

    move v9, v4

    :goto_4
    if-nez v9, :cond_3

    .line 13
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzhle;->zza(I)[B

    move-result-object v9

    .line 14
    aget-byte v10, v9, v4

    and-int/lit16 v10, v10, 0xff

    aget-byte v13, v9, v1

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x2

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v10, 0x18

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v10, v13

    shl-int/lit8 v13, v14, 0x8

    or-int/2addr v10, v13

    or-int/2addr v9, v10

    goto :goto_4

    .line 15
    :cond_6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzg()Lcom/google/android/gms/internal/ads/zzhbe;

    move/from16 v16, v4

    .line 16
    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 17
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzf()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzhbp;->zza()Z

    move-result v10

    if-eq v1, v10, :cond_7

    move-object v10, v6

    goto :goto_6

    :cond_7
    move-object v10, v9

    .line 19
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzf()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object v14

    .line 20
    invoke-virtual {v13, v14, v10}, Lcom/google/android/gms/internal/ads/zzhjx;->zzc(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v14

    new-instance v13, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zze()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v10

    sget-object v15, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    .line 22
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    goto :goto_7

    .line 28
    :cond_8
    sget-object v11, Lcom/google/android/gms/internal/ads/zzhbb;->zzb:Lcom/google/android/gms/internal/ads/zzhbb;

    .line 23
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v12

    goto :goto_7

    :cond_9
    sget-object v11, Lcom/google/android/gms/internal/ads/zzhbb;->zzc:Lcom/google/android/gms/internal/ads/zzhbb;

    .line 24
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v11, 0x5

    .line 25
    :goto_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzc()Z

    move-result v17

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbi;->zze()Lcom/google/android/gms/internal/ads/zzhbg;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v10, v15

    move v15, v11

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/zzhbi;-><init>(Lcom/google/android/gms/internal/ads/zzhaz;IIZZLcom/google/android/gms/internal/ads/zzhbg;[B)V

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zzc()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v7, :cond_b

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhbd;->zze()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v7

    if-ne v7, v10, :cond_a

    move-object v7, v9

    goto :goto_8

    .line 32
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Primary key is not enabled"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_b
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_c
    :goto_8
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 34
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown key status"

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move/from16 v4, v16

    .line 30
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is used twice in the keyset"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_f
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    if-eqz v7, :cond_11

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhbf;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 35
    invoke-direct {v2, v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzhbk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;[B)V

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhbk;->zzh(Lcom/google/android/gms/internal/ads/zzhbk;)Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object v1

    return-object v1

    .line 34
    :cond_11
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_12
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final synthetic zzc()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzd()V

    return-void
.end method
