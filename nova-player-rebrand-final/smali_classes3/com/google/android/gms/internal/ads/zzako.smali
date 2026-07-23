.class public final Lcom/google/android/gms/internal/ads/zzako;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# static fields
.field private static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzv;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Lcom/google/android/gms/internal/ads/zzakn;

.field private zzD:I

.field private zzE:I

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

.field private zzK:[Lcom/google/android/gms/internal/ads/zzagh;

.field private zzL:Z

.field private zzM:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamd;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/util/SparseArray;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzj:[B

.field private final zzk:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzahz;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzn:Ljava/util/ArrayDeque;

.field private final zzo:Ljava/util/ArrayDeque;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzgq;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzaej;

.field private zzr:Lcom/google/android/gms/internal/ads/zzguf;

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:I

.field private zzw:Lcom/google/android/gms/internal/ads/zzer;

.field private zzx:J

.field private zzy:I

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzako;->zza:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzako;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;ILcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzalc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzc:Lcom/google/android/gms/internal/ads/zzamd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzako;->zzd:I

    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zze:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahz;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzl:Lcom/google/android/gms/internal/ads/zzahz;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/4 p3, 0x6

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzh:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzi:Lcom/google/android/gms/internal/ads/zzer;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzj:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzer;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzako;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzo:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzr:Lcom/google/android/gms/internal/ads/zzguf;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzA:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzB:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaex;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgq;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Lcom/google/android/gms/internal/ads/zzako;)V

    .line 14
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Lcom/google/android/gms/internal/ads/zzgp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaej;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzq:Lcom/google/android/gms/internal/ads/zzaej;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzM:J

    return-void
.end method

.method private final zzi()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    return-void
.end method

.method private final zzj(J)V
    .locals 57

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfu;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzfu;->zza:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_52

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfu;

    .line 3
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    const/16 v10, 0x8

    const/4 v13, 0x1

    if-ne v2, v4, :cond_b

    .line 4
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzfu;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzako;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v1

    const v2, 0x6d766578

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfu;->zzd(I)Lcom/google/android/gms/internal/ads/zzfu;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v15, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfu;->zzb:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v11, v4, :cond_4

    .line 8
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x10

    move-object/from16 v8, v18

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfv;

    .line 9
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const/16 v20, 0x0

    const v14, 0x74726578

    if-ne v9, v14, :cond_1

    .line 10
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 11
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v5

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v12

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v8

    .line 17
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-direct {v6, v14, v5, v12, v8}, Lcom/google/android/gms/internal/ads/zzaki;-><init>(IIII)V

    .line 18
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 19
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const v5, 0x6d656864

    if-ne v9, v5, :cond_3

    .line 20
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 21
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v6

    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v5

    :goto_2
    move-wide/from16 v16, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v5

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0xc

    goto :goto_1

    :cond_4
    const/16 v19, 0x10

    const/16 v20, 0x0

    const v2, 0x6d657461

    .line 25
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfu;->zzd(I)Lcom/google/android/gms/internal/ads/zzfu;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakh;->zze(Lcom/google/android/gms/internal/ads/zzfu;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzafn;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzafn;-><init>()V

    const v5, 0x75647461

    .line 27
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 28
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakh;->zzc(Lcom/google/android/gms/internal/ads/zzfv;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v9

    .line 29
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzap;)Z

    move-object/from16 v18, v9

    goto :goto_5

    :cond_6
    const/16 v18, 0x0

    :goto_5
    new-instance v12, Lcom/google/android/gms/internal/ads/zzap;

    const v5, 0x6d766864

    .line 30
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakh;->zzd(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzfy;

    move-result-object v5

    new-array v6, v13, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v5, v6, v20

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v12, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzd:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    move v8, v13

    goto :goto_6

    :cond_7
    move/from16 v8, v20

    :goto_6
    new-instance v10, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzako;)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    move-wide/from16 v5, v16

    .line 31
    invoke-static/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzakh;->zzb(Lcom/google/android/gms/internal/ads/zzfu;Lcom/google/android/gms/internal/ads/zzafn;JLcom/google/android/gms/internal/ads/zzq;ZZLcom/google/android/gms/internal/ads/zzgqt;Z)Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, v20

    :goto_7
    if-ge v7, v3, :cond_8

    .line 35
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzalf;

    .line 36
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzalc;->zzb:I

    .line 37
    invoke-interface {v10, v7, v11}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v10

    move/from16 v16, v13

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzalc;->zze:J

    .line 38
    invoke-interface {v10, v13, v14}, Lcom/google/android/gms/internal/ads/zzagh;->zzN(J)V

    move/from16 v17, v7

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    move-object/from16 v21, v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v12

    .line 39
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 40
    invoke-static {v11, v4, v12}, Lcom/google/android/gms/internal/ads/zzakq;->zzb(ILcom/google/android/gms/internal/ads/zzafn;Lcom/google/android/gms/internal/ads/zzt;)V

    move-object/from16 v19, v4

    move-object/from16 v23, v6

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzap;

    aput-object v18, v6, v20

    aput-object v21, v6, v16

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    .line 41
    invoke-static {v11, v2, v12, v4, v6}, Lcom/google/android/gms/internal/ads/zzakq;->zza(ILcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzap;[Lcom/google/android/gms/internal/ads/zzap;)V

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzalc;->zza:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzakn;

    .line 42
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzako;->zzo(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaki;

    move-result-object v7

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    invoke-direct {v6, v10, v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzaki;Lcom/google/android/gms/internal/ads/zzv;)V

    .line 44
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzako;->zzA:J

    .line 45
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzako;->zzA:J

    add-int/lit8 v7, v17, 0x1

    move/from16 v13, v16

    move-object/from16 v4, v19

    move-object/from16 v12, v21

    move-object/from16 v6, v23

    goto :goto_7

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    .line 46
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    goto/16 :goto_0

    :cond_9
    move/from16 v16, v13

    .line 47
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v3, :cond_a

    move/from16 v13, v16

    goto :goto_8

    :cond_a
    move/from16 v13, v20

    :goto_8
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    move/from16 v14, v20

    :goto_9
    if-ge v14, v3, :cond_0

    .line 48
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzalf;

    .line 49
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzalc;->zza:I

    .line 50
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzakn;

    .line 51
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzako;->zzo(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaki;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzakn;->zza(Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzaki;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_b
    move/from16 v16, v13

    const/16 v19, 0x10

    const/16 v20, 0x0

    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_51

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzd:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzj:[B

    .line 52
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfu;->zzc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v7, v20

    :goto_a
    if-ge v7, v6, :cond_4c

    .line 53
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfu;

    .line 54
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const v11, 0x74726166

    if-ne v9, v11, :cond_4b

    const v9, 0x74666864

    .line 55
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v9

    .line 193
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 56
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v11

    .line 58
    sget v12, Lcom/google/android/gms/internal/ads/zzakh;->$r8$clinit:I

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v12

    .line 60
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzakn;

    if-nez v12, :cond_c

    const/4 v12, 0x0

    goto :goto_f

    :cond_c
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_d

    .line 61
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v13

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzale;->zzb:J

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzale;->zzc:J

    :cond_d
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzakn;->zze:Lcom/google/android/gms/internal/ads/zzaki;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_e

    .line 62
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 63
    :cond_e
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzaki;->zza:I

    :goto_b
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_f

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v15

    goto :goto_c

    .line 65
    :cond_f
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzaki;->zzb:I

    :goto_c
    and-int/lit8 v17, v11, 0x10

    if-eqz v17, :cond_10

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v17

    move/from16 v10, v17

    goto :goto_d

    .line 67
    :cond_10
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzaki;->zzc:I

    :goto_d
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_11

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    goto :goto_e

    .line 69
    :cond_11
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    .line 68
    :goto_e
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-direct {v13, v14, v15, v10, v9}, Lcom/google/android/gms/internal/ads/zzaki;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzale;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    :goto_f
    if-nez v12, :cond_12

    move/from16 v25, v2

    move-object/from16 v27, v5

    move/from16 v26, v6

    move/from16 v33, v7

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v13, v20

    const/4 v7, 0x2

    const/16 v11, 0x8

    :goto_10
    const/16 v12, 0xc

    goto/16 :goto_32

    .line 60
    :cond_12
    iget-object v9, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzq:Z

    .line 70
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzakn;->zzc()V

    move/from16 v14, v16

    .line 71
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzakn;->zzl(Z)V

    const v15, 0x74666474

    .line 72
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v15

    if-eqz v15, :cond_14

    and-int/lit8 v16, v2, 0x2

    if-nez v16, :cond_14

    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v11, 0x8

    .line 73
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v11

    if-ne v11, v14, :cond_13

    .line 75
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v10

    goto :goto_11

    :cond_13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v10

    :goto_11
    iput-wide v10, v9, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    iput-boolean v14, v9, Lcom/google/android/gms/internal/ads/zzale;->zzq:Z

    goto :goto_12

    :cond_14
    iput-wide v10, v9, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    iput-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzq:Z

    .line 76
    :goto_12
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzfu;->zzb:Ljava/util/List;

    .line 77
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v25, v2

    move/from16 v13, v20

    move v14, v13

    move v15, v14

    :goto_13
    const v2, 0x7472756e

    if-ge v13, v11, :cond_16

    .line 78
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v5

    move-object/from16 v5, v26

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfv;

    move/from16 v26, v6

    .line 79
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    if-ne v6, v2, :cond_15

    .line 80
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v5, 0xc

    .line 81
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v2

    if-lez v2, :cond_15

    add-int/2addr v15, v2

    add-int/lit8 v14, v14, 0x1

    :cond_15
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v26

    move-object/from16 v5, v27

    goto :goto_13

    :cond_16
    move-object/from16 v27, v5

    move/from16 v26, v6

    move/from16 v5, v20

    iput v5, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    iput v5, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzg:I

    iput v5, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iput v14, v9, Lcom/google/android/gms/internal/ads/zzale;->zzd:I

    iput v15, v9, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    .line 83
    array-length v5, v5

    if-ge v5, v14, :cond_17

    new-array v5, v14, [J

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzf:[J

    new-array v5, v14, [I

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    :cond_17
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzh:[I

    .line 84
    array-length v5, v5

    if-ge v5, v15, :cond_18

    mul-int/lit8 v15, v15, 0x7d

    div-int/lit8 v15, v15, 0x64

    .line 85
    new-array v5, v15, [I

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzh:[I

    .line 86
    new-array v5, v15, [J

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzi:[J

    .line 87
    new-array v5, v15, [Z

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzj:[Z

    .line 88
    new-array v5, v15, [Z

    iput-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    :cond_18
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_14
    if-ge v5, v11, :cond_2d

    .line 89
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    const-wide/16 v29, 0x0

    move-object/from16 v14, v28

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfv;

    .line 90
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    if-ne v15, v2, :cond_2c

    add-int/lit8 v15, v6, 0x1

    .line 91
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v2, 0x8

    .line 92
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 93
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    move/from16 v31, v5

    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    .line 94
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    move/from16 v32, v6

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzale;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 95
    sget-object v33, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    move/from16 v33, v7

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v34

    aput v34, v7, v32

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzale;->zzf:[J

    move/from16 v34, v13

    move-object/from16 v35, v14

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzb:J

    .line 97
    aput-wide v13, v7, v32

    and-int/lit8 v36, v2, 0x1

    if-eqz v36, :cond_19

    move-object/from16 v36, v7

    .line 98
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v7

    move-wide/from16 v37, v13

    int-to-long v13, v7

    add-long v13, v37, v13

    aput-wide v13, v36, v32

    :cond_19
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_15

    :cond_1a
    const/4 v7, 0x0

    .line 99
    :goto_15
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    if-eqz v7, :cond_1b

    .line 100
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v14

    goto :goto_16

    :cond_1b
    move v14, v13

    :goto_16
    move/from16 v36, v7

    and-int/lit16 v7, v2, 0x100

    move/from16 v37, v7

    and-int/lit16 v7, v2, 0x200

    move/from16 v38, v7

    and-int/lit16 v7, v2, 0x400

    and-int/lit16 v2, v2, 0x800

    move/from16 v39, v2

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzi:[J

    if-eqz v2, :cond_20

    move/from16 v40, v7

    array-length v7, v2

    move-object/from16 v41, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1c

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzj:[J

    if-nez v2, :cond_1d

    :cond_1c
    :goto_17
    move v7, v13

    move/from16 v41, v14

    goto :goto_19

    :cond_1d
    const/16 v20, 0x0

    .line 101
    aget-wide v42, v41, v20

    cmp-long v7, v42, v29

    if-nez v7, :cond_1e

    move v7, v13

    move/from16 v41, v14

    goto :goto_18

    :cond_1e
    move v7, v13

    move/from16 v41, v14

    .line 105
    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzd:J

    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v44, 0xf4240

    move-wide/from16 v46, v13

    .line 102
    invoke-static/range {v42 .. v48}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    .line 103
    aget-wide v44, v2, v20

    const-wide/32 v46, 0xf4240

    move-wide/from16 v42, v13

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzc:J

    move-object/from16 v50, v48

    move-wide/from16 v48, v13

    .line 104
    invoke-static/range {v44 .. v50}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    add-long v13, v42, v13

    move-wide/from16 v42, v13

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzalc;->zze:J

    cmp-long v13, v42, v13

    if-gez v13, :cond_1f

    goto :goto_19

    .line 105
    :cond_1f
    :goto_18
    aget-wide v13, v2, v20

    move-wide/from16 v29, v13

    goto :goto_19

    :cond_20
    move/from16 v40, v7

    goto :goto_17

    .line 100
    :goto_19
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzale;->zzh:[I

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzi:[J

    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzale;->zzj:[Z

    move-object/from16 v42, v2

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzb:I

    move/from16 v43, v7

    const/4 v7, 0x2

    if-ne v2, v7, :cond_21

    and-int/lit8 v2, v25, 0x1

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_1a

    :cond_21
    const/4 v2, 0x0

    :goto_1a
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    .line 106
    aget v7, v7, v32

    add-int v7, v34, v7

    move-object/from16 v51, v13

    move-object/from16 v52, v14

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzalc;->zzc:J

    move-wide/from16 v48, v13

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    move/from16 v5, v34

    :goto_1b
    if-ge v5, v7, :cond_2b

    if-eqz v37, :cond_22

    .line 107
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v32

    move/from16 v53, v2

    move/from16 v2, v32

    goto :goto_1c

    :cond_22
    move/from16 v53, v2

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzaki;->zzb:I

    :goto_1c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzako;->zzk(I)I

    if-eqz v38, :cond_23

    .line 108
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v32

    move/from16 v56, v32

    move/from16 v32, v5

    move/from16 v5, v56

    goto :goto_1d

    :cond_23
    move/from16 v32, v5

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaki;->zzc:I

    :goto_1d
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzako;->zzk(I)I

    if-eqz v40, :cond_24

    .line 109
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v34

    goto :goto_1e

    :cond_24
    if-nez v32, :cond_26

    if-eqz v36, :cond_25

    move/from16 v34, v41

    const/16 v32, 0x0

    goto :goto_1e

    :cond_25
    const/16 v32, 0x0

    :cond_26
    move/from16 v34, v43

    :goto_1e
    if-eqz v39, :cond_27

    .line 110
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v44

    move/from16 v54, v5

    move/from16 v5, v44

    :goto_1f
    move-object/from16 v55, v6

    goto :goto_20

    :cond_27
    move/from16 v54, v5

    const/4 v5, 0x0

    goto :goto_1f

    :goto_20
    int-to-long v5, v5

    add-long/2addr v5, v13

    sub-long v44, v5, v29

    const-wide/32 v46, 0xf4240

    sget-object v50, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 111
    invoke-static/range {v44 .. v50}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    .line 112
    aput-wide v5, v51, v32

    move-wide/from16 v44, v5

    iget-boolean v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzq:Z

    if-nez v5, :cond_28

    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    .line 113
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzalf;->zzi:J

    add-long v5, v44, v5

    aput-wide v5, v51, v32

    .line 114
    :cond_28
    aput v54, v42, v32

    shr-int/lit8 v5, v34, 0x10

    const/16 v16, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_29

    if-eqz v53, :cond_2a

    if-nez v32, :cond_29

    move/from16 v5, v16

    const/16 v32, 0x0

    goto :goto_21

    :cond_29
    const/4 v5, 0x0

    goto :goto_21

    :cond_2a
    move/from16 v5, v16

    .line 115
    :goto_21
    aput-boolean v5, v52, v32

    int-to-long v5, v2

    add-long/2addr v13, v5

    add-int/lit8 v5, v32, 0x1

    move/from16 v2, v53

    move-object/from16 v6, v55

    goto/16 :goto_1b

    .line 107
    :cond_2b
    iput-wide v13, v9, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    move v13, v7

    move v6, v15

    goto :goto_22

    :cond_2c
    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v13

    :goto_22
    add-int/lit8 v5, v31, 0x1

    move/from16 v7, v33

    const v2, 0x7472756e

    goto/16 :goto_14

    :cond_2d
    move/from16 v33, v7

    const-wide/16 v29, 0x0

    .line 104
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    .line 116
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 192
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaki;->zza:I

    .line 118
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v2

    const v5, 0x7361697a

    .line 119
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzald;->zzd:I

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v11, 0x8

    .line 121
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v7

    const/4 v14, 0x1

    and-int/2addr v7, v14

    if-ne v7, v14, :cond_2e

    .line 123
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 124
    :cond_2e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v7

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v11

    iget v12, v9, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    if-gt v11, v12, :cond_33

    if-nez v7, :cond_31

    .line 186
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_23
    if-ge v12, v11, :cond_30

    .line 126
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v14

    add-int/2addr v13, v14

    if-le v14, v6, :cond_2f

    const/4 v14, 0x1

    goto :goto_24

    :cond_2f
    const/4 v14, 0x0

    .line 127
    :goto_24
    aput-boolean v14, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_30
    const/4 v7, 0x0

    goto :goto_26

    :cond_31
    if-le v7, v6, :cond_32

    const/4 v5, 0x1

    goto :goto_25

    :cond_32
    const/4 v5, 0x0

    :goto_25
    mul-int v13, v7, v11

    .line 136
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    const/4 v7, 0x0

    .line 128
    invoke-static {v6, v7, v11, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 127
    :goto_26
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    .line 129
    invoke-static {v5, v11, v6, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v13, :cond_34

    .line 130
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzale;->zza(I)V

    goto :goto_27

    .line 186
    :cond_33
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x38

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Saiz sample count "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_34
    :goto_27
    const v5, 0x7361696f

    .line 131
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v5

    if-eqz v5, :cond_37

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v11, 0x8

    .line 132
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 133
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v6

    and-int/lit8 v7, v6, 0x1

    const/4 v14, 0x1

    if-ne v7, v14, :cond_35

    .line 134
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 135
    :cond_35
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v7

    if-ne v7, v14, :cond_38

    .line 187
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v6

    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzale;->zzc:J

    if-nez v6, :cond_36

    .line 136
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v5

    goto :goto_28

    :cond_36
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v5

    :goto_28
    add-long/2addr v11, v5

    iput-wide v11, v9, Lcom/google/android/gms/internal/ads/zzale;->zzc:J

    :cond_37
    const/4 v5, 0x0

    goto :goto_29

    .line 187
    :cond_38
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :goto_29
    const v6, 0x73656e63

    .line 137
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzfu;->zzc(I)Lcom/google/android/gms/internal/ads/zzfv;

    move-result-object v6

    if-eqz v6, :cond_39

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v7, 0x0

    .line 138
    invoke-static {v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzako;->zzl(Lcom/google/android/gms/internal/ads/zzer;ILcom/google/android/gms/internal/ads/zzale;)V

    :cond_39
    if-eqz v2, :cond_3a

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzald;->zzb:Ljava/lang/String;

    move-object/from16 v36, v2

    goto :goto_2a

    :cond_3a
    move-object/from16 v36, v5

    :goto_2a
    move-object v2, v5

    move-object v6, v2

    const/4 v7, 0x0

    .line 139
    :goto_2b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3d

    .line 140
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfv;

    .line 141
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 142
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const v12, 0x73626770

    const v13, 0x73656967

    if-ne v8, v12, :cond_3b

    const/16 v12, 0xc

    .line 143
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 144
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v8

    if-ne v8, v13, :cond_3c

    move-object v2, v11

    goto :goto_2c

    :cond_3b
    const/16 v12, 0xc

    const v14, 0x73677064

    if-ne v8, v14, :cond_3c

    .line 145
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 146
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v8

    if-ne v8, v13, :cond_3c

    move-object v6, v11

    :cond_3c
    :goto_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_3d
    const/16 v12, 0xc

    if-eqz v2, :cond_3e

    if-nez v6, :cond_3f

    :cond_3e
    const/4 v7, 0x2

    const/4 v14, 0x1

    goto/16 :goto_2f

    :cond_3f
    const/16 v11, 0x8

    .line 147
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 148
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v7

    const/4 v8, 0x4

    .line 149
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    const/4 v14, 0x1

    if-ne v7, v14, :cond_40

    .line 150
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 151
    :cond_40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    if-ne v2, v14, :cond_46

    .line 152
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 153
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v2

    .line 154
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    if-ne v2, v14, :cond_42

    .line 155
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v13

    cmp-long v2, v13, v29

    if-eqz v2, :cond_41

    const/4 v7, 0x2

    goto :goto_2d

    .line 182
    :cond_41
    const-string v1, "Variable length description in sgpd found (unsupported)"

    .line 189
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_42
    const/4 v7, 0x2

    if-lt v2, v7, :cond_43

    .line 156
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 157
    :cond_43
    :goto_2d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v13

    const-wide/16 v21, 0x1

    cmp-long v2, v13, v21

    if-nez v2, :cond_45

    const/4 v14, 0x1

    .line 158
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 159
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    and-int/lit16 v11, v2, 0xf0

    shr-int/lit8 v39, v11, 0x4

    and-int/lit8 v40, v2, 0xf

    .line 160
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    if-ne v2, v14, :cond_47

    .line 161
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v37

    move/from16 v2, v19

    new-array v8, v2, [B

    const/4 v11, 0x0

    .line 162
    invoke-virtual {v6, v8, v11, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    if-nez v37, :cond_44

    .line 163
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    new-array v13, v2, [B

    .line 164
    invoke-virtual {v6, v13, v11, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    move-object/from16 v41, v13

    goto :goto_2e

    :cond_44
    move-object/from16 v41, v5

    :goto_2e
    iput-boolean v14, v9, Lcom/google/android/gms/internal/ads/zzale;->zzk:Z

    new-instance v34, Lcom/google/android/gms/internal/ads/zzald;

    const/16 v35, 0x1

    move-object/from16 v38, v8

    .line 165
    invoke-direct/range {v34 .. v41}, Lcom/google/android/gms/internal/ads/zzald;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v2, v34

    iput-object v2, v9, Lcom/google/android/gms/internal/ads/zzale;->zzm:Lcom/google/android/gms/internal/ads/zzald;

    goto :goto_2f

    .line 157
    :cond_45
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 190
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 151
    :cond_46
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 188
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 166
    :cond_47
    :goto_2f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v2, :cond_4a

    .line 167
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfv;

    .line 168
    iget v11, v8, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const v13, 0x75756964

    if-ne v11, v13, :cond_48

    .line 169
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v11, 0x8

    .line 170
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v13, 0x0

    const/16 v15, 0x10

    .line 171
    invoke-virtual {v8, v4, v13, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzako;->zza:[B

    .line 172
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 173
    invoke-static {v8, v15, v9}, Lcom/google/android/gms/internal/ads/zzako;->zzl(Lcom/google/android/gms/internal/ads/zzer;ILcom/google/android/gms/internal/ads/zzale;)V

    goto :goto_31

    :cond_48
    const/16 v11, 0x8

    const/4 v13, 0x0

    const/16 v15, 0x10

    :cond_49
    :goto_31
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_30

    :cond_4a
    const/16 v11, 0x8

    const/4 v13, 0x0

    const/16 v15, 0x10

    goto :goto_32

    :cond_4b
    move/from16 v25, v2

    move-object/from16 v27, v5

    move/from16 v26, v6

    move/from16 v33, v7

    move v11, v10

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v13, v20

    const/4 v7, 0x2

    goto/16 :goto_10

    :goto_32
    add-int/lit8 v2, v33, 0x1

    move v7, v2

    move v10, v11

    move/from16 v20, v13

    move/from16 v16, v14

    move/from16 v19, v15

    move/from16 v2, v25

    move/from16 v6, v26

    move-object/from16 v5, v27

    goto/16 :goto_a

    :cond_4c
    move/from16 v13, v20

    .line 174
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzfu;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzako;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 175
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v5, v13

    :goto_33
    if-ge v5, v3, :cond_4d

    .line 176
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzb(Lcom/google/android/gms/internal/ads/zzq;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_4d
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzz:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v23

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v14, v13

    :goto_34
    if-ge v14, v2, :cond_50

    .line 178
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzakn;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzz:J

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    :goto_35
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    if-ge v6, v8, :cond_4f

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzale;->zzi:[J

    .line 179
    aget-wide v9, v8, v6

    cmp-long v8, v9, v4

    if-gtz v8, :cond_4f

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzale;->zzj:[Z

    .line 180
    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4e

    iput v6, v3, Lcom/google/android/gms/internal/ads/zzakn;->zzi:I

    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4f
    add-int/lit8 v14, v14, 0x1

    goto :goto_34

    :cond_50
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzz:J

    goto/16 :goto_0

    .line 181
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfu;->zzb(Lcom/google/android/gms/internal/ads/zzfu;)V

    goto/16 :goto_0

    .line 183
    :cond_52
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

    return-void
.end method

.method private static zzk(I)I
    .locals 2

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1b

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected negative value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzer;ILcom/google/android/gms/internal/ads/zzale;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result p1

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzakh;->$r8$clinit:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    .line 6
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzale;->zze:I

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    .line 8
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzale;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzale;->zzo:Z

    return-void

    .line 7
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p0, p0, 0x3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    add-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Senc sample count "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is different from fragment sample count"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    .line 3
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzer;J)Landroid/util/Pair;
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v7

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v10, v5

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v3

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    const-wide/32 v5, 0xf4240

    .line 7
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 10
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    new-array v14, v1, [I

    new-array v15, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v9, 0x0

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move v10, v9

    :goto_2
    if-ge v10, v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    const/high16 v11, -0x80000000

    and-int/2addr v11, v9

    if-nez v11, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v20

    const v11, 0x7fffffff

    and-int/2addr v9, v11

    .line 15
    aput v9, v14, v10

    .line 16
    aput-wide v16, v15, v10

    .line 17
    aput-wide v18, v6, v10

    add-long v3, v3, v20

    move-object v9, v5

    move-object v11, v6

    const-wide/32 v5, 0xf4240

    move-object/from16 v18, v9

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v2, v11

    move-object/from16 v11, v18

    .line 18
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    .line 19
    aget-wide v19, v2, v10

    sub-long v19, v5, v19

    aput-wide v19, v11, v10

    const/4 v9, 0x4

    .line 20
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 21
    aget v9, v14, v10

    move/from16 p1, v1

    int-to-long v0, v9

    add-long v16, v16, v0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v18, v5

    move-object v5, v11

    move-object v6, v2

    const/4 v2, 0x4

    goto :goto_2

    .line 13
    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2
    move-object v11, v5

    move-object v2, v6

    .line 23
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-direct {v1, v14, v15, v11, v2}, Lcom/google/android/gms/internal/ads/zzaei;-><init>([I[J[J[J)V

    .line 24
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static zzn(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzq;
    .locals 19

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    move-object/from16 v5, p0

    .line 2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfv;

    .line 3
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzer;

    .line 6
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :goto_1
    move/from16 v16, v3

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 7
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v9

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v10

    const-string v11, "PsshAtomUtil"

    if-eq v10, v9, :cond_2

    .line 10
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x34

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v7, v8

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Advertised atom size ("

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") does not match buffer size: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    if-eq v9, v8, :cond_3

    .line 12
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x17

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Atom type is not pssh: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 14
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1a

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unsupported pssh version: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v8, v9, :cond_6

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v9

    new-array v12, v9, [Ljava/util/UUID;

    move v13, v1

    :goto_3
    if-ge v13, v9, :cond_5

    new-instance v14, Ljava/util/UUID;

    move/from16 v16, v3

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v2

    move-object/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v12

    invoke-direct {v14, v2, v3, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v14, v17, v18

    add-int/lit8 v13, v18, 0x1

    move/from16 v3, v16

    move-object/from16 v12, v17

    goto :goto_3

    :cond_5
    move-object/from16 v17, v12

    :goto_4
    move/from16 v16, v3

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 18
    :goto_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v2

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x31

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Atom data size ("

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the bytes left: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-array v3, v2, [B

    .line 21
    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaky;

    invoke-direct {v2, v10, v8, v3, v12}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    :goto_6
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    .line 24
    :cond_8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaky;->zza:Ljava/util/UUID;

    :goto_7
    if-nez v2, :cond_9

    .line 6
    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzp;

    .line 23
    const-string v7, "video/mp4"

    const/4 v15, 0x0

    invoke-direct {v3, v2, v15, v7, v6}, Lcom/google/android/gms/internal/ads/zzp;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    move/from16 v16, v3

    :goto_8
    const/4 v15, 0x0

    :goto_9
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    if-nez v4, :cond_c

    return-object v15

    .line 21
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzq;

    .line 25
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static final zzo(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaki;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaki;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaki;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzagc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzr:Lcom/google/android/gms/internal/ads/zzguf;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzr:Lcom/google/android/gms/internal/ads/zzguf;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzd:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzc:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzamg;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzamd;)V

    move-object p1, v2

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 v3, 0x5

    .line 3
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 5
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzako;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    .line 6
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 8
    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    .line 9
    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 11
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    const v4, 0x656d7367

    const/4 v5, 0x2

    const v6, 0x73696478

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v2, :cond_34

    const-string v11, "FragmentedMp4Extractor"

    if-eq v2, v9, :cond_29

    const-wide v12, 0x7fffffffffffffffL

    const/4 v4, 0x3

    if-eq v2, v5, :cond_24

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzC:Lcom/google/android/gms/internal/ads/zzakn;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    move-wide v13, v12

    const/4 v15, 0x0

    move-object v12, v7

    :goto_1
    if-ge v15, v6, :cond_3

    .line 2
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/ads/zzakn;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzakn;->zzk()Z

    move-result v16

    if-nez v16, :cond_0

    iget v3, v5, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzalf;->zzb:I

    if-eq v3, v10, :cond_2

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzakn;->zzk()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v5, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzale;->zzd:I

    if-ne v3, v10, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzakn;->zze()J

    move-result-wide v19

    cmp-long v3, v19, v13

    if-gez v3, :cond_2

    move-object v12, v5

    move-wide/from16 v13, v19

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v17

    goto :goto_1

    :cond_3
    move/from16 v17, v5

    if-nez v12, :cond_5

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzx:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_4

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

    goto :goto_0

    .line 4
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 88
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 89
    :cond_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzakn;->zze()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-int v2, v2

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 90
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 91
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzako;->zzC:Lcom/google/android/gms/internal/ads/zzakn;

    move-object v2, v12

    goto :goto_3

    :cond_7
    move/from16 v17, v5

    :goto_3
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    const/4 v5, 0x4

    if-ne v3, v4, :cond_10

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzf()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    .line 93
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v6, "video/avc"

    .line 94
    invoke-static {v3, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "video/hevc"

    .line 95
    invoke-static {v3, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzG:Z

    .line 96
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzi:I

    if-ge v3, v6, :cond_d

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    .line 97
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzj()Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    .line 102
    :cond_9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzald;->zzd:I

    if-eqz v1, :cond_a

    .line 99
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    :cond_a
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    .line 100
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzale;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 102
    :cond_b
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzh()Z

    move-result v1

    if-nez v1, :cond_c

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzC:Lcom/google/android/gms/internal/ads/zzakn;

    :cond_c
    move v1, v4

    goto/16 :goto_11

    .line 103
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzh:I

    if-ne v3, v9, :cond_e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    .line 104
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 105
    :cond_e
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    const-string v6, "audio/ac4"

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    const/4 v6, 0x7

    .line 106
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzakn;->zzi(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzako;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    .line 107
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzady;->zzc(ILcom/google/android/gms/internal/ads/zzer;)V

    .line 108
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-interface {v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    const/4 v6, 0x0

    goto :goto_5

    .line 141
    :cond_f
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    const/4 v6, 0x0

    .line 109
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzakn;->zzi(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    .line 108
    :goto_5
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    .line 110
    :cond_10
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    .line 111
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzd()J

    move-result-wide v10

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzk:I

    if-nez v8, :cond_11

    :goto_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    if-ge v3, v5, :cond_1d

    sub-int/2addr v5, v3

    const/4 v12, 0x0

    .line 113
    invoke-interface {v6, v1, v5, v12}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    goto :goto_6

    :cond_11
    const/4 v12, 0x0

    .line 152
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzako;->zzh:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v14

    .line 114
    aput-byte v12, v14, v12

    .line 115
    aput-byte v12, v14, v9

    .line 116
    aput-byte v12, v14, v17

    rsub-int/lit8 v12, v8, 0x4

    :goto_7
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    if-ge v15, v4, :cond_1d

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    if-nez v4, :cond_18

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 117
    array-length v4, v4

    if-gtz v4, :cond_13

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzG:Z

    if-nez v4, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v4, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    .line 118
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgm;->zzc(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    add-int v15, v8, v4

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    sub-int/2addr v7, v9

    if-le v15, v7, :cond_14

    goto :goto_8

    :cond_14
    :goto_a
    add-int v7, v8, v4

    .line 119
    invoke-interface {v1, v14, v12, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    const/4 v7, 0x0

    .line 120
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 121
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v9

    if-ltz v9, :cond_17

    sub-int/2addr v9, v4

    .line 153
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    .line 122
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 123
    invoke-interface {v6, v9, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    add-int/2addr v7, v12

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 124
    array-length v7, v7

    if-lez v7, :cond_15

    if-lez v4, :cond_15

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    aget-byte v9, v14, v5

    .line 125
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzgm;->zzb(Lcom/google/android/gms/internal/ads/zzv;B)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto :goto_b

    :cond_15
    const/4 v7, 0x0

    :goto_b
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzH:Z

    .line 126
    invoke-interface {v6, v13, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    if-lez v4, :cond_16

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzG:Z

    if-nez v7, :cond_16

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    .line 127
    invoke-static {v14, v5, v4, v7}, Lcom/google/android/gms/internal/ads/zzgm;->zzd([BIILcom/google/android/gms/internal/ads/zzv;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzG:Z

    move v9, v4

    const/4 v4, 0x3

    const/4 v7, 0x0

    goto :goto_7

    :cond_16
    :goto_c
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7

    .line 121
    :cond_17
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 153
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 127
    :cond_18
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzH:Z

    if-eqz v7, :cond_1b

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzi:Lcom/google/android/gms/internal/ads/zzer;

    .line 128
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    const/4 v15, 0x0

    .line 129
    invoke-interface {v1, v4, v15, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    .line 130
    invoke-interface {v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v9

    move/from16 p2, v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v5

    .line 131
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BI)I

    move-result v5

    .line 132
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 133
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzq:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_19

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    .line 134
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgq;->zzb()I

    move-result v9

    if-eqz v9, :cond_1a

    .line 135
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzgq;->zza(I)V

    goto :goto_d

    .line 140
    :cond_19
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgq;->zzb()I

    move-result v15

    if-eq v15, v5, :cond_1a

    .line 137
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzgq;->zza(I)V

    .line 135
    :cond_1a
    :goto_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    .line 138
    invoke-virtual {v5, v10, v11, v7}, Lcom/google/android/gms/internal/ads/zzgq;->zzc(JLcom/google/android/gms/internal/ads/zzer;)V

    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzg()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1c

    .line 140
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgq;->zze()V

    goto :goto_e

    :cond_1b
    move/from16 p2, v5

    const/4 v15, 0x0

    .line 141
    invoke-interface {v6, v1, v4, v15}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v4

    .line 140
    :cond_1c
    :goto_e
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzF:I

    move/from16 v5, p2

    goto :goto_c

    .line 142
    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzg()I

    move-result v1

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzG:Z

    if-nez v3, :cond_1e

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_1e
    move/from16 v22, v1

    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzj()Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzald;->zzc:Lcom/google/android/gms/internal/ads/zzagg;

    move-object/from16 v25, v1

    goto :goto_f

    :cond_1f
    const/16 v25, 0x0

    :goto_f
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzD:I

    const/16 v24, 0x0

    move/from16 v23, v1

    move-object/from16 v19, v6

    move-wide/from16 v20, v10

    .line 144
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    :cond_20
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzo:Ljava/util/ArrayDeque;

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzakm;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    .line 147
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzakm;->zzc:I

    sub-int/2addr v3, v8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    .line 148
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzakm;->zza:J

    .line 149
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzakm;->zzb:Z

    if-eqz v1, :cond_21

    add-long v3, v3, v20

    :cond_21
    move-wide v5, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 150
    array-length v3, v1

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v3, :cond_20

    aget-object v4, v1, v11

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 151
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 152
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzh()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzC:Lcom/google/android/gms/internal/ads/zzakn;

    :cond_23
    const/4 v1, 0x3

    .line 102
    :goto_11
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    const/16 v18, 0x0

    return v18

    .line 14
    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v4, v3, :cond_26

    .line 83
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzale;->zzo:Z

    if-eqz v7, :cond_25

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzale;->zzc:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_25

    .line 84
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzakn;

    move-wide v12, v6

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    if-nez v5, :cond_27

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    goto/16 :goto_0

    :cond_27
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    sub-long/2addr v12, v2

    long-to-int v2, v12

    if-ltz v2, :cond_28

    .line 85
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v5

    const/4 v15, 0x0

    .line 86
    invoke-interface {v1, v4, v15, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 87
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iput-boolean v15, v2, Lcom/google/android/gms/internal/ads/zzale;->zzo:Z

    goto/16 :goto_0

    .line 84
    :cond_28
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 164
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 109
    :cond_29
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v9, v5

    sub-long/2addr v2, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzw:Lcom/google/android/gms/internal/ads/zzer;

    long-to-int v2, v2

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    .line 35
    invoke-interface {v1, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfv;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(ILcom/google/android/gms/internal/ads/zzer;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfu;->zza(Lcom/google/android/gms/internal/ads/zzfv;)V

    goto/16 :goto_18

    .line 81
    :cond_2a
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    if-ne v3, v6, :cond_2b

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    .line 38
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzako;->zzm(Lcom/google/android/gms/internal/ads/zzer;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzq:Lcom/google/android/gms/internal/ads/zzaej;

    .line 39
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaej;->zza(Lcom/google/android/gms/internal/ads/zzaei;)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzL:Z

    if-nez v3, :cond_33

    .line 40
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzB:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    .line 41
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafy;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzL:Z

    goto/16 :goto_18

    :cond_2b
    if-ne v3, v4, :cond_33

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 42
    array-length v3, v3

    if-eqz v3, :cond_33

    .line 43
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v3

    .line 45
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakh;->zza(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_2d

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2c

    .line 79
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping unsupported emsg version: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 56
    :cond_2c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v24

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v20

    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v22, 0xf4240

    .line 58
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    .line 60
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v10

    const/4 v15, 0x0

    .line 62
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v12

    .line 162
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide v9, v4

    move-wide v7, v6

    :goto_13
    move-object/from16 v21, v3

    move-object/from16 v22, v12

    goto :goto_15

    :cond_2d
    const/4 v15, 0x0

    .line 46
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzM(C)Ljava/lang/String;

    move-result-object v12

    .line 160
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v24

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v20

    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v22, 0xf4240

    .line 52
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzako;->zzB:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2e

    add-long/2addr v8, v6

    goto :goto_14

    :cond_2e
    move-wide v8, v4

    .line 53
    :goto_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    .line 54
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v13

    move-wide/from16 v23, v10

    move-wide/from16 v25, v13

    move-wide/from16 v28, v8

    move-wide v9, v6

    move-wide/from16 v7, v28

    goto :goto_13

    .line 66
    :goto_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v3

    new-array v3, v3, [B

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v6

    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 68
    new-instance v20, Lcom/google/android/gms/internal/ads/zzahy;

    move-object/from16 v27, v3

    invoke-direct/range {v20 .. v27}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v20

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzl:Lcom/google/android/gms/internal/ads/zzahz;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzer;

    .line 69
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzahz;->zza(Lcom/google/android/gms/internal/ads/zzahy;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    .line 70
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 71
    array-length v11, v3

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v11, :cond_2f

    aget-object v13, v3, v12

    const/4 v15, 0x0

    .line 72
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 73
    invoke-interface {v13, v6, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_2f
    cmp-long v3, v7, v4

    if-nez v3, :cond_30

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzo:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzakm;

    const/4 v6, 0x1

    invoke-direct {v4, v9, v10, v6, v2}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(JZI)V

    .line 74
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    goto :goto_18

    :cond_30
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzo:Ljava/util/ArrayDeque;

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    new-instance v4, Lcom/google/android/gms/internal/ads/zzakm;

    const/4 v15, 0x0

    invoke-direct {v4, v7, v8, v15, v2}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(JZI)V

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    goto :goto_18

    :cond_31
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzako;->zzJ:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 77
    array-length v4, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_33

    aget-object v6, v3, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    move v10, v2

    .line 78
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 80
    :cond_32
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 37
    :cond_33
    :goto_18
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    .line 81
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzako;->zzj(J)V

    goto/16 :goto_0

    :cond_34
    move/from16 v17, v5

    .line 80
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    if-nez v2, :cond_37

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    const/4 v5, 0x1

    const/4 v15, 0x0

    .line 7
    invoke-interface {v1, v3, v15, v8, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzb([BIIZ)Z

    move-result v3

    if-nez v3, :cond_36

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzM:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_35

    move-object/from16 v3, p2

    iput-wide v9, v3, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzako;->zzM:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzq:Lcom/google/android/gms/internal/ads/zzaej;

    .line 154
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaej;->zzb()Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    return v5

    :cond_35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgq;->zze()V

    const/16 v16, -0x1

    return v16

    :cond_36
    move-object/from16 v3, p2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    const/4 v15, 0x0

    .line 8
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    goto :goto_19

    :cond_37
    move-object/from16 v3, p2

    :goto_19
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    const-wide/16 v15, 0x1

    cmp-long v2, v13, v15

    if-nez v2, :cond_38

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    .line 11
    invoke-interface {v1, v5, v8, v8}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    goto :goto_1b

    :cond_38
    cmp-long v2, v13, v9

    if-nez v2, :cond_3b

    .line 159
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v9

    cmp-long v2, v9, v11

    if-nez v2, :cond_3a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfu;

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzfu;->zza:J

    goto :goto_1a

    :cond_39
    move-wide v9, v11

    :cond_3a
    :goto_1a
    cmp-long v2, v9, v11

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v13

    sub-long/2addr v9, v13

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v13, v2

    add-long/2addr v9, v13

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    .line 12
    :cond_3b
    :goto_1b
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v13, v2

    cmp-long v5, v9, v13

    if-gez v5, :cond_3c

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    const v7, 0x66726565

    if-ne v5, v7, :cond_3d

    if-ne v2, v8, :cond_3d

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    move-wide v9, v13

    :cond_3c
    move-wide v15, v11

    goto :goto_1c

    .line 164
    :cond_3d
    const-string v1, "Atom size less than header length (unsupported)."

    .line 156
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 12
    :goto_1c
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzako;->zzM:J

    cmp-long v2, v11, v15

    if-eqz v2, :cond_3f

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    if-ne v2, v6, :cond_3e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    long-to-int v4, v9

    .line 15
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    const/4 v15, 0x0

    .line 16
    invoke-static {v4, v15, v5, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v11, v5

    sub-long/2addr v9, v11

    long-to-int v5, v9

    .line 17
    invoke-interface {v1, v4, v8, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfv;

    invoke-direct {v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(ILcom/google/android/gms/internal/ads/zzer;)V

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzm()J

    move-result-wide v4

    .line 18
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzako;->zzm(Lcom/google/android/gms/internal/ads/zzer;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzq:Lcom/google/android/gms/internal/ads/zzaej;

    .line 19
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaej;->zza(Lcom/google/android/gms/internal/ads/zzaei;)V

    goto :goto_1d

    :cond_3e
    sub-long/2addr v9, v13

    long-to-int v2, v9

    const/4 v4, 0x1

    .line 20
    invoke-interface {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zze(IZ)Z

    .line 21
    :goto_1d
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

    goto/16 :goto_0

    .line 20
    :cond_3f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v9

    sub-long/2addr v9, v13

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    const v5, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v2, v7, :cond_40

    if-ne v2, v5, :cond_41

    :cond_40
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzL:Z

    if-nez v2, :cond_41

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzI:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzafx;

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzako;->zzA:J

    .line 22
    invoke-direct {v11, v12, v13, v9, v10}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzL:Z

    :cond_41
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    if-ne v2, v7, :cond_42

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v11, :cond_42

    .line 24
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iput-wide v9, v13, Lcom/google/android/gms/internal/ads/zzale;->zzc:J

    iput-wide v9, v13, Lcom/google/android/gms/internal/ads/zzale;->zzb:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    :cond_42
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    if-ne v2, v5, :cond_43

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzako;->zzC:Lcom/google/android/gms/internal/ads/zzakn;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    add-long/2addr v9, v4

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzako;->zzx:J

    move/from16 v2, v17

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    goto/16 :goto_0

    :cond_43
    const v5, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v2, v5, :cond_4a

    const v5, 0x7472616b

    if-eq v2, v5, :cond_4a

    const v5, 0x6d646961

    if-eq v2, v5, :cond_4a

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_4a

    const v5, 0x7374626c

    if-eq v2, v5, :cond_4a

    if-eq v2, v7, :cond_4a

    const v5, 0x74726166

    if-eq v2, v5, :cond_4a

    const v5, 0x6d766578

    if-eq v2, v5, :cond_4a

    const v5, 0x65647473

    if-eq v2, v5, :cond_4a

    if-ne v2, v9, :cond_44

    goto/16 :goto_20

    :cond_44
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v9, 0x7fffffff

    if-eq v2, v5, :cond_47

    const v5, 0x6d646864

    if-eq v2, v5, :cond_47

    const v5, 0x6d766864

    if-eq v2, v5, :cond_47

    if-eq v2, v6, :cond_47

    const v5, 0x73747364

    if-eq v2, v5, :cond_47

    const v5, 0x73747473

    if-eq v2, v5, :cond_47

    const v5, 0x63747473

    if-eq v2, v5, :cond_47

    const v5, 0x73747363

    if-eq v2, v5, :cond_47

    const v5, 0x7374737a

    if-eq v2, v5, :cond_47

    const v5, 0x73747a32

    if-eq v2, v5, :cond_47

    const v5, 0x7374636f

    if-eq v2, v5, :cond_47

    const v5, 0x636f3634

    if-eq v2, v5, :cond_47

    const v5, 0x73747373

    if-eq v2, v5, :cond_47

    const v5, 0x74666474

    if-eq v2, v5, :cond_47

    const v5, 0x74666864

    if-eq v2, v5, :cond_47

    const v5, 0x746b6864

    if-eq v2, v5, :cond_47

    const v5, 0x74726578

    if-eq v2, v5, :cond_47

    const v5, 0x7472756e

    if-eq v2, v5, :cond_47

    const v5, 0x70737368    # 3.013775E29f

    if-eq v2, v5, :cond_47

    const v5, 0x7361697a

    if-eq v2, v5, :cond_47

    const v5, 0x7361696f

    if-eq v2, v5, :cond_47

    const v5, 0x73656e63

    if-eq v2, v5, :cond_47

    const v5, 0x75756964

    if-eq v2, v5, :cond_47

    const v5, 0x73626770

    if-eq v2, v5, :cond_47

    const v5, 0x73677064

    if-eq v2, v5, :cond_47

    const v5, 0x656c7374

    if-eq v2, v5, :cond_47

    const v5, 0x6d656864

    if-eq v2, v5, :cond_47

    if-eq v2, v4, :cond_47

    const v4, 0x75647461

    if-eq v2, v4, :cond_47

    const v4, 0x6b657973

    if-eq v2, v4, :cond_47

    const v4, 0x696c7374

    if-ne v2, v4, :cond_45

    goto :goto_1f

    .line 34
    :cond_45
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    cmp-long v2, v4, v9

    if-gtz v2, :cond_46

    const/4 v2, 0x0

    .line 159
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzw:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    goto/16 :goto_0

    .line 34
    :cond_46
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 159
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 32
    :cond_47
    :goto_1f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    if-ne v2, v8, :cond_49

    .line 157
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    cmp-long v2, v4, v9

    if-gtz v2, :cond_48

    .line 33
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    long-to-int v4, v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    const/4 v15, 0x0

    .line 34
    invoke-static {v4, v15, v5, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzw:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzako;->zzs:I

    goto/16 :goto_0

    .line 157
    :cond_48
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 158
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 32
    :cond_49
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 24
    :cond_4a
    :goto_20
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    add-long/2addr v4, v6

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4b

    if-ne v2, v9, :cond_4b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    .line 25
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    const/4 v15, 0x0

    .line 26
    invoke-interface {v1, v6, v15, v8}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakh;->zzf(Lcom/google/android/gms/internal/ads/zzer;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v2

    .line 28
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 29
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    :cond_4b
    const-wide/16 v6, -0x8

    add-long/2addr v4, v6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfu;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzako;->zzt:I

    .line 30
    invoke-direct {v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzfu;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzako;->zzu:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzako;->zzv:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-nez v2, :cond_4c

    .line 31
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzako;->zzj(J)V

    goto/16 :goto_0

    .line 32
    :cond_4c
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzf:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakn;->zzc()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzo:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzy:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzp:Lcom/google/android/gms/internal/ads/zzgq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzd()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzako;->zzz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->zzn:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzako;->zzi()V

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

.method final synthetic zzh(JLcom/google/android/gms/internal/ads/zzer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzK:[Lcom/google/android/gms/internal/ads/zzagh;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaeh;->zza(JLcom/google/android/gms/internal/ads/zzer;[Lcom/google/android/gms/internal/ads/zzagh;)V

    return-void
.end method
