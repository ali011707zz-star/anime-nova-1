.class public final Lcom/google/ads/interactivemedia/v3/internal/zzye;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

.field private final zzd:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyd;-><init>([B)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyd;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyd;-><init>([B)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzd:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzvr;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    return-object p0
.end method

.method private static zze(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Z)Lcom/google/ads/interactivemedia/v3/internal/zzxg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxg;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final zzf(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzd:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Z)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Z)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 8

    .line 1
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    .line 2
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb()Z

    move-result v7

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    goto/16 :goto_3

    .line 10
    :cond_0
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    if-eqz p4, :cond_2

    .line 4
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    if-eqz p5, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p0, p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzf(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p1

    .line 6
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    const/4 v0, 0x0

    if-nez p4, :cond_4

    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-eqz p4, :cond_3

    move-object v2, v0

    goto :goto_0

    .line 9
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 p4, p4, 0x3e

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr p4, p5

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x63

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_4
    move-object p4, p1

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    move-object v2, p4

    .line 6
    :goto_0
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-eqz p4, :cond_5

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    :cond_5
    move-object v3, v0

    if-eqz p5, :cond_6

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    :goto_1
    move-object v6, p1

    goto :goto_2

    .line 9
    :cond_6
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    goto :goto_1

    .line 8
    :goto_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzzb;

    move-object v4, p2

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvj;Lcom/google/ads/interactivemedia/v3/internal/zzvb;Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvq;Z)V

    const/4 v7, 0x0

    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_7

    if-eqz v7, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    return v1

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    .line 8
    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzf(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p1

    if-ne p1, p2, :cond_5

    return v1

    :cond_5
    return v2
.end method
