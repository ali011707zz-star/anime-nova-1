.class public abstract Lcom/google/ads/interactivemedia/v3/impl/zzba;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;


# instance fields
.field private zza:Landroid/view/ViewGroup;

.field private zzb:Ljava/util/Collection;

.field private zzd:Ljava/util/Map;

.field private final zze:Ljava/util/Set;

.field private zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzj()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb:Ljava/util/Collection;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzd:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzg:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final claim()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzg:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "A given DisplayContainer may only be used once"

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzb(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzg:Z

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

    return-void
.end method

.method public final getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getPauseAdSlot()Lcom/google/ads/interactivemedia/v3/api/AdSlot;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final registerFriendlyObstruction(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzaz;->zza(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompanionSlots(Ljava/util/Collection;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzj()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    .line 2
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzd:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb:Ljava/util/Collection;

    return-void
.end method

.method public final unregisterAllFriendlyObstructions()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzaz;->zzb()V

    :cond_0
    return-void
.end method

.method public final zza()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzd:Ljava/util/Map;

    return-object v0
.end method

.method public final zzb()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/impl/zzaz;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzaz;

    return-void
.end method
