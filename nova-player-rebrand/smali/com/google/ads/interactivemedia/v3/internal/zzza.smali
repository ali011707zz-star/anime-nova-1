.class final Lcom/google/ads/interactivemedia/v3/internal/zzza;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

.field private final zzb:Z

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvb;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;ZLjava/lang/Class;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-eqz v1, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    :cond_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-nez p4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x3f

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Type adapter "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement JsonSerializer or JsonDeserializer"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzb:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzza;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;

    const/4 v6, 0x1

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvj;Lcom/google/ads/interactivemedia/v3/internal/zzvb;Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvq;Z)V

    return-object v0
.end method
