.class public final Lcom/google/android/gms/internal/ads/zzahj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzer;

.field private final zze:Lcom/google/android/gms/internal/ads/zzahk;

.field private zzf:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzg:I

.field private zzh:Z

.field private zzi:J

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzahh;

.field private zzp:Lcom/google/android/gms/internal/ads/zzahn;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x9

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0xb

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zze:Lcom/google/android/gms/internal/ads/zzahk;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    .line 5
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-object v0
.end method

.method private final zzi()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzn:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzael;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v1

    const v3, 0x464c56

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    .line 11
    invoke-virtual {p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    .line 12
    invoke-virtual {p1, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_e

    const/4 v10, 0x3

    if-eq v2, v6, :cond_d

    if-eq v2, v10, :cond_b

    if-ne v2, v7, :cond_a

    .line 10
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzi:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 20
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zze:Lcom/google/android/gms/internal/ads/zzahk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahk;->zzc()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 27
    :cond_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    .line 10
    :goto_1
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzk:I

    if-ne v14, v5, :cond_4

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzo:Lcom/google/android/gms/internal/ads/zzahh;

    if-eqz v14, :cond_5

    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzi()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzo:Lcom/google/android/gms/internal/ads/zzahh;

    .line 25
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahj;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzahm;->zzf(Lcom/google/android/gms/internal/ads/zzer;J)Z

    move-result v2

    :cond_3
    :goto_2
    move v3, v9

    goto :goto_3

    :cond_4
    move v5, v14

    :cond_5
    if-ne v5, v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    if-eqz v4, :cond_7

    .line 22
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzi()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 23
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahj;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzahm;->zzf(Lcom/google/android/gms/internal/ads/zzer;J)Z

    move-result v2

    goto :goto_2

    :cond_6
    const/16 v4, 0x12

    if-ne v5, v4, :cond_7

    .line 21
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzn:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zze:Lcom/google/android/gms/internal/ads/zzahk;

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahj;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzahm;->zzf(Lcom/google/android/gms/internal/ads/zzer;J)Z

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzc()J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzafq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahk;->zze()[J

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzd()[J

    move-result-object v4

    .line 19
    invoke-direct {v5, v10, v4, v14, v15}, Lcom/google/android/gms/internal/ads/zzafq;-><init>([J[JJ)V

    .line 20
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzn:Z

    goto :goto_2

    .line 23
    :cond_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    .line 21
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    move v2, v8

    move v3, v2

    .line 25
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zze:Lcom/google/android/gms/internal/ads/zzahk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahk;->zzc()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_8

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    neg-long v10, v4

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzi:J

    :cond_9
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    if-eqz v3, :cond_0

    return v8

    .line 20
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-interface {v1, v4, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zzb([BIIZ)Z

    move-result v4

    if-nez v4, :cond_c

    return v3

    .line 12
    :cond_c
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzk:I

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:I

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    int-to-long v8, v3

    or-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzm:J

    .line 17
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    goto/16 :goto_0

    .line 9
    :cond_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:I

    .line 10
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v10

    .line 1
    invoke-interface {v1, v10, v8, v4, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zzb([BIIZ)Z

    move-result v10

    if-nez v10, :cond_f

    return v3

    .line 2
    :cond_f
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 3
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    and-int/lit8 v7, v3, 0x4

    and-int/2addr v3, v9

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzo:Lcom/google/android/gms/internal/ads/zzahh;

    if-nez v7, :cond_10

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/ads/zzahh;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 6
    invoke-interface {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(Lcom/google/android/gms/internal/ads/zzagh;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzo:Lcom/google/android/gms/internal/ads/zzahh;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    if-nez v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 7
    invoke-interface {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(Lcom/google/android/gms/internal/ads/zzagh;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    :cond_11
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 8
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 0

    .line 0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:I

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
