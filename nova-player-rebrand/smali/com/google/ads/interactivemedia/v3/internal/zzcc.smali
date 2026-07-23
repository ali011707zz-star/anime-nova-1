.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzcf;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcc;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzcc;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzj()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zze()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzct;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzf(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
