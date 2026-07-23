.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvp;[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public abstract read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
.end method

.method public abstract write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
.end method
