.class final Lcom/google/android/gms/internal/ads/zzahr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzahv;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaev;

.field private zzi:Lcom/google/android/gms/internal/ads/zzagd;

.field private zzj:Lcom/google/android/gms/internal/ads/zzakw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzaev;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p1

    return p1
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzaev;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private final zzj()V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahr;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 2
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahr;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:I

    const v1, 0xffda

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahr;->zzi(Lcom/google/android/gms/internal/ads/zzaev;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:I

    const v3, 0xffe1

    if-eq v1, v3, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzael;

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzael;

    .line 6
    invoke-virtual {v4, v3, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    .line 8
    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_1a

    if-eq v3, v8, :cond_19

    const/4 v10, -0x1

    if-eq v3, v5, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v10

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 18
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:Lcom/google/android/gms/internal/ads/zzagd;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzaev;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzaev;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagd;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    .line 19
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Lcom/google/android/gms/internal/ads/zzaev;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:Lcom/google/android/gms/internal/ads/zzagd;

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:Lcom/google/android/gms/internal/ads/zzagd;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzakw;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v1

    if-ne v1, v8, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    :cond_4
    return v1

    .line 6
    :cond_5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 22
    invoke-interface {v1, v2, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzaev;->zzh([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzj()V

    goto :goto_0

    .line 24
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    if-nez v2, :cond_7

    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakw;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamd;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    const/16 v6, 0x8

    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzamd;I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagd;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    .line 26
    invoke-direct {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Lcom/google/android/gms/internal/ads/zzaev;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:Lcom/google/android/gms/internal/ads/zzagd;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    .line 27
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakw;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagf;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {v2, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(JLcom/google/android/gms/internal/ads/zzaex;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakw;->zzc(Lcom/google/android/gms/internal/ads/zzaex;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:Lcom/google/android/gms/internal/ads/zzahv;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    .line 31
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    .line 32
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v4, "image/jpeg"

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzap;

    new-array v6, v8, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v1, v6, v9

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    .line 32
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    goto :goto_0

    .line 39
    :cond_8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzj()V

    :goto_0
    return v9

    :cond_9
    iput-wide v10, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    return v8

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_17

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 8
    invoke-interface {v1, v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:Lcom/google/android/gms/internal/ads/zzahv;

    if-nez v3, :cond_18

    .line 9
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-nez v1, :cond_c

    :cond_b
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 11
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaht;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaht;->zzb:Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v5, :cond_e

    goto :goto_1

    .line 13
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v10

    move-wide v13, v6

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    :goto_2
    if-ltz v5, :cond_15

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzahs;

    .line 15
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzahs;->zza:Ljava/lang/String;

    move-wide/from16 v17, v6

    const-string v6, "video/mp4"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "video/quicktime"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    move v6, v8

    goto :goto_3

    :cond_10
    move v6, v9

    :goto_3
    if-nez v5, :cond_11

    .line 16
    iget-wide v11, v10, Lcom/google/android/gms/internal/ads/zzahs;->zzc:J

    sub-long/2addr v3, v11

    const-wide/16 v10, 0x0

    :goto_4
    move-wide/from16 v23, v10

    move-wide v10, v3

    move-wide/from16 v3, v23

    goto :goto_5

    .line 17
    :cond_11
    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzahs;->zzb:J

    sub-long v10, v3, v10

    goto :goto_4

    :goto_5
    if-eqz v6, :cond_12

    cmp-long v6, v3, v10

    if-eqz v6, :cond_12

    sub-long v21, v10, v3

    move-wide/from16 v19, v3

    :cond_12
    if-nez v5, :cond_13

    move-wide v15, v10

    :cond_13
    if-nez v5, :cond_14

    move-wide v13, v3

    :cond_14
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v6, v17

    goto :goto_2

    :cond_15
    move-wide/from16 v17, v6

    cmp-long v2, v19, v17

    if-eqz v2, :cond_b

    cmp-long v2, v21, v17

    if-eqz v2, :cond_b

    cmp-long v2, v13, v17

    if-eqz v2, :cond_b

    cmp-long v2, v15, v17

    if-nez v2, :cond_16

    goto :goto_1

    :cond_16
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaht;->zza:J

    new-instance v12, Lcom/google/android/gms/internal/ads/zzahv;

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzahv;-><init>(JJJJJ)V

    move-object v11, v12

    .line 10
    :goto_6
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:Lcom/google/android/gms/internal/ads/zzahv;

    if-eqz v11, :cond_18

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    goto :goto_7

    .line 17
    :cond_17
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 10
    :cond_18
    :goto_7
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    return v9

    .line 5
    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahr;->zzi(Lcom/google/android/gms/internal/ads/zzaev;)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 6
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    return v9

    :cond_1a
    move-wide/from16 v17, v6

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    .line 2
    invoke-interface {v1, v3, v9, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1c

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:J

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1b

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    goto :goto_8

    .line 4
    :cond_1b
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzj()V

    goto :goto_8

    :cond_1c
    const v2, 0xffd0

    if-lt v1, v2, :cond_1d

    const v2, 0xffd9

    if-le v1, v2, :cond_1e

    :cond_1d
    const v2, 0xff01

    if-eq v1, v2, :cond_1e

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    :cond_1e
    :goto_8
    return v9
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzakw;->zze(JJ)V

    :cond_1
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
