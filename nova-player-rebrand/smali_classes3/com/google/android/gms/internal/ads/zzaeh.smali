.class public abstract Lcom/google/android/gms/internal/ads/zzaeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(JLcom/google/android/gms/internal/ads/zzer;[Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 10

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaeh;->zzc(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result v0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaeh;->zzc(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result v2

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_5

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const/16 v0, 0x8

    if-lt v2, v0, :cond_8

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    move v6, v2

    move v2, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 11
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    move v2, v8

    :cond_2
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_3

    if-eq v2, v4, :cond_4

    if-ne v2, v8, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x3

    if-ne v7, v0, :cond_3

    move v0, v1

    :goto_3
    if-ne v2, v4, :cond_6

    const v2, 0x47413934

    if-ne v6, v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    and-int/2addr v0, v1

    :cond_6
    if-eqz v0, :cond_8

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeh;->zzb(JLcom/google/android/gms/internal/ads/zzer;[Lcom/google/android/gms/internal/ads/zzagh;)V

    goto :goto_6

    .line 5
    :cond_7
    :goto_5
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    .line 14
    :cond_8
    :goto_6
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static zzb(JLcom/google/android/gms/internal/ads/zzer;[Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v4

    .line 4
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    mul-int/lit8 v12, v2, 0x3

    aget-object v8, v1, v7

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 6
    invoke-interface {v8, v0, v12}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, p0, v9

    if-eqz v9, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v6

    .line 7
    :goto_1
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    move-wide v9, p0

    .line 8
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzer;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0
.end method
