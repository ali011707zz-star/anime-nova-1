.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzdu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzd:Ljava/lang/String;

    return-object v0
.end method
