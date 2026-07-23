.class public final Lcom/google/ads/interactivemedia/v3/internal/zzux;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

.field static final zzd:I = 0x1

.field static final zze:I = 0x1

.field static final zzf:I = 0x2


# instance fields
.field final zzb:Ljava/util/List;

.field final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzur;

.field private final zzh:Ljava/lang/ThreadLocal;

.field private final zzi:Ljava/util/concurrent/ConcurrentMap;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/internal/zzye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    .line 1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzd:I

    .line 2
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    .line 3
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 5
    sget v19, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zze:I

    sget v20, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzf:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object/from16 v17, v16

    move-object/from16 v18, v16

    move-object/from16 v21, v16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/zzux;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwp;ILjava/util/Map;ZZZZLcom/google/ads/interactivemedia/v3/internal/zzur;Lcom/google/ads/interactivemedia/v3/internal/zzvm;ZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwp;ILjava/util/Map;ZZZZLcom/google/ads/interactivemedia/v3/internal/zzur;Lcom/google/ads/interactivemedia/v3/internal/zzvm;ZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/ThreadLocal;

    invoke-direct {p4}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzh:Ljava/lang/ThreadLocal;

    new-instance p4, Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-direct {p4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzi:Ljava/util/concurrent/ConcurrentMap;

    new-instance p6, Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    const/4 p4, 0x1

    move-object/from16 p5, p21

    invoke-direct {p6, p3, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    new-instance p3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzW:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p19 .. p19}, Lcom/google/ads/interactivemedia/v3/internal/zzyp;->zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p4

    .line 11
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p4, p18

    .line 13
    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzC:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 14
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 15
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 16
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 17
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 18
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    sget-object p7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v0, Ljava/lang/Long;

    invoke-static {p7, v0, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p7

    .line 19
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_0

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzv:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzus;

    .line 20
    invoke-direct {p7, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzus;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;)V

    .line 19
    :goto_0
    const-class v0, Ljava/lang/Double;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p7

    .line 21
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_1

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzu:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    goto :goto_1

    .line 59
    :cond_1
    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzut;

    .line 22
    invoke-direct {p7, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzut;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;)V

    .line 21
    :goto_1
    const-class v0, Ljava/lang/Float;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p7

    .line 23
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p20 .. p20}, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p7

    .line 24
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 25
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 26
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    invoke-direct {p7, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvp;)V

    .line 27
    invoke-virtual {p7}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p7

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p7

    .line 28
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    invoke-direct {p7, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzuv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvp;)V

    .line 29
    invoke-virtual {p7}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p4

    const-class p7, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p7, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p4

    .line 30
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 31
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzx:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 32
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzE:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 33
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzG:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 34
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzz:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-static {p4, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p4

    .line 35
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzA:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-static {p4, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p4

    .line 36
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Lcom/google/ads/interactivemedia/v3/internal/zzww;

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzB:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-static {p4, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p4

    .line 37
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzI:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 38
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzK:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 39
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzO:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 40
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzQ:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 41
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzU:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 42
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzM:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 43
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 44
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzya;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 45
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzS:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 46
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-boolean p4, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zza:Z

    if-eqz p4, :cond_2

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 48
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 49
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 50
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzxu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 51
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 52
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zzxw;

    invoke-direct {p4, p6}, Lcom/google/ads/interactivemedia/v3/internal/zzxw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;)V

    .line 53
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zzyl;

    const/4 p7, 0x0

    invoke-direct {p4, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzyl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Z)V

    .line 54
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zzye;

    .line 55
    invoke-direct {p4, p6}, Lcom/google/ads/interactivemedia/v3/internal/zzye;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;)V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzye;

    .line 56
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p7, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzX:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 57
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    move-object p8, p1

    move-object p9, p4

    move-object p10, p5

    move-object p5, p7

    move p7, p2

    invoke-direct/range {p5 .. p10}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;ILcom/google/ads/interactivemedia/v3/internal/zzwp;Lcom/google/ads/interactivemedia/v3/internal/zzye;Ljava/util/List;)V

    .line 58
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb:Ljava/util/List;

    return-void
.end method

.method static zza(D)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit16 v1, v1, 0x90

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x32

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{serializeNulls:false,factories:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 8

    .line 1
    const-string v0, "type must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzi:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzh:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-nez v0, :cond_8

    move v0, v2

    .line 5
    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzuw;

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;-><init>()V

    .line 7
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb:Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 9
    invoke-interface {v6, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvp;)V

    .line 11
    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzh:Ljava/lang/ThreadLocal;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    move v2, v3

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v2, :cond_5

    .line 14
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzi:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    return-object v6

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GSON (2.13.2) cannot handle "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    if-nez v0, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzh:Ljava/lang/ThreadLocal;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 13
    :goto_3
    throw p1

    :cond_8
    return-object v0
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvq;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 4

    .line 1
    const-string v0, "skipPast must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "type must not be null"

    .line 2
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzye;

    .line 3
    invoke-virtual {v0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    if-nez v1, :cond_2

    if-ne v3, p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v3, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_3
    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GSON cannot serialize or deserialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzxn;->zzb(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn(Lcom/google/ads/interactivemedia/v3/internal/zzur;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzr(Z)V

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzt(Z)V

    .line 8
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zze(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzabd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzabd;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p2

    const-string v0, "AssertionError (GSON 2.13.2): "

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzq()Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzq()Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    .line 2
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzs()Z

    move-result v2

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzu()Z

    move-result v3

    const/4 v4, 0x1

    .line 3
    invoke-virtual {p3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzr(Z)V

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzt(Z)V

    .line 5
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    .line 9
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzr(Z)V

    .line 10
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzt(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 7
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    .line 9
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzr(Z)V

    .line 10
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzt(Z)V

    .line 11
    throw p1
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzabb;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;-><init>(Ljava/io/Reader;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzt(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzabb;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    const-string p2, "JSON document was not fully consumed."

    .line 6
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzabe; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 7
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 8
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_2
    return-object p2
.end method

.method public final zzg(Lcom/google/ads/interactivemedia/v3/internal/zzabb;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "\nVerify that the adapter was registered for the correct type."

    const-string v1, " but got instance of "

    const-string v2, "\' returned wrong type; requested "

    const-string v3, "Type adapter \'"

    const-string v4, "AssertionError (GSON 2.13.2): "

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzu()Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzu()Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    move-result-object v6

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzt(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v7

    .line 4
    invoke-virtual {v7, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_1

    const-class v9, Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :catch_0
    move-exception p2

    goto/16 :goto_2

    :catch_1
    move-exception p2

    goto/16 :goto_3

    :catch_2
    move-exception p2

    goto/16 :goto_4

    :catch_3
    move-exception p2

    goto/16 :goto_5

    .line 6
    :cond_1
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_2

    const-class v9, Ljava/lang/Float;

    goto :goto_0

    :cond_2
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_3

    const-class v9, Ljava/lang/Byte;

    goto :goto_0

    :cond_3
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_4

    const-class v9, Ljava/lang/Double;

    goto :goto_0

    :cond_4
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_5

    const-class v9, Ljava/lang/Long;

    goto :goto_0

    :cond_5
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_6

    const-class v9, Ljava/lang/Character;

    goto :goto_0

    :cond_6
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_7

    const-class v9, Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_8

    const-class v9, Ljava/lang/Short;

    goto :goto_0

    :cond_8
    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_9

    const-class v9, Ljava/lang/Void;

    :cond_9
    :goto_0
    if-eqz v8, :cond_b

    .line 5
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_1

    :cond_a
    new-instance v9, Ljava/lang/ClassCastException;

    .line 7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 9
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v9, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_b
    :goto_1
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzt(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    return-object v8

    .line 11
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :goto_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 11
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :goto_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 12
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_4
    move-exception p2

    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_c

    .line 6
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzt(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_c
    :try_start_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 13
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :goto_6
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzt(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V

    .line 14
    throw p2
.end method
