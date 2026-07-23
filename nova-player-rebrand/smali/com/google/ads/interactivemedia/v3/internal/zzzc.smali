.class final Lcom/google/ads/interactivemedia/v3/internal/zzzc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzvp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

.field private final zzc:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zzc:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zzc:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    .line 2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzys;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v2

    .line 5
    :goto_1
    instance-of v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzyy;

    if-eqz v3, :cond_4

    .line 3
    move-object v3, v1

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzyy;

    .line 4
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzyy;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v3

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1

    :cond_4
    :goto_2
    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzys;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move-object v2, v0

    .line 5
    :cond_6
    :goto_4
    invoke-virtual {v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V

    return-void
.end method
