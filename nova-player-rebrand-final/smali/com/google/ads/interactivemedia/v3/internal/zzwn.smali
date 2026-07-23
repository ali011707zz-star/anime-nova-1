.class public final Lcom/google/ads/interactivemedia/v3/internal/zzwn;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzb:Ljava/util/List;

    return-void
.end method

.method static zza(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0xe1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#r8-abstract-class"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zzc(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzd(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzd(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzk(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzd(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    .line 2
    new-instance v3, Ljava/lang/RuntimeException;

    .line 5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzd(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Z)Lcom/google/ads/interactivemedia/v3/internal/zzxg;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzuz;

    if-eqz v2, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzwm;

    invoke-direct {p1, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzuz;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzuz;

    if-nez v0, :cond_19

    const-class v0, Ljava/util/EnumSet;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwg;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 11
    :cond_1
    const-class v0, Ljava/util/EnumMap;

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwh;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwh;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzb:Ljava/util/List;

    .line 6
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxk;->zzb(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    :catch_0
    move-object v5, v2

    goto :goto_2

    .line 8
    :cond_4
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v4, :cond_6

    .line 9
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzxj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzxj;

    invoke-virtual {v5, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzxj;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    .line 10
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit16 v5, v5, 0x10a

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to invoke no-args constructor of "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzwi;

    invoke-direct {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzwi;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    if-ne v0, v4, :cond_8

    .line 12
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzf(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    invoke-direct {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzwk;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_2

    :cond_7
    move v0, v4

    :cond_8
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    invoke-direct {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_2
    if-nez v5, :cond_18

    .line 7
    const-class v3, Ljava/util/Collection;

    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-class v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    goto/16 :goto_5

    .line 30
    :cond_9
    const-class v1, Ljava/util/LinkedHashSet;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvu;

    goto/16 :goto_5

    :cond_a
    const-class v1, Ljava/util/TreeSet;

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    goto :goto_5

    :cond_b
    const-class v1, Ljava/util/ArrayDeque;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvw;

    goto :goto_5

    :cond_c
    const-class v3, Ljava/util/Map;

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-class v3, Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 20
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_d

    goto :goto_3

    .line 21
    :cond_d
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 22
    array-length v3, v1

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 23
    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzb(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_f

    .line 20
    :goto_3
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    goto :goto_5

    .line 22
    :cond_f
    :goto_4
    const-class v1, Ljava/util/LinkedHashMap;

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvy;

    goto :goto_5

    :cond_10
    const-class v1, Ljava/util/TreeMap;

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzvz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvz;

    goto :goto_5

    :cond_11
    const-class v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwa;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwa;

    goto :goto_5

    :cond_12
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwb;

    :cond_13
    :goto_5
    if-eqz v2, :cond_14

    return-object v2

    .line 28
    :cond_14
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwd;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_15
    const-string v1, "Unable to create instance of "

    if-nez p2, :cond_16

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x5a

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; Register an InstanceCreator or a TypeAdapter for this type."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_16
    if-eq v0, v4, :cond_17

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 p2, p2, 0xd3

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzwf;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwf;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_17
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzwc;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwc;-><init>(Ljava/lang/Class;)V

    return-object p2

    :cond_18
    return-object v5

    .line 11
    :cond_19
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvt;

    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzuz;Ljava/lang/reflect/Type;)V

    return-object p1
.end method
