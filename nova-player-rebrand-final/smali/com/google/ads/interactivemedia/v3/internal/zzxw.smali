.class public final Lcom/google/ads/interactivemedia/v3/internal/zzxw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;->zze(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzzc;

    .line 6
    invoke-direct {v2, p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzzc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Ljava/lang/reflect/Type;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwn;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Z)Lcom/google/ads/interactivemedia/v3/internal/zzxg;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzxv;

    invoke-direct {p2, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvp;Lcom/google/ads/interactivemedia/v3/internal/zzxg;)V

    return-object p2
.end method
