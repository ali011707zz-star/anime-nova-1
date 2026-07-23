.class final Lcom/google/android/gms/internal/ads/zzaho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzc:Lcom/google/android/gms/internal/ads/zzahv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzaev;

.field private zze:Lcom/google/android/gms/internal/ads/zzagd;

.field private zzf:Lcom/google/android/gms/internal/ads/zzakw;

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    return-void
.end method

.method private final zzh()V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    .line 2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 3
    invoke-interface {p1, v5, v6, v4, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzh([BIIZ)Z

    move-result v5

    if-nez v5, :cond_0

    return v6

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v7

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v5

    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    .line 6
    invoke-interface {p1, v7, v4, v4, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzh([BIIZ)Z

    move-result v7

    if-nez v7, :cond_1

    return v6

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v7

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_1
    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    return v6

    :cond_3
    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-eqz v3, :cond_8

    const v3, 0x66747970

    if-ne v5, v3, :cond_7

    if-ge v7, v4, :cond_4

    return v6

    :cond_4
    const/4 v3, 0x4

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzael;

    .line 9
    invoke-virtual {v5, v4, v6, v3, v6}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    const v4, 0x68656963

    if-eq v3, v4, :cond_5

    return v6

    :cond_5
    add-int/lit8 v7, v7, -0x4

    .line 11
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    :cond_6
    :goto_2
    move v3, v6

    goto :goto_0

    :cond_7
    return v6

    :cond_8
    const v3, 0x6d707664

    if-ne v5, v3, :cond_9

    return v2

    :cond_9
    if-eqz v7, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzael;

    .line 12
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    goto :goto_2
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 12
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-eqz v3, :cond_8

    if-eq v3, v7, :cond_7

    const/4 v6, 0x3

    if-eq v3, v5, :cond_4

    if-eq v3, v6, :cond_0

    return v4

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zze:Lcom/google/android/gms/internal/ads/zzagd;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Lcom/google/android/gms/internal/ads/zzaev;

    if-eq v1, v3, :cond_2

    :cond_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Lcom/google/android/gms/internal/ads/zzaev;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagd;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    .line 19
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Lcom/google/android/gms/internal/ads/zzaev;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zze:Lcom/google/android/gms/internal/ads/zzagd;

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zze:Lcom/google/android/gms/internal/ads/zzagd;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzakw;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v1

    if-ne v1, v7, :cond_3

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    :cond_3
    return v1

    .line 8
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    if-nez v3, :cond_5

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzakw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzamd;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzamd;I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/ads/zzagd;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    .line 14
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Lcom/google/android/gms/internal/ads/zzaev;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zze:Lcom/google/android/gms/internal/ads/zzagd;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzakw;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagf;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {v4, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(JLcom/google/android/gms/internal/ads/zzaex;)V

    .line 17
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzakw;->zzc(Lcom/google/android/gms/internal/ads/zzaex;)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    goto :goto_0

    .line 18
    :cond_6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaho;->zzh()V

    goto :goto_0

    .line 12
    :cond_7
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    int-to-long v7, v5

    sub-long/2addr v3, v7

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    goto :goto_0

    .line 20
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v9

    .line 1
    invoke-interface {v1, v9, v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzb([BIIZ)Z

    move-result v9

    if-nez v9, :cond_9

    .line 22
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaho;->zzh()V

    return v4

    :cond_9
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    .line 2
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:J

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    :cond_a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:J

    const-wide/16 v9, 0x1

    cmp-long v9, v3, v9

    if-nez v9, :cond_b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 5
    invoke-interface {v1, v4, v8, v8}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:J

    :cond_b
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    const v9, 0x6d707664

    if-ne v8, v9, :cond_c

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    int-to-long v10, v10

    sub-long v13, v8, v10

    sub-long v19, v3, v10

    new-instance v10, Lcom/google/android/gms/internal/ads/zzahv;

    const-wide/16 v11, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzahv;-><init>(JJJJJ)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Lcom/google/android/gms/internal/ads/zzaex;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x400

    const/4 v8, 0x4

    .line 7
    invoke-interface {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzt;

    .line 8
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v8, "image/heic"

    .line 9
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzap;

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v10, v7, v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v8, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    .line 10
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    .line 8
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    goto/16 :goto_0

    :cond_c
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzakw;->zze(JJ)V

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:Lcom/google/android/gms/internal/ads/zzakw;

    :cond_0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method
