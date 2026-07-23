.class public final Lcom/google/ads/interactivemedia/v3/internal/zzwp;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;


# instance fields
.field private zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb:Ljava/util/List;

    .line 2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzd(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzd(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwo;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzwo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwp;ZZLcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)V

    return-object v2
.end method

.method protected final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzwp;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 2
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final zzc(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x88

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzd(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzc:Ljava/util/List;

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzpb;

    .line 7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuq;->zza(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/zzpa;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzpa;

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpa;->zzb()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuq;->zzb(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final zzd(Ljava/lang/Class;Z)Z
    .locals 0

    if-nez p2, :cond_2

    .line 1
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zze(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzc:Ljava/util/List;

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb:Ljava/util/List;

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzpb;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Lcom/google/ads/interactivemedia/v3/internal/zzpb;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzwp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb:Ljava/util/List;

    .line 2
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/zzwp;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
