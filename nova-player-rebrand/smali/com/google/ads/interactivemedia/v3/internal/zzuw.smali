.class final Lcom/google/ads/interactivemedia/v3/internal/zzuw;
.super Lcom/google/ads/interactivemedia/v3/internal/zzyy;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzyy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzvp;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzvp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Delegate is already set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    return-object v0
.end method
