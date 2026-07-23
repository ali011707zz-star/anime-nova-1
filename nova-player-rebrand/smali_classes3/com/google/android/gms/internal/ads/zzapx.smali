.class public final Lcom/google/android/gms/internal/ads/zzapx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzd:Landroid/util/SparseIntArray;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaqa;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamd;

.field private final zzg:Landroid/util/SparseArray;

.field private final zzh:Landroid/util/SparseBooleanArray;

.field private final zzi:Landroid/util/SparseBooleanArray;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzapt;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaps;

.field private zzl:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:I

.field private zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzaqa;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzaqa;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    .line 3
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzb:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzh:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzi:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Landroid/util/SparseIntArray;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzapt;

    const p6, 0x1b8a0

    .line 9
    invoke-direct {p4, p6}, Lcom/google/android/gms/internal/ads/zzapt;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzj:Lcom/google/android/gms/internal/ads/zzapt;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzaex;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzl:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzr:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 12
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzaqa;->zza()Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-virtual {p5, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapo;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzapu;

    .line 15
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(Lcom/google/android/gms/internal/ads/zzapx;)V

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzapo;-><init>(Lcom/google/android/gms/internal/ads/zzapn;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    move v1, v2

    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    .line 2
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzael;->zze(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
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
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zza:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamg;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzamd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzl:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v7

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzn:Z

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_7

    cmp-long v3, v7, v11

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzj:Lcom/google/android/gms/internal/ads/zzapt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapt;->zza()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzr:I

    .line 36
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzapt;->zzb(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;I)I

    move-result v1

    return v1

    .line 1
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzo:Z

    const-wide/16 v4, 0x0

    if-nez v3, :cond_3

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzo:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzj:Lcom/google/android/gms/internal/ads/zzapt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapt;->zzc()J

    move-result-wide v9

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v15

    if-eqz v6, :cond_2

    move-object v6, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaps;

    move-wide v9, v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzapt;->zzd()Lcom/google/android/gms/internal/ads/zzfg;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzapt;->zzc()J

    move-result-wide v5

    move-wide v15, v9

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzr:I

    const v10, 0x1b8a0

    move-wide/from16 v17, v11

    move-wide v11, v15

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Lcom/google/android/gms/internal/ads/zzfg;JJII)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzk:Lcom/google/android/gms/internal/ads/zzaps;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzl:Lcom/google/android/gms/internal/ads/zzaex;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza()Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    goto :goto_1

    :cond_2
    move-object v6, v3

    move-wide/from16 v17, v11

    move-wide v11, v4

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzl:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzafx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzapt;->zzc()J

    move-result-wide v5

    .line 3
    invoke-direct {v4, v5, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v11

    move-wide v11, v4

    .line 2
    :goto_1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzp:Z

    if-eqz v3, :cond_5

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzp:Z

    .line 5
    invoke-virtual {v0, v11, v12, v11, v12}, Lcom/google/android/gms/internal/ads/zzapx;->zze(JJ)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-nez v3, :cond_4

    goto :goto_2

    .line 35
    :cond_4
    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    return v13

    .line 5
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzk:Lcom/google/android/gms/internal/ads/zzaps;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v1

    return v1

    :cond_7
    move-wide/from16 v17, v11

    .line 5
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v4

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-lt v4, v5, :cond_9

    goto :goto_4

    .line 6
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v6

    .line 7
    invoke-static {v3, v6, v3, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_a
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 9
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    const/4 v6, -0x1

    if-ge v4, v5, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v4

    rsub-int v9, v4, 0x24b8

    .line 10
    invoke-interface {v1, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zza([BII)I

    move-result v9

    if-ne v9, v6, :cond_d

    move v1, v14

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaqc;

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzapg;

    if-eqz v3, :cond_b

    .line 14
    check-cast v2, Lcom/google/android/gms/internal/ads/zzapg;

    .line 15
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzapg;->zzd(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/google/android/gms/internal/ads/zzer;

    .line 16
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    invoke-virtual {v2, v3, v13}, Lcom/google/android/gms/internal/ads/zzapg;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    return v6

    :cond_d
    add-int/2addr v4, v9

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 17
    invoke-static {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zza([BII)I

    move-result v4

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    add-int/lit16 v5, v4, 0xbc

    if-le v5, v3, :cond_f

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzq:I

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzq:I

    goto :goto_6

    .line 34
    :cond_f
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzq:I

    .line 18
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v1

    if-le v5, v1, :cond_10

    return v14

    .line 19
    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    const/high16 v4, 0x800000

    and-int/2addr v4, v3

    if-eqz v4, :cond_11

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return v14

    :cond_11
    const/high16 v4, 0x400000

    and-int/2addr v4, v3

    if-eqz v4, :cond_12

    move v4, v13

    goto :goto_7

    :cond_12
    move v4, v14

    :goto_7
    shr-int/lit8 v9, v3, 0x8

    and-int/lit8 v10, v3, 0x20

    and-int/lit8 v11, v3, 0x10

    and-int/lit16 v9, v9, 0x1fff

    if-eqz v11, :cond_13

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaqc;

    goto :goto_8

    :cond_13
    const/4 v11, 0x0

    :goto_8
    if-nez v11, :cond_14

    .line 22
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return v14

    :cond_14
    and-int/lit8 v3, v3, 0xf

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Landroid/util/SparseIntArray;

    add-int/lit8 v15, v3, -0x1

    .line 23
    invoke-virtual {v12, v9, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 24
    invoke-virtual {v12, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v15, v3, :cond_15

    .line 25
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return v14

    :cond_15
    add-int/2addr v15, v13

    and-int/lit8 v12, v15, 0xf

    if-eq v3, v12, :cond_16

    .line 26
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzaqc;->zzb()V

    :cond_16
    if-eqz v10, :cond_18

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_17

    const/4 v10, 0x2

    goto :goto_9

    :cond_17
    move v10, v14

    :goto_9
    or-int/2addr v4, v10

    add-int/2addr v3, v6

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    :cond_18
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzn:Z

    if-nez v3, :cond_19

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzi:Landroid/util/SparseBooleanArray;

    .line 30
    invoke-virtual {v6, v9, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 31
    :cond_19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    .line 32
    invoke-interface {v11, v2, v4}, Lcom/google/android/gms/internal/ads/zzaqc;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    if-nez v3, :cond_1b

    :cond_1a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzn:Z

    if-eqz v1, :cond_1b

    cmp-long v1, v7, v17

    if-eqz v1, :cond_1b

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzp:Z

    .line 34
    :cond_1b
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return v14
.end method

.method public final zze(JJ)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, p2, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfg;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfg;->zzc()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfg;->zza()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    cmp-long v2, v5, p3

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/zzfg;->zzd(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzk:Lcom/google/android/gms/internal/ads/zzaps;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(J)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzd:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 10
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqc;->zzb()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzq:I

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

.method final synthetic zzh()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzb:Ljava/util/List;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzaqa;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zze:Lcom/google/android/gms/internal/ads/zzaqa;

    return-object v0
.end method

.method final synthetic zzj()Landroid/util/SparseArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzg:Landroid/util/SparseArray;

    return-object v0
.end method

.method final synthetic zzk()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzh:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method final synthetic zzl()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzi:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method final synthetic zzm()Lcom/google/android/gms/internal/ads/zzaex;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzl:Lcom/google/android/gms/internal/ads/zzaex;

    return-object v0
.end method

.method final synthetic zzn()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzm:I

    return v0
.end method

.method final synthetic zzo(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzm:I

    return-void
.end method

.method final synthetic zzp(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzn:Z

    return-void
.end method

.method final synthetic zzq(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzr:I

    return-void
.end method
