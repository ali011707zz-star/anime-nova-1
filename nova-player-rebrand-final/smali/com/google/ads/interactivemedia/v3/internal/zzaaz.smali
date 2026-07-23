.class public final Lcom/google/ads/interactivemedia/v3/internal/zzaaz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private final zzb:Ljava/lang/reflect/Type;

.field private final zzc:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zza(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "gson.allowCapturingTypeVariables"

    .line 6
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    .line 8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzb(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc:I

    return-void

    :cond_1
    if-ne v1, v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#type-token-raw"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must only create direct subclasses of TypeToken"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zza(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    .line 13
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzb(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza:Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc:I

    return-void
.end method

.method public static zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static zze(Ljava/lang/reflect/Type;)V
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_7

    .line 6
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 7
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V

    return-void

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V

    .line 12
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 13
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    .line 15
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 16
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 17
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 19
    :try_start_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zze(Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return-void

    :cond_5
    if-eqz p0, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TypeToken captured `null` as type argument; probably a compiler / runtime bug"

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_7
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x58

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TypeToken type argument must not contain a type variable; captured type variable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declared by "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#typetoken-type-variable"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzc(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzd(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzb()Ljava/lang/reflect/Type;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb:Ljava/lang/reflect/Type;

    return-object v0
.end method
