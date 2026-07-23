.class final Lcom/google/ads/interactivemedia/v3/internal/zzxx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY"

    return-object v0
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/util/Date;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzya;

    .line 2
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzxz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxz;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzya;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxz;II[B)V

    return-object p1

    :cond_0
    return-object v0
.end method
