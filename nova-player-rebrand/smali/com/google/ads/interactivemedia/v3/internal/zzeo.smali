.class public final Lcom/google/ads/interactivemedia/v3/internal/zzeo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzen;


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeo;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzem;Landroid/content/Context;ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeo;->zza:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzb(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
