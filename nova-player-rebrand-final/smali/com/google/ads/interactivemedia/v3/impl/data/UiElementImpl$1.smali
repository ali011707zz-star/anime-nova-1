.class Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl$1;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/zzvp<",
        "Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;
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

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl$1;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p2, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl$1;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;)V

    return-void
.end method
