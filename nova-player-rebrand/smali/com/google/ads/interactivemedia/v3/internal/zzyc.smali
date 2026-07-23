.class final Lcom/google/ads/interactivemedia/v3/internal/zzyc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyb;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyb;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[B)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzb:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 2
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 3
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzd:Ljava/util/Map;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 5
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p1, v1

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 7
    aput-object v3, p1, v2

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 10
    array-length p2, p1

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/ads/interactivemedia/v3/internal/zzvs;

    .line 14
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzvs;

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;->zza()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;->zzb()[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzb:Ljava/util/Map;

    .line 17
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzb:Ljava/util/Map;

    .line 18
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzc:Ljava/util/Map;

    .line 19
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzd:Ljava/util/Map;

    .line 20
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :goto_4
    new-instance p2, Ljava/lang/AssertionError;

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzi()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Enum;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyc;->zzd:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void
.end method
