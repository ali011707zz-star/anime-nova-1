.class public final Lcom/google/android/gms/internal/ads/zzaos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzaoq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzape;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaor;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaos;->zza:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqf;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzaqf;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoq;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaoq;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzape;

    const/16 v0, 0xb2

    .line 2
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzape;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzape;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaor;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzape;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzi:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzagh;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgm;->zzi([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 72
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaoq;->zzc([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    .line 73
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaor;->zzc([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzape;

    .line 74
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 4
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:Z

    if-nez v9, :cond_d

    if-lez v8, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 5
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaoq;->zzc([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 6
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzaoq;->zzb(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzaoq;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzi:Ljava/lang/String;

    .line 75
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzaoq;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaoq;->zza:I

    .line 8
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzeq;

    .line 9
    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    .line 10
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzo(I)V

    const/4 v10, 0x4

    .line 11
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzo(I)V

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    const/16 v13, 0x8

    .line 13
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_4

    .line 15
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 16
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 17
    :cond_4
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    move/from16 v17, v2

    const/16 v2, 0xf

    if-ne v10, v2, :cond_6

    const/16 v2, 0x8

    .line 18
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 19
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 20
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move/from16 v2, v16

    goto :goto_3

    :cond_5
    int-to-float v10, v10

    int-to-float v2, v2

    div-float v16, v10, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x7

    if-ge v10, v2, :cond_7

    .line 45
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaos;->zza:[F

    .line 21
    aget v16, v2, v10

    goto :goto_2

    .line 22
    :cond_7
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :goto_3
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    .line 24
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    const/4 v10, 0x1

    .line 25
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 26
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0xf

    .line 27
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 29
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 30
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 31
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    const/4 v11, 0x3

    .line 33
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    const/16 v11, 0xb

    .line 34
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 35
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 36
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 37
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    const/4 v10, 0x2

    goto :goto_4

    :cond_8
    move v10, v11

    .line 38
    :goto_4
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Unhandled video object layer shape"

    .line 39
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    const/16 v10, 0x10

    .line 41
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 42
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 43
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v10, :cond_a

    const-string v10, "Invalid vop_increment_time_resolution"

    .line 44
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_5
    if-lez v10, :cond_b

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 45
    :cond_b
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 46
    :cond_c
    :goto_6
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    const/16 v10, 0xd

    .line 47
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v11

    .line 48
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 49
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzg()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzt;

    .line 52
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 53
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v14, "video/mp2t"

    .line 54
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v14, "video/mp4v-es"

    .line 55
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 56
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 57
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 58
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzz(F)Lcom/google/android/gms/internal/ads/zzt;

    .line 59
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 60
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    .line 61
    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:Z

    goto :goto_7

    :cond_d
    move/from16 v17, v2

    :goto_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    .line 62
    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaor;->zzc([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzape;

    if-lez v8, :cond_e

    .line 63
    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    neg-int v10, v8

    .line 64
    :goto_8
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzape;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 65
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BI)I

    move-result v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    .line 66
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 67
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    invoke-virtual {v1, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzaqf;->zzb(JLcom/google/android/gms/internal/ads/zzer;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    add-int/lit8 v8, v4, 0x2

    .line 68
    aget-byte v5, v5, v8

    const/4 v10, 0x1

    if-ne v5, v10, :cond_10

    .line 69
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzape;->zzc(I)V

    :cond_10
    move v5, v1

    :cond_11
    sub-int v2, v17, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    int-to-long v10, v2

    sub-long/2addr v8, v10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:Z

    .line 70
    invoke-virtual {v1, v8, v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzaor;->zzd(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    .line 71
    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(IJ)V

    move v1, v7

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public final zze(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    const/4 p1, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzd(JIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Lcom/google/android/gms/internal/ads/zzaor;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaor;->zza()V

    :cond_0
    return-void
.end method
