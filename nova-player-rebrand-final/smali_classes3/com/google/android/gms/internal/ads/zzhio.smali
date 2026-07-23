.class public abstract Lcom/google/android/gms/internal/ads/zzhio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhij;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhij;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhij;-><init>([J[J[J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhio;->zzb:Lcom/google/android/gms/internal/ads/zzhij;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhil;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhim;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    new-array v4, v1, [J

    fill-array-data v4, :array_4

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhim;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhil;-><init>(Lcom/google/android/gms/internal/ads/zzhim;[J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhio;->zzc:Lcom/google/android/gms/internal/ads/zzhil;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhio;->zza:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public static zza([B)[B
    .locals 8

    const/16 v0, 0x40

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    aget-byte v4, p0, v3

    and-int/lit8 v4, v4, 0xf

    add-int v6, v3, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    add-int/2addr v6, v5

    .line 2
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    move v3, p0

    :goto_1
    const/16 v4, 0x3f

    if-ge p0, v4, :cond_1

    .line 3
    aget-byte v4, v1, p0

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, p0

    add-int/lit8 v4, v3, 0x8

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v6, v4, 0x4

    sub-int/2addr v3, v6

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    move v3, v4

    goto :goto_1

    :cond_1
    aget-byte p0, v1, v4

    add-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhil;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhio;->zzc:Lcom/google/android/gms/internal/ads/zzhil;

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhil;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhin;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzhin;-><init>()V

    :goto_2
    if-ge v5, v0, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhij;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhio;->zzb:Lcom/google/android/gms/internal/ads/zzhij;

    .line 6
    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzhij;-><init>(Lcom/google/android/gms/internal/ads/zzhij;)V

    div-int/lit8 v6, v5, 0x2

    .line 7
    aget-byte v7, v1, v5

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzhio;->zzk(Lcom/google/android/gms/internal/ads/zzhij;IB)V

    .line 8
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhim;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzhim;-><init>()V

    .line 9
    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhim;->zza(Lcom/google/android/gms/internal/ads/zzhim;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhim;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    .line 10
    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhim;->zza(Lcom/google/android/gms/internal/ads/zzhim;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhim;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    .line 11
    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhim;->zza(Lcom/google/android/gms/internal/ads/zzhim;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhim;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    .line 12
    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhim;->zza(Lcom/google/android/gms/internal/ads/zzhim;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhim;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    :goto_3
    if-ge v2, v0, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhij;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhio;->zzb:Lcom/google/android/gms/internal/ads/zzhij;

    .line 13
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzhij;-><init>(Lcom/google/android/gms/internal/ads/zzhij;)V

    div-int/lit8 v5, v2, 0x2

    .line 14
    aget-byte v6, v1, v2

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzk(Lcom/google/android/gms/internal/ads/zzhij;IB)V

    .line 15
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhim;

    .line 16
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhim;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    const/16 v1, 0xa

    new-array v2, v1, [J

    .line 17
    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    new-array v3, v1, [J

    .line 18
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    new-array v4, v1, [J

    .line 19
    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    new-array p0, v1, [J

    .line 20
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    new-array v5, v1, [J

    .line 21
    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 22
    invoke-static {v5, v5, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    new-array v1, v1, [J

    .line 23
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zza:[J

    invoke-static {v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 25
    invoke-static {v1, v1, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 26
    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzc([J[J)V

    .line 27
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zzh([J)[B

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzh([J)[B

    move-result-object v1

    .line 28
    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhim;->zzb()[B

    move-result-object p0

    return-object p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "arithmetic error in scalar multiplication"

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb([B)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxe;->zzd:Lcom/google/android/gms/internal/ads/zzhxe;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/16 v0, 0x1f

    .line 5
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v2, v1

    aput-byte v2, p0, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static zzc([B[B[B)Z
    .locals 108

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/16 v3, 0x40

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x40

    .line 2
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/16 v3, 0x1f

    move v5, v3

    :goto_0
    if-ltz v5, :cond_17

    .line 3
    aget-byte v6, v2, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhio;->zza:[B

    .line 4
    aget-byte v8, v8, v5

    and-int/2addr v8, v7

    if-eq v6, v8, :cond_18

    if-ge v6, v8, :cond_17

    .line 5
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhxe;->zzd:Lcom/google/android/gms/internal/ads/zzhxe;

    const-string v6, "SHA-512"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/MessageDigest;

    const/16 v6, 0x20

    .line 6
    invoke-virtual {v5, v0, v4, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 7
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v6, p0

    .line 8
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 10
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v8

    const-wide/32 v10, 0x1fffff

    and-long/2addr v8, v10

    const/4 v6, 0x2

    .line 11
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v12

    const/4 v14, 0x5

    shr-long/2addr v12, v14

    .line 12
    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v15

    shr-long/2addr v15, v6

    move/from16 v17, v4

    const/4 v4, 0x7

    .line 13
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v18

    shr-long v18, v18, v4

    move/from16 p0, v4

    const/16 v4, 0xa

    .line 14
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v20

    const/16 v22, 0x4

    shr-long v20, v20, v22

    move/from16 v23, v6

    const/16 v6, 0xd

    .line 15
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v24

    const/4 v6, 0x1

    shr-long v24, v24, v6

    move/from16 v26, v6

    const/16 v6, 0xf

    .line 16
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v27

    const/4 v6, 0x6

    shr-long v27, v27, v6

    move/from16 v29, v6

    const/16 v6, 0x12

    .line 17
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v30

    const/4 v6, 0x3

    shr-long v30, v30, v6

    move/from16 v32, v6

    const/16 v6, 0x15

    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v33

    and-long v33, v33, v10

    move/from16 v35, v6

    const/16 v6, 0x17

    .line 19
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v36

    shr-long v36, v36, v14

    const/16 v6, 0x1a

    .line 20
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v38

    shr-long v38, v38, v23

    const/16 v6, 0x1c

    .line 21
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v40

    shr-long v40, v40, p0

    .line 22
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v42

    shr-long v42, v42, v22

    const/16 v6, 0x22

    .line 23
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v44

    shr-long v44, v44, v26

    const/16 v6, 0x24

    .line 24
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v46

    shr-long v46, v46, v29

    const/16 v6, 0x27

    .line 25
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v48

    shr-long v48, v48, v32

    const/16 v6, 0x2a

    .line 26
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v50

    and-long v50, v50, v10

    const/16 v6, 0x2c

    .line 27
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v52

    shr-long v52, v52, v14

    const/16 v6, 0x2f

    .line 28
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v54

    shr-long v54, v54, v23

    const/16 v6, 0x31

    .line 29
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v56

    and-long v54, v54, v10

    and-long v46, v46, v10

    and-long v44, v44, v10

    and-long v42, v42, v10

    and-long v40, v40, v10

    and-long v38, v38, v10

    and-long v36, v36, v10

    and-long v27, v27, v10

    and-long v24, v24, v10

    and-long v20, v20, v10

    and-long v18, v18, v10

    and-long/2addr v15, v10

    and-long/2addr v12, v10

    and-long v52, v52, v10

    shr-long v56, v56, p0

    and-long v56, v56, v10

    const/16 v6, 0x34

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v58

    shr-long v58, v58, v22

    and-long v58, v58, v10

    const/16 v6, 0x37

    .line 31
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v60

    shr-long v60, v60, v26

    and-long v60, v60, v10

    const/16 v6, 0x39

    .line 32
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v62

    shr-long v62, v62, v29

    and-long v10, v62, v10

    const/16 v6, 0x3c

    .line 33
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzo([BI)J

    move-result-wide v62

    shr-long v62, v62, v32

    const-wide/32 v64, 0xa2c13

    mul-long v66, v58, v64

    add-long v33, v33, v66

    mul-long v66, v56, v64

    add-long v30, v30, v66

    mul-long v66, v54, v64

    add-long v27, v27, v66

    const-wide/32 v66, 0x100000

    add-long v68, v27, v66

    shr-long v68, v68, v35

    shl-long v70, v68, v35

    const-wide/32 v72, 0x72d18

    mul-long v74, v56, v72

    add-long v33, v33, v74

    const-wide/32 v74, 0x9fb67

    mul-long v76, v54, v74

    add-long v33, v33, v76

    add-long v76, v33, v66

    shr-long v76, v76, v35

    shl-long v78, v76, v35

    mul-long v80, v10, v64

    add-long v38, v38, v80

    mul-long v80, v60, v72

    add-long v38, v38, v80

    mul-long v80, v58, v74

    add-long v38, v38, v80

    const-wide/32 v80, 0xf39ad

    mul-long v82, v56, v80

    sub-long v38, v38, v82

    const-wide/32 v82, 0x215d1

    mul-long v84, v54, v82

    add-long v38, v38, v84

    add-long v84, v38, v66

    shr-long v84, v84, v35

    shl-long v86, v84, v35

    mul-long v88, v62, v72

    add-long v42, v42, v88

    mul-long v88, v10, v74

    add-long v42, v42, v88

    mul-long v88, v60, v80

    sub-long v42, v42, v88

    mul-long v88, v58, v82

    add-long v42, v42, v88

    const-wide/32 v88, 0xa6f7d

    mul-long v90, v56, v88

    sub-long v42, v42, v90

    add-long v90, v42, v66

    shr-long v90, v90, v35

    shl-long v92, v90, v35

    mul-long v94, v62, v80

    sub-long v46, v46, v94

    mul-long v94, v10, v82

    add-long v46, v46, v94

    mul-long v94, v60, v88

    sub-long v46, v46, v94

    add-long v94, v46, v66

    shr-long v94, v94, v35

    shl-long v96, v94, v35

    mul-long v98, v62, v88

    sub-long v50, v50, v98

    add-long v98, v50, v66

    shr-long v98, v98, v35

    shl-long v100, v98, v35

    mul-long v102, v54, v72

    add-long v30, v30, v102

    add-long v30, v30, v68

    add-long v68, v30, v66

    shr-long v68, v68, v35

    shl-long v102, v68, v35

    mul-long v104, v60, v64

    add-long v36, v36, v104

    mul-long v104, v58, v72

    add-long v36, v36, v104

    mul-long v104, v56, v74

    add-long v36, v36, v104

    mul-long v104, v54, v80

    sub-long v36, v36, v104

    add-long v36, v36, v76

    add-long v76, v36, v66

    shr-long v76, v76, v35

    shl-long v104, v76, v35

    mul-long v106, v62, v64

    add-long v40, v40, v106

    mul-long v106, v10, v72

    add-long v40, v40, v106

    mul-long v106, v60, v74

    add-long v40, v40, v106

    mul-long v106, v58, v80

    sub-long v40, v40, v106

    mul-long v56, v56, v82

    add-long v40, v40, v56

    mul-long v54, v54, v88

    sub-long v40, v40, v54

    add-long v40, v40, v84

    add-long v54, v40, v66

    shr-long v54, v54, v35

    shl-long v56, v54, v35

    mul-long v84, v62, v74

    add-long v44, v44, v84

    mul-long v84, v10, v80

    sub-long v44, v44, v84

    mul-long v60, v60, v82

    add-long v44, v44, v60

    mul-long v58, v58, v88

    sub-long v44, v44, v58

    add-long v44, v44, v90

    add-long v58, v44, v66

    shr-long v58, v58, v35

    shl-long v60, v58, v35

    mul-long v62, v62, v82

    add-long v48, v48, v62

    mul-long v10, v10, v88

    sub-long v48, v48, v10

    add-long v48, v48, v94

    add-long v10, v48, v66

    shr-long v10, v10, v35

    shl-long v62, v10, v35

    sub-long v42, v42, v92

    add-long v42, v42, v54

    mul-long v54, v42, v64

    add-long v8, v8, v54

    add-long v54, v8, v66

    shr-long v54, v54, v35

    shl-long v84, v54, v35

    sub-long v46, v46, v96

    add-long v46, v46, v58

    mul-long v58, v46, v64

    add-long v15, v15, v58

    sub-long v44, v44, v60

    mul-long v58, v44, v72

    add-long v15, v15, v58

    mul-long v58, v42, v74

    add-long v15, v15, v58

    add-long v58, v15, v66

    shr-long v58, v58, v35

    shl-long v60, v58, v35

    sub-long v50, v50, v100

    add-long v50, v50, v10

    mul-long v10, v50, v64

    add-long v20, v20, v10

    sub-long v48, v48, v62

    mul-long v10, v48, v72

    add-long v20, v20, v10

    mul-long v10, v46, v74

    add-long v20, v20, v10

    mul-long v10, v44, v80

    sub-long v20, v20, v10

    mul-long v10, v42, v82

    add-long v20, v20, v10

    add-long v10, v20, v66

    shr-long v10, v10, v35

    shl-long v62, v10, v35

    sub-long v27, v27, v70

    add-long v52, v52, v98

    mul-long v70, v52, v72

    add-long v27, v27, v70

    mul-long v70, v50, v74

    add-long v27, v27, v70

    mul-long v70, v48, v80

    sub-long v27, v27, v70

    mul-long v70, v46, v82

    add-long v27, v27, v70

    mul-long v70, v44, v88

    sub-long v27, v27, v70

    add-long v70, v27, v66

    shr-long v70, v70, v35

    shl-long v90, v70, v35

    sub-long v33, v33, v78

    add-long v33, v33, v68

    mul-long v68, v52, v80

    sub-long v33, v33, v68

    mul-long v68, v50, v82

    add-long v33, v33, v68

    mul-long v68, v48, v88

    sub-long v33, v33, v68

    add-long v68, v33, v66

    shr-long v68, v68, v35

    shl-long v78, v68, v35

    sub-long v38, v38, v86

    add-long v38, v38, v76

    mul-long v76, v52, v88

    sub-long v38, v38, v76

    add-long v76, v38, v66

    shr-long v76, v76, v35

    shl-long v86, v76, v35

    mul-long v92, v44, v64

    add-long v12, v12, v92

    mul-long v92, v42, v72

    add-long v12, v12, v92

    add-long v12, v12, v54

    add-long v54, v12, v66

    shr-long v54, v54, v35

    shl-long v92, v54, v35

    mul-long v94, v48, v64

    add-long v18, v18, v94

    mul-long v94, v46, v72

    add-long v18, v18, v94

    mul-long v94, v44, v74

    add-long v18, v18, v94

    mul-long v94, v42, v80

    sub-long v18, v18, v94

    add-long v18, v18, v58

    add-long v58, v18, v66

    shr-long v58, v58, v35

    shl-long v94, v58, v35

    mul-long v96, v52, v64

    add-long v24, v24, v96

    mul-long v96, v50, v72

    add-long v24, v24, v96

    mul-long v96, v48, v74

    add-long v24, v24, v96

    mul-long v96, v46, v80

    sub-long v24, v24, v96

    mul-long v44, v44, v82

    add-long v24, v24, v44

    mul-long v42, v42, v88

    sub-long v24, v24, v42

    add-long v24, v24, v10

    add-long v10, v24, v66

    shr-long v10, v10, v35

    shl-long v42, v10, v35

    sub-long v30, v30, v102

    mul-long v44, v52, v74

    add-long v30, v30, v44

    mul-long v44, v50, v80

    sub-long v30, v30, v44

    mul-long v48, v48, v82

    add-long v30, v30, v48

    mul-long v46, v46, v88

    sub-long v30, v30, v46

    add-long v30, v30, v70

    add-long v44, v30, v66

    shr-long v44, v44, v35

    shl-long v46, v44, v35

    sub-long v36, v36, v104

    mul-long v52, v52, v82

    add-long v36, v36, v52

    mul-long v50, v50, v88

    sub-long v36, v36, v50

    add-long v36, v36, v68

    add-long v48, v36, v66

    shr-long v48, v48, v35

    shl-long v50, v48, v35

    sub-long v40, v40, v56

    add-long v40, v40, v76

    add-long v66, v40, v66

    shr-long v52, v66, v35

    shl-long v56, v52, v35

    sub-long v8, v8, v84

    mul-long v66, v52, v64

    add-long v8, v8, v66

    shr-long v66, v8, v35

    shl-long v68, v66, v35

    sub-long v12, v12, v92

    mul-long v70, v52, v72

    add-long v12, v12, v70

    add-long v12, v12, v66

    shr-long v66, v12, v35

    shl-long v70, v66, v35

    sub-long v15, v15, v60

    add-long v15, v15, v54

    mul-long v54, v52, v74

    add-long v15, v15, v54

    add-long v15, v15, v66

    shr-long v54, v15, v35

    shl-long v60, v54, v35

    sub-long v18, v18, v94

    mul-long v66, v52, v80

    sub-long v18, v18, v66

    add-long v18, v18, v54

    shr-long v54, v18, v35

    shl-long v66, v54, v35

    sub-long v20, v20, v62

    add-long v20, v20, v58

    mul-long v58, v52, v82

    add-long v20, v20, v58

    add-long v20, v20, v54

    shr-long v54, v20, v35

    shl-long v58, v54, v35

    sub-long v24, v24, v42

    mul-long v52, v52, v88

    sub-long v24, v24, v52

    add-long v24, v24, v54

    shr-long v42, v24, v35

    shl-long v52, v42, v35

    sub-long v27, v27, v90

    add-long v27, v27, v10

    add-long v27, v27, v42

    shr-long v10, v27, v35

    shl-long v42, v10, v35

    sub-long v30, v30, v46

    add-long v30, v30, v10

    shr-long v10, v30, v35

    shl-long v46, v10, v35

    sub-long v33, v33, v78

    add-long v33, v33, v44

    add-long v33, v33, v10

    shr-long v10, v33, v35

    shl-long v44, v10, v35

    sub-long v36, v36, v50

    add-long v36, v36, v10

    shr-long v10, v36, v35

    shl-long v50, v10, v35

    sub-long v38, v38, v86

    add-long v38, v38, v48

    add-long v38, v38, v10

    shr-long v10, v38, v35

    shl-long v48, v10, v35

    sub-long v40, v40, v56

    add-long v40, v40, v10

    shr-long v10, v40, v35

    shl-long v54, v10, v35

    sub-long v8, v8, v68

    mul-long v64, v64, v10

    add-long v8, v8, v64

    shr-long v56, v8, v35

    shl-long v62, v56, v35

    sub-long v12, v12, v70

    mul-long v72, v72, v10

    add-long v12, v12, v72

    add-long v12, v12, v56

    shr-long v56, v12, v35

    shl-long v64, v56, v35

    sub-long v15, v15, v60

    mul-long v74, v74, v10

    add-long v15, v15, v74

    add-long v15, v15, v56

    shr-long v56, v15, v35

    shl-long v60, v56, v35

    sub-long v18, v18, v66

    mul-long v80, v80, v10

    sub-long v18, v18, v80

    add-long v18, v18, v56

    shr-long v56, v18, v35

    shl-long v66, v56, v35

    sub-long v20, v20, v58

    mul-long v82, v82, v10

    add-long v20, v20, v82

    add-long v20, v20, v56

    shr-long v56, v20, v35

    shl-long v58, v56, v35

    sub-long v24, v24, v52

    mul-long v10, v10, v88

    sub-long v24, v24, v10

    add-long v24, v24, v56

    shr-long v10, v24, v35

    shl-long v52, v10, v35

    sub-long v27, v27, v42

    add-long v27, v27, v10

    shr-long v10, v27, v35

    shl-long v42, v10, v35

    sub-long v30, v30, v46

    add-long v30, v30, v10

    shr-long v10, v30, v35

    shl-long v46, v10, v35

    sub-long v33, v33, v44

    add-long v33, v33, v10

    shr-long v10, v33, v35

    shl-long v44, v10, v35

    sub-long v36, v36, v50

    add-long v36, v36, v10

    shr-long v10, v36, v35

    shl-long v50, v10, v35

    sub-long v38, v38, v48

    add-long v38, v38, v10

    shr-long v10, v38, v35

    shl-long v48, v10, v35

    sub-long v8, v8, v62

    long-to-int v6, v8

    int-to-byte v6, v6

    .line 34
    aput-byte v6, v5, v17

    sub-long v30, v30, v46

    sub-long v27, v27, v42

    sub-long v24, v24, v52

    sub-long v20, v20, v58

    sub-long v18, v18, v66

    sub-long v15, v15, v60

    sub-long v12, v12, v64

    const/16 v43, 0x8

    shr-long v6, v8, v43

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 35
    aput-byte v6, v5, v26

    const/16 v6, 0x10

    shr-long v6, v8, v6

    shl-long v8, v12, v14

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 36
    aput-byte v6, v5, v23

    shr-long v6, v12, v32

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 37
    aput-byte v6, v5, v32

    const/16 v6, 0xb

    shr-long v6, v12, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 38
    aput-byte v6, v5, v22

    const/16 v6, 0x13

    shr-long v6, v12, v6

    shl-long v8, v15, v23

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 39
    aput-byte v6, v5, v14

    shr-long v6, v15, v29

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 40
    aput-byte v6, v5, v29

    const/16 v6, 0xe

    shr-long v6, v15, v6

    shl-long v8, v18, p0

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 41
    aput-byte v6, v5, p0

    shr-long v6, v18, v26

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 42
    aput-byte v6, v5, v43

    const/16 v6, 0x9

    shr-long v6, v18, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x9

    .line 43
    aput-byte v6, v5, v7

    const/16 v6, 0x11

    shr-long v6, v18, v6

    shl-long v8, v20, v22

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 44
    aput-byte v6, v5, v4

    shr-long v6, v20, v22

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xb

    .line 45
    aput-byte v6, v5, v7

    const/16 v6, 0xc

    shr-long v6, v20, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xc

    .line 46
    aput-byte v6, v5, v7

    const/16 v6, 0x14

    shr-long v6, v20, v6

    add-long v8, v24, v24

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xd

    .line 47
    aput-byte v6, v5, v7

    shr-long v6, v24, p0

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xe

    .line 48
    aput-byte v6, v5, v7

    const/16 v6, 0xf

    shr-long v6, v24, v6

    shl-long v8, v27, v29

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xf

    .line 49
    aput-byte v6, v5, v7

    shr-long v6, v27, v23

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x10

    .line 50
    aput-byte v6, v5, v7

    shr-long v6, v27, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x11

    .line 51
    aput-byte v6, v5, v7

    const/16 v6, 0x12

    shr-long v6, v27, v6

    shl-long v8, v30, v32

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x12

    .line 52
    aput-byte v6, v5, v7

    sub-long v40, v40, v54

    sub-long v38, v38, v48

    add-long v40, v40, v10

    sub-long v36, v36, v50

    sub-long v6, v33, v44

    shr-long v8, v30, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x13

    .line 53
    aput-byte v8, v5, v9

    const/16 v8, 0xd

    shr-long v8, v30, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x14

    .line 54
    aput-byte v8, v5, v9

    long-to-int v8, v6

    int-to-byte v8, v8

    .line 55
    aput-byte v8, v5, v35

    shr-long v8, v6, v43

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x16

    .line 56
    aput-byte v8, v5, v9

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    shl-long v8, v36, v14

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x17

    .line 57
    aput-byte v6, v5, v7

    shr-long v6, v36, v32

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x18

    .line 58
    aput-byte v6, v5, v7

    const/16 v6, 0xb

    shr-long v6, v36, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x19

    .line 59
    aput-byte v6, v5, v7

    const/16 v6, 0x13

    shr-long v6, v36, v6

    shl-long v8, v38, v23

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x1a

    .line 60
    aput-byte v6, v5, v7

    shr-long v6, v38, v29

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x1b

    .line 61
    aput-byte v6, v5, v7

    const/16 v6, 0xe

    shr-long v6, v38, v6

    shl-long v8, v40, p0

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x1c

    .line 62
    aput-byte v6, v5, v7

    shr-long v6, v40, v26

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x1d

    .line 63
    aput-byte v6, v5, v7

    const/16 v6, 0x9

    shr-long v6, v40, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x1e

    .line 64
    aput-byte v6, v5, v7

    const/16 v6, 0x11

    shr-long v6, v40, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 65
    aput-byte v6, v5, v3

    new-array v6, v4, [J

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v7

    new-array v8, v4, [J

    const-wide/16 v9, 0x1

    aput-wide v9, v8, v17

    new-array v9, v4, [J

    new-array v10, v4, [J

    new-array v11, v4, [J

    new-array v12, v4, [J

    new-array v13, v4, [J

    .line 67
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 68
    sget-object v15, Lcom/google/android/gms/internal/ads/zzhiq;->zza:[J

    invoke-static {v11, v10, v15}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 69
    invoke-static {v10, v10, v8}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 70
    invoke-static {v11, v11, v8}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    new-array v15, v4, [J

    .line 71
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 72
    invoke-static {v15, v15, v11}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 73
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 74
    invoke-static {v6, v6, v11}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 75
    invoke-static {v6, v6, v10}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    move/from16 v16, v3

    new-array v3, v4, [J

    new-array v14, v4, [J

    new-array v0, v4, [J

    .line 76
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 77
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 78
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 79
    invoke-static {v14, v6, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 80
    invoke-static {v3, v3, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 81
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 82
    invoke-static {v3, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 83
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v4, v26

    const/4 v1, 0x5

    :goto_1
    if-ge v4, v1, :cond_1

    .line 84
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-static {v3, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 86
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v1, v26

    :goto_2
    const/16 v4, 0xa

    if-ge v1, v4, :cond_2

    .line 87
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 88
    :cond_2
    invoke-static {v14, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 89
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v1, v26

    :goto_3
    const/16 v4, 0x14

    if-ge v1, v4, :cond_3

    .line 90
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 91
    :cond_3
    invoke-static {v14, v0, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 92
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v1, v26

    :goto_4
    const/16 v4, 0xa

    if-ge v1, v4, :cond_4

    .line 93
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 94
    :cond_4
    invoke-static {v3, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 95
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v1, v26

    :goto_5
    const/16 v4, 0x32

    if-ge v1, v4, :cond_5

    .line 96
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 97
    :cond_5
    invoke-static {v14, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 98
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v1, v26

    :goto_6
    const/16 v4, 0x64

    if-ge v1, v4, :cond_6

    .line 99
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 100
    :cond_6
    invoke-static {v14, v0, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 101
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    move/from16 v0, v26

    :goto_7
    const/16 v1, 0x32

    if-ge v0, v1, :cond_7

    .line 102
    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 103
    :cond_7
    invoke-static {v3, v14, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 104
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 105
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 106
    invoke-static {v6, v3, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 107
    invoke-static {v6, v6, v15}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 108
    invoke-static {v6, v6, v10}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 109
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 110
    invoke-static {v12, v12, v11}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 111
    invoke-static {v13, v12, v10}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 112
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzhio;->zze([J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 113
    invoke-static {v13, v12, v10}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 114
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzhio;->zze([J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zzc:[J

    .line 116
    invoke-static {v6, v6, v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    goto :goto_8

    .line 115
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_9
    :goto_8
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhio;->zze([J)Z

    move-result v0

    if-nez v0, :cond_b

    aget-byte v0, p2, v16

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_a

    goto :goto_9

    .line 142
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x\'s least significant bit is not zero"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v1, 0xff

    .line 118
    :goto_9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzf([J)I

    move-result v0

    aget-byte v3, p2, v16

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x7

    if-ne v0, v3, :cond_c

    .line 119
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzhio;->zzm([J[J)V

    .line 120
    :cond_c
    invoke-static {v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhin;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhim;

    .line 121
    invoke-direct {v3, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzhim;-><init>([J[J[J)V

    invoke-direct {v0, v3, v9}, Lcom/google/android/gms/internal/ads/zzhin;-><init>(Lcom/google/android/gms/internal/ads/zzhim;[J)V

    move/from16 v3, v43

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzhik;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhik;

    .line 122
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzhik;-><init>(Lcom/google/android/gms/internal/ads/zzhin;)V

    aput-object v3, v4, v17

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhil;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzhim;

    .line 123
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzhim;-><init>()V

    const/16 v7, 0xa

    new-array v7, v7, [J

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzhil;-><init>(Lcom/google/android/gms/internal/ads/zzhim;[J)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhin;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    .line 124
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhin;

    .line 125
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhin;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    move/from16 v6, v26

    const/16 v7, 0x8

    :goto_a
    if-ge v6, v7, :cond_d

    add-int/lit8 v8, v6, -0x1

    .line 126
    aget-object v8, v4, v8

    invoke-static {v3, v0, v8}, Lcom/google/android/gms/internal/ads/zzhio;->zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhik;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhin;

    .line 127
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzhin;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhik;-><init>(Lcom/google/android/gms/internal/ads/zzhin;)V

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 128
    :cond_d
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhio;->zzl([B)[B

    move-result-object v0

    .line 129
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhio;->zzl([B)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhil;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhio;->zzc:Lcom/google/android/gms/internal/ads/zzhil;

    .line 130
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzhil;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhin;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzhin;-><init>()V

    move v7, v1

    :goto_b
    if-ltz v7, :cond_f

    .line 131
    aget-byte v1, v0, v7

    if-nez v1, :cond_f

    aget-byte v1, v2, v7

    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_f
    :goto_c
    if-ltz v7, :cond_14

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhim;

    .line 132
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzhim;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzhio;->zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V

    .line 133
    aget-byte v1, v0, v7

    if-lez v1, :cond_10

    .line 134
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    aget-byte v1, v0, v7

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v4, v1

    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzhio;->zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    goto :goto_d

    :cond_10
    if-gez v1, :cond_11

    .line 135
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    aget-byte v1, v0, v7

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v4, v1

    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzhio;->zzh(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    .line 136
    :cond_11
    :goto_d
    aget-byte v1, v2, v7

    if-lez v1, :cond_12

    .line 137
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhiq;->zze:[Lcom/google/android/gms/internal/ads/zzhij;

    aget-byte v6, v2, v7

    div-int/lit8 v6, v6, 0x2

    aget-object v1, v1, v6

    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzhio;->zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    goto :goto_e

    :cond_12
    if-gez v1, :cond_13

    .line 138
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhil;)Lcom/google/android/gms/internal/ads/zzhin;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhiq;->zze:[Lcom/google/android/gms/internal/ads/zzhij;

    aget-byte v6, v2, v7

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    aget-object v1, v1, v6

    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzhio;->zzh(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V

    :cond_13
    :goto_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 135
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhim;

    .line 139
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhim;-><init>(Lcom/google/android/gms/internal/ads/zzhil;)V

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhim;->zzb()[B

    move-result-object v0

    move/from16 v1, v17

    :goto_f
    const/16 v2, 0x20

    if-ge v1, v2, :cond_16

    .line 141
    aget-byte v2, v0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_15

    return v17

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_16
    return v26

    :cond_17
    move/from16 v17, v4

    goto :goto_10

    :cond_18
    move-object/from16 v6, p0

    move/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_0

    :goto_10
    return v17
.end method

.method public static zzd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zza:[J

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not initialize Ed25519."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zze([J)Z
    .locals 3

    const/16 v0, 0xb

    .line 1
    new-array v0, v0, [J

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzd([J)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzh([J)[B

    move-result-object p0

    move v0, v2

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 4
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic zzf([J)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzh([J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhin;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    const/16 v2, 0xa

    new-array v2, v2, [J

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    .line 2
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 3
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zzb:[J

    invoke-static {v6, v6, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 4
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zza:[J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhin;->zzb:[J

    .line 5
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zzc:[J

    invoke-static {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    .line 6
    invoke-virtual {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhij;->zza([J[J)V

    .line 7
    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 8
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 9
    invoke-static {v6, v1, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 10
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 11
    invoke-static {p0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhin;Lcom/google/android/gms/internal/ads/zzhij;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhin;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    const/16 v2, 0xa

    new-array v2, v2, [J

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    .line 2
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 3
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zza:[J

    invoke-static {v6, v6, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    .line 4
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zzb:[J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhin;->zzb:[J

    .line 5
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhij;->zzc:[J

    invoke-static {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zze([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    .line 6
    invoke-virtual {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhij;->zza([J[J)V

    .line 7
    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 8
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 9
    invoke-static {v6, v1, v6}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 10
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 11
    invoke-static {p0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    return-void
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhil;Lcom/google/android/gms/internal/ads/zzhim;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhim;->zza:[J

    const/16 v3, 0xa

    new-array v3, v3, [J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhim;->zzc:[J

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 4
    invoke-static {p0, p0, p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhim;->zzb:[J

    .line 5
    invoke-static {p1, v2, v5}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 6
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzf([J[J)V

    .line 7
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzhiv;->zza([J[J[J)V

    .line 8
    invoke-static {v4, v4, v1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 9
    invoke-static {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    .line 10
    invoke-static {p0, p0, v4}, Lcom/google/android/gms/internal/ads/zzhiv;->zzb([J[J[J)V

    return-void
.end method

.method private static zzj(II)I
    .locals 0

    .line 0
    xor-int/2addr p0, p1

    not-int p0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    add-int p1, p0, p0

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhij;IB)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zzd:[[Lcom/google/android/gms/internal/ads/zzhij;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    and-int/lit16 v2, p2, 0xff

    const/4 v3, 0x7

    shr-int/2addr v2, v3

    neg-int v4, v2

    and-int/2addr v4, p2

    add-int/2addr v4, v4

    sub-int/2addr p2, v4

    const/4 v4, 0x1

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 2
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x2

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 3
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 4
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x4

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 5
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x5

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 6
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 7
    aget-object v1, v0, p1

    aget-object v1, v1, v4

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    .line 8
    aget-object p1, v0, p1

    aget-object p1, p1, v3

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhio;->zzj(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhij;->zzc:[J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhij;->zza:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhij;->zzb:[J

    const/16 v1, 0xa

    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 10
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    .line 11
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 12
    invoke-static {p1, p1}, Lcom/google/android/gms/internal/ads/zzhio;->zzm([J[J)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhij;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhij;-><init>([J[J[J)V

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhij;->zzb(Lcom/google/android/gms/internal/ads/zzhij;I)V

    return-void
.end method

.method private static zzl([B)[B
    .locals 10

    const/16 v0, 0x100

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v3, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_1
    if-ge p0, v0, :cond_5

    .line 2
    aget-byte v3, v1, p0

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    const/4 v5, 0x6

    if-gt v3, v5, :cond_4

    add-int v5, p0, v3

    if-ge v5, v0, :cond_4

    .line 3
    aget-byte v6, v1, v5

    if-eqz v6, :cond_3

    .line 4
    aget-byte v7, v1, p0

    shl-int/2addr v6, v3

    add-int v8, v7, v6

    const/16 v9, 0xf

    if-gt v8, v9, :cond_1

    int-to-byte v6, v8

    .line 5
    aput-byte v6, v1, p0

    .line 6
    aput-byte v2, v1, v5

    goto :goto_4

    :cond_1
    sub-int/2addr v7, v6

    const/16 v6, -0xf

    if-lt v7, v6, :cond_4

    int-to-byte v6, v7

    .line 7
    aput-byte v6, v1, p0

    :goto_3
    if-ge v5, v0, :cond_3

    .line 8
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 10
    aput-byte v4, v1, v5

    goto :goto_4

    .line 9
    :cond_2
    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private static zzm([J[J)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zzn([BI)J
    .locals 6

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, v2

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzo([BI)J
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhio;->zzn([BI)J

    move-result-wide v1

    .line 2
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v0, 0x18

    shl-long/2addr p0, v0

    or-long/2addr p0, v1

    return-wide p0
.end method
