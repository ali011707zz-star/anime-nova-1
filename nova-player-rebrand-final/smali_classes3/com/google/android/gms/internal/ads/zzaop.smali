.class public final Lcom/google/android/gms/internal/ads/zzaop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# static fields
.field private static final zzc:[D


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/ads/zzagh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaqf;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzape;

.field private final zzh:[Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzaoo;

.field private zzj:J

.field private zzk:Z

.field private zzl:Z

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:Z

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaop;->zzc:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqf;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzd:Lcom/google/android/gms/internal/ads/zzaqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaop;->zze:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzh:[Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaoo;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzaoo;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzi:Lcom/google/android/gms/internal/ads/zzaoo;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzape;

    const/16 p2, 0xb2

    .line 2
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzape;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzg:Lcom/google/android/gms/internal/ads/zzape;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzf:Lcom/google/android/gms/internal/ads/zzer;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzg:Lcom/google/android/gms/internal/ads/zzape;

    goto :goto_0

    :goto_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzn:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzh:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzi:Lcom/google/android/gms/internal/ads/zzaoo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoo;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzg:Lcom/google/android/gms/internal/ads/zzape;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzk:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzd:Lcom/google/android/gms/internal/ads/zzaqf;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V

    :cond_0
    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzn:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzh:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgm;->zzi([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzl:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzi:Lcom/google/android/gms/internal/ads/zzaoo;

    .line 35
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaoo;->zzc([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzg:Lcom/google/android/gms/internal/ads/zzape;

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 4
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzl:Z

    if-nez v9, :cond_a

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzi:Lcom/google/android/gms/internal/ads/zzaoo;

    .line 5
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaoo;->zzc([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzi:Lcom/google/android/gms/internal/ads/zzaoo;

    .line 6
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzaoo;->zzb(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zza:Ljava/lang/String;

    .line 37
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaop;->zze:Ljava/lang/String;

    .line 7
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzaoo;->zzc:[B

    iget v15, v12, Lcom/google/android/gms/internal/ads/zzaoo;->zza:I

    .line 8
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    const/4 v15, 0x4

    .line 9
    aget-byte v10, v14, v15

    and-int/lit16 v10, v10, 0xff

    const/16 v16, 0x5

    .line 10
    aget-byte v11, v14, v16

    move/from16 v17, v15

    and-int/lit16 v15, v11, 0xff

    const/16 v18, 0x6

    move/from16 v19, v2

    .line 11
    aget-byte v2, v14, v18

    and-int/lit16 v2, v2, 0xff

    const/16 v18, 0x7

    move/from16 v20, v2

    .line 12
    aget-byte v2, v14, v18

    and-int/lit16 v2, v2, 0xf0

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v10, v10, 0x4

    shr-int/lit8 v15, v15, 0x4

    or-int/2addr v10, v15

    shr-int/lit8 v2, v2, 0x4

    const/16 v15, 0x8

    shl-int/2addr v11, v15

    or-int v11, v11, v20

    const/4 v15, 0x2

    if-eq v2, v15, :cond_7

    const/4 v15, 0x3

    if-eq v2, v15, :cond_6

    move/from16 v15, v17

    if-eq v2, v15, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    mul-int/lit8 v2, v11, 0x79

    mul-int/lit8 v15, v10, 0x64

    :goto_2
    int-to-float v2, v2

    int-to-float v15, v15

    div-float/2addr v2, v15

    goto :goto_3

    :cond_6
    mul-int/lit8 v2, v11, 0x10

    mul-int/lit8 v15, v10, 0x9

    goto :goto_2

    :cond_7
    mul-int/lit8 v2, v11, 0x4

    mul-int/lit8 v15, v10, 0x3

    goto :goto_2

    :goto_3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzt;

    .line 13
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 14
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 15
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v9, "video/mpeg2"

    .line 16
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 17
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 18
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 19
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzz(F)Lcom/google/android/gms/internal/ads/zzt;

    .line 20
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 21
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    .line 22
    aget-byte v9, v14, v18

    and-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, -0x1

    const-wide/16 v10, 0x0

    if-ltz v9, :cond_9

    const/16 v13, 0x8

    if-ge v9, v13, :cond_9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzaop;->zzc:[D

    aget-wide v9, v10, v9

    iget v11, v12, Lcom/google/android/gms/internal/ads/zzaoo;->zzb:I

    add-int/lit8 v11, v11, 0x9

    .line 23
    aget-byte v11, v14, v11

    and-int/lit8 v12, v11, 0x60

    shr-int/lit8 v12, v12, 0x5

    and-int/lit8 v11, v11, 0x1f

    if-eq v12, v11, :cond_8

    int-to-double v12, v12

    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    int-to-double v14, v11

    div-double/2addr v12, v14

    mul-double/2addr v9, v12

    :cond_8
    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v9

    double-to-long v10, v11

    .line 24
    :cond_9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 25
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 26
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzm:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzl:Z

    goto :goto_4

    :cond_a
    move/from16 v19, v2

    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzg:Lcom/google/android/gms/internal/ads/zzape;

    if-eqz v2, :cond_e

    if-lez v8, :cond_b

    .line 27
    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    neg-int v1, v8

    .line 28
    :goto_5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzape;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 29
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BI)I

    move-result v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzf:Lcom/google/android/gms/internal/ads/zzer;

    .line 30
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzd:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 31
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    invoke-virtual {v1, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzaqf;->zzb(JLcom/google/android/gms/internal/ads/zzer;)V

    :cond_c
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_e

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    add-int/lit8 v8, v4, 0x2

    .line 32
    aget-byte v5, v5, v8

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzape;->zzc(I)V

    :cond_d
    move v5, v1

    :cond_e
    if-eqz v5, :cond_10

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_f

    goto :goto_6

    :cond_f
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_18

    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzq:Z

    goto/16 :goto_c

    :cond_10
    :goto_6
    sub-int v13, v19, v4

    .line 33
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzr:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzl:Z

    if-eqz v1, :cond_11

    move-wide v1, v8

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    cmp-long v4, v9, v1

    if-eqz v4, :cond_12

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzq:Z

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzo:J

    sub-long/2addr v14, v1

    long-to-int v1, v14

    sub-int v12, v1, v13

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const/4 v14, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    goto :goto_7

    :cond_11
    move-wide v1, v8

    :cond_12
    :goto_7
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzk:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzr:Z

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    :goto_8
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    int-to-long v10, v13

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzo:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzn:J

    cmp-long v4, v8, v1

    if-eqz v4, :cond_15

    goto :goto_9

    :cond_15
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    cmp-long v4, v8, v1

    if-eqz v4, :cond_16

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzm:J

    add-long/2addr v8, v10

    goto :goto_9

    :cond_16
    move-wide v8, v1

    :goto_9
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzq:Z

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzn:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzk:Z

    :goto_a
    if-nez v5, :cond_17

    move v10, v2

    goto :goto_b

    :cond_17
    move v10, v4

    :goto_b
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaop;->zzr:Z

    :cond_18
    :goto_c
    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public final zze(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzq:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzj:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzo:J

    sub-long/2addr v1, v4

    move-wide v4, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzp:J

    long-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    :cond_0
    return-void
.end method
