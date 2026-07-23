.class public final Lcom/google/ads/interactivemedia/v3/internal/zzyl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zzf(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 6
    aget-object v0, v0, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v3

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    :goto_1
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzzc;

    .line 9
    invoke-direct {v4, p1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzzc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Ljava/lang/reflect/Type;)V

    .line 10
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzzc;

    .line 11
    invoke-direct {v3, p1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzzc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Ljava/lang/reflect/Type;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    .line 12
    invoke-virtual {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Z)Lcom/google/ads/interactivemedia/v3/internal/zzxg;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzyk;

    .line 13
    invoke-direct {p2, p0, v4, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzyl;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Lcom/google/ads/interactivemedia/v3/internal/zzxg;)V

    return-object p2
.end method
