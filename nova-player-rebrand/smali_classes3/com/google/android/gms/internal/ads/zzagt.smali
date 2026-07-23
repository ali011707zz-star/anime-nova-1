.class public final Lcom/google/android/gms/internal/ads/zzagt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamd;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzg:Lcom/google/android/gms/internal/ads/zzagu;

.field private zzh:J

.field private zzi:[Lcom/google/android/gms/internal/ads/zzagw;

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzagw;

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzamd;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzd:Lcom/google/android/gms/internal/ads/zzamd;

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzc:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzags;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzags;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzagw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzn:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzl:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    return-void
.end method

.method private final zzi(I)Lcom/google/android/gms/internal/ads/zzagw;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzagw;->zzc(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x4

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzd:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamg;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzamd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v9

    cmp-long v6, v2, v9

    if-ltz v6, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v9

    cmp-long v6, v2, v11

    if-lez v6, :cond_1

    :cond_0
    move-object/from16 v6, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v9

    long-to-int v2, v2

    .line 1
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    :cond_2
    move v2, v8

    goto :goto_1

    .line 15
    :goto_0
    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    move v2, v7

    :goto_1
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    if-eqz v2, :cond_3

    return v7

    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    const/16 v3, 0xc

    const/4 v6, 0x0

    if-eqz v2, :cond_2d

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    if-eq v2, v7, :cond_2a

    const/4 v12, 0x3

    if-eq v2, v11, :cond_1e

    const v9, 0x69766f6d

    const/4 v13, 0x4

    move-wide/from16 v16, v4

    const-wide/16 v4, 0x0

    const-wide/16 v18, 0x8

    const/16 v14, 0x10

    if-eq v2, v12, :cond_16

    const/4 v12, 0x5

    const/16 v15, 0x8

    if-eq v2, v13, :cond_14

    if-eq v2, v12, :cond_c

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzn:J

    cmp-long v2, v4, v11

    if-ltz v2, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzk:Lcom/google/android/gms/internal/ads/zzagw;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzagw;->zze(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v1

    if-nez v1, :cond_5

    return v8

    :cond_5
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzk:Lcom/google/android/gms/internal/ads/zzagw;

    return v8

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    const-wide/16 v11, 0x1

    and-long/2addr v4, v11

    cmp-long v2, v4, v11

    if-nez v2, :cond_7

    .line 2
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 3
    invoke-interface {v1, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 4
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v4

    if-ne v4, v10, :cond_9

    .line 6
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v2

    if-ne v2, v9, :cond_8

    goto :goto_2

    :cond_8
    move v3, v15

    .line 8
    :goto_2
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    return v8

    .line 10
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v4, v3, :cond_a

    int-to-long v2, v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    add-long/2addr v4, v2

    add-long v4, v4, v18

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return v8

    .line 11
    :cond_a
    invoke-interface {v1, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 13
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzagt;->zzi(I)Lcom/google/android/gms/internal/ads/zzagw;

    move-result-object v3

    if-nez v3, :cond_b

    int-to-long v2, v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return v8

    .line 14
    :cond_b
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzagw;->zzd(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzk:Lcom/google/android/gms/internal/ads/zzagw;

    return v8

    .line 16
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzo:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzo:I

    .line 17
    invoke-interface {v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-ge v1, v14, :cond_d

    move/from16 v20, v8

    move-wide v8, v4

    goto :goto_4

    .line 34
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    .line 19
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    int-to-long v9, v3

    move/from16 v20, v8

    move-wide v15, v9

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzm:J

    cmp-long v3, v15, v8

    if-lez v3, :cond_e

    move-wide v8, v4

    goto :goto_3

    :cond_e
    add-long v8, v8, v18

    .line 21
    :goto_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 22
    :cond_f
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-lt v1, v14, :cond_11

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v1

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v11, v8

    .line 26
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzagt;->zzi(I)Lcom/google/android/gms/internal/ads/zzagw;

    move-result-object v1

    if-eqz v1, :cond_f

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_10

    move v3, v7

    goto :goto_5

    :cond_10
    move/from16 v3, v20

    .line 28
    :goto_5
    invoke-virtual {v1, v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzagw;->zza(JZ)V

    goto :goto_4

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    .line 29
    array-length v2, v1

    move/from16 v3, v20

    :goto_6
    if-ge v3, v2, :cond_12

    aget-object v6, v1, v3

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzagw;->zzb()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzp:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    .line 31
    array-length v1, v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafx;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    .line 32
    invoke-direct {v2, v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 33
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    :goto_7
    const/4 v1, 0x6

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagr;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    .line 34
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(Lcom/google/android/gms/internal/ads/zzagt;J)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    goto :goto_7

    .line 33
    :goto_8
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzm:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return v20

    :cond_14
    move/from16 v20, v8

    .line 21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    move/from16 v4, v20

    .line 35
    invoke-interface {v1, v3, v4, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 36
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v2

    const v4, 0x31786469

    if-ne v3, v4, :cond_15

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzo:I

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    goto :goto_9

    :goto_a
    return v2

    :cond_16
    move v2, v8

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzm:J

    cmp-long v6, v11, v16

    if-eqz v6, :cond_18

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v15

    cmp-long v6, v15, v11

    if-nez v6, :cond_17

    goto :goto_b

    .line 47
    :cond_17
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return v2

    .line 38
    :cond_18
    :goto_b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v8

    .line 39
    invoke-interface {v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 40
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 41
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    .line 42
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzer;)V

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v6

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzags;->zza:I

    const v12, 0x46464952

    if-ne v11, v12, :cond_19

    .line 44
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return v2

    :cond_19
    if-ne v11, v10, :cond_1a

    if-eq v6, v9, :cond_1b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzm:J

    iget v6, v8, Lcom/google/android/gms/internal/ads/zzags;->zzb:I

    int-to-long v8, v6

    add-long/2addr v2, v8

    add-long v2, v2, v18

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzn:J

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzp:Z

    if-nez v6, :cond_1c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzg:Lcom/google/android/gms/internal/ads/zzagu;

    .line 48
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzagu;->zzb:I

    and-int/2addr v6, v14

    if-eq v6, v14, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafx;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    .line 46
    invoke-direct {v3, v8, v9, v4, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 47
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzp:Z

    :cond_1c
    const/4 v2, 0x0

    goto :goto_c

    :cond_1d
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    const/4 v2, 0x0

    return v2

    :goto_c
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    return v2

    .line 44
    :goto_d
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzags;->zzb:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    add-long v3, v3, v18

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    return v2

    :cond_1e
    move v2, v8

    .line 47
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzl:I

    add-int/lit8 v3, v3, -0x4

    .line 49
    new-instance v4, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    .line 50
    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 51
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/zzagx;->zzb(ILcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagx;->zza()I

    move-result v2

    if-ne v2, v9, :cond_29

    .line 53
    const-class v2, Lcom/google/android/gms/internal/ads/zzagu;

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzagx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzagu;

    if-eqz v2, :cond_28

    .line 55
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzg:Lcom/google/android/gms/internal/ads/zzagu;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzagu;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzagu;->zza:I

    int-to-long v3, v3

    int-to-long v8, v2

    mul-long/2addr v3, v8

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    new-instance v2, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v4, v3, :cond_27

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 58
    check-cast v8, Lcom/google/android/gms/internal/ads/zzagq;

    .line 59
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzagq;->zza()I

    move-result v9

    const v10, 0x6c727473

    if-ne v9, v10, :cond_26

    .line 60
    check-cast v8, Lcom/google/android/gms/internal/ads/zzagx;

    add-int/lit8 v9, v5, 0x1

    const-class v10, Lcom/google/android/gms/internal/ads/zzagv;

    .line 61
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzagx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzagv;

    const-class v13, Lcom/google/android/gms/internal/ads/zzagy;

    .line 62
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzagx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzagy;

    const-string v14, "AviExtractor"

    if-nez v10, :cond_1f

    const-string v5, "Missing Stream Header"

    .line 63
    invoke-static {v14, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    if-nez v13, :cond_20

    .line 76
    const-string v5, "Missing Stream Format"

    .line 64
    invoke-static {v14, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 65
    :cond_20
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzagv;->zzd()J

    move-result-wide v14

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzagy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    .line 66
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzagv;->zze:I

    if-eqz v12, :cond_21

    .line 67
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_21
    const-class v12, Lcom/google/android/gms/internal/ads/zzagz;

    .line 68
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzagx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzagz;

    if-eqz v8, :cond_22

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/lang/String;

    .line 69
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    :cond_22
    iget-object v8, v13, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzas;->zzf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_24

    if-ne v8, v11, :cond_23

    move v8, v11

    goto :goto_f

    :cond_23
    const/4 v6, 0x0

    goto :goto_10

    :cond_24
    :goto_f
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 71
    invoke-interface {v12, v5, v8}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v8

    .line 72
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 73
    invoke-interface {v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzagh;->zzN(J)V

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    .line 74
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzh:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagw;

    .line 75
    invoke-direct {v6, v5, v10, v8}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(ILcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagh;)V

    :goto_10
    if-eqz v6, :cond_25

    .line 76
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move v5, v9

    :cond_26
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x3

    goto/16 :goto_e

    :cond_27
    const/4 v4, 0x0

    .line 75
    new-array v1, v4, [Lcom/google/android/gms/internal/ads/zzagw;

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzagw;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 78
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    return v4

    .line 54
    :cond_28
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    .line 55
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 51
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagx;->zza()I

    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected header list type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 14
    :cond_2a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagt;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 79
    invoke-interface {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 80
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzer;)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzags;->zza:I

    if-ne v3, v10, :cond_2c

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v2

    if-ne v2, v9, :cond_2b

    .line 84
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzags;->zzb:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagt;->zzl:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    return v5

    :cond_2b
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hdrl expected, found: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_2c
    const/4 v2, 0x0

    .line 82
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LIST expected, found: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_2d
    move-object v2, v6

    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzagt;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 86
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    const/16 v20, 0x0

    return v20

    .line 1
    :cond_2e
    const-string v1, "AVI Header List not found"

    .line 87
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1
.end method

.method public final zze(JJ)V
    .locals 3

    const-wide/16 p3, -0x1

    .line 1
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzj:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzk:Lcom/google/android/gms/internal/ads/zzagw;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    .line 2
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzagw;->zzf(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    .line 3
    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    return-void

    :cond_2
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zze:I

    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzh()[Lcom/google/android/gms/internal/ads/zzagw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzi:[Lcom/google/android/gms/internal/ads/zzagw;

    return-object v0
.end method
