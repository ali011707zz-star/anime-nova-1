.class public final Lcom/google/ads/interactivemedia/v3/internal/zzuy;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private zze:Z

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzur;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:I

.field private final zzi:I

.field private final zzj:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzh:I

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzd:Ljava/util/List;

    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zze:Z

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zze:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzi:I

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzf:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzj:I

    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzg:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;
    .locals 3

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/zzuz;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x47

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Class "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not implement any supported type adapter class or interface"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_6

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/zzuz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzb:Ljava/util/Map;

    .line 3
    move-object v2, p2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzuz;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-eqz v0, :cond_4

    .line 4
    :cond_3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc:Ljava/util/List;

    .line 5
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-eqz v0, :cond_5

    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object p1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot override built-in adapter for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzuy;
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zze:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/ads/interactivemedia/v3/internal/zzux;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzd:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    sget-boolean v4, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zza:Z

    move-object/from16 v20, v2

    .line 8
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzb:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v12, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zze:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzg:Ljava/util/ArrayDeque;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzi:I

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    const/16 v17, 0x2

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzj:I

    move-object/from16 v19, v3

    move-object v3, v4

    const/4 v4, 0x1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    move/from16 v21, v7

    const/4 v7, 0x0

    move/from16 v22, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object/from16 v23, v1

    invoke-direct/range {v2 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/zzux;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwp;ILjava/util/Map;ZZZZLcom/google/ads/interactivemedia/v3/internal/zzur;Lcom/google/ads/interactivemedia/v3/internal/zzvm;ZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;)V

    return-object v2
.end method

.method public final zze(Lcom/google/ads/interactivemedia/v3/internal/zzpb;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;
    .locals 3

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpb;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    return-object p0
.end method
