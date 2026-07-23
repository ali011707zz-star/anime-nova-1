.class public final Lcom/google/ads/interactivemedia/v3/internal/zzagf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private zzb:Z

.field private final zzc:Ljava/util/List;

.field private zzd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzage;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzage;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzagf$$ExternalSyntheticThreadLocal0;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagf$$ExternalSyntheticThreadLocal0;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc:Ljava/util/List;

    const-class v0, Ljava/lang/String;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzago;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzagl;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzagl;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    move-result-object p0

    return-object p0
.end method

.method static zzb()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static varargs zzc(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;-><init>()V

    iput-object p5, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzd:[Ljava/lang/String;

    iget-boolean p3, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-nez p3, :cond_1

    goto :goto_4

    :cond_1
    if-eq p0, p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 3
    invoke-virtual {p4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    :cond_3
    move-object p5, p3

    goto :goto_1

    :cond_4
    :goto_0
    move-object p5, p4

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    goto :goto_4

    :cond_5
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-direct {p2, p0, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzh(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    :goto_2
    invoke-virtual {p5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 12
    invoke-virtual {p5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p5

    .line 13
    invoke-direct {p2, p0, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzh(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2

    .line 9
    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 5
    :catch_0
    :cond_8
    iput-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    .line 1
    :cond_9
    :goto_4
    iget-boolean p0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return p0
.end method

.method private static zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzago;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method private final zzh(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzago;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zzb:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zza:Ljava/lang/Object;

    .line 3
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzago;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    .line 7
    invoke-static {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 8
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_3

    .line 9
    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzd:[Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzagb;->zza([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/zzagg;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzagm;->zza(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagm;->zza(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_3
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    throw p3
.end method


# virtual methods
.method public final zzd(II)Lcom/google/ads/interactivemedia/v3/internal/zzagf;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    :cond_1
    return-object p0
.end method

.method public final zze(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzagf;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v0, :cond_1

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    :cond_1
    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagf;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    if-eq p1, p2, :cond_1a

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-nez p2, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    .line 2
    :cond_2
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    .line 3
    check-cast p1, [J

    check-cast p2, [J

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    .line 4
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zze(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_4
    instance-of v1, p1, [I

    if-eqz v1, :cond_6

    .line 6
    check-cast p1, [I

    check-cast p2, [I

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_5

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_5
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    .line 7
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzd(II)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_6
    instance-of v1, p1, [S

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 9
    check-cast p1, [S

    check-cast p2, [S

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_7

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_7
    move v1, v0

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v3, :cond_1a

    .line 10
    aget-short v3, p1, v1

    aget-short v4, p2, v1

    if-ne v3, v4, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11
    :cond_9
    instance-of v1, p1, [C

    if-eqz v1, :cond_c

    .line 12
    check-cast p1, [C

    check-cast p2, [C

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_a

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_a
    move v1, v0

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v3, :cond_1a

    .line 13
    aget-char v3, p1, v1

    aget-char v4, p2, v1

    if-ne v3, v4, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_c
    instance-of v1, p1, [B

    if-eqz v1, :cond_f

    .line 15
    check-cast p1, [B

    check-cast p2, [B

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_d

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_d
    move v1, v0

    :goto_6
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v3, :cond_1a

    .line 16
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    if-ne v3, v4, :cond_e

    move v3, v2

    goto :goto_7

    :cond_e
    move v3, v0

    :goto_7
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 17
    :cond_f
    instance-of v1, p1, [D

    if-eqz v1, :cond_11

    .line 18
    check-cast p1, [D

    check-cast p2, [D

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_10

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_10
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    .line 19
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zze(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 21
    :cond_11
    instance-of v1, p1, [F

    if-eqz v1, :cond_13

    .line 22
    check-cast p1, [F

    check-cast p2, [F

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_12

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_12
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    .line 23
    aget v1, p1, v0

    aget v2, p2, v0

    .line 24
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzd(II)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 25
    :cond_13
    instance-of v1, p1, [Z

    if-eqz v1, :cond_16

    .line 26
    check-cast p1, [Z

    check-cast p2, [Z

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_14

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_14
    move v1, v0

    :goto_a
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v3, :cond_1a

    .line 27
    aget-boolean v3, p1, v1

    aget-boolean v4, p2, v1

    if-ne v3, v4, :cond_15

    move v3, v2

    goto :goto_b

    :cond_15
    move v3, v0

    :goto_b
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 28
    :cond_16
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_17

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    :cond_17
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    if-eqz v1, :cond_1a

    .line 29
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 30
    :cond_18
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    return-object p0

    .line 1
    :cond_19
    :goto_d
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzb:Z

    :cond_1a
    :goto_e
    return-object p0
.end method
