.class public final Lcom/google/ads/interactivemedia/v3/impl/zzcl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzcu;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzb:Landroid/webkit/WebView;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

.field private final zzd:Landroid/view/View;

.field private zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Set;

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzff;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzg:Z

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzb:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzd:Landroid/view/View;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzf:Ljava/util/Set;

    return-void
.end method

.method public static zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;Landroid/view/View;Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/zzcl;
    .locals 6

    .line 1
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzff;

    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzff;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzff;)V

    .line 2
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final zzi(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzf:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzj(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzj(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;->friendlyObstructions(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->omid:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->registerFriendlyObstructions:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zze:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzc()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/16 v1, 0xf

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzd:Landroid/view/View;

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;

    sget-object v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;

    sget-object v2, Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;->zzb:Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;

    const/4 v3, 0x1

    .line 5
    invoke-static {v0, v1, v2, v2, v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;Z)Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzb:Landroid/webkit/WebView;

    const-string v2, "Google1"

    const-string v4, "3.38.0"

    .line 6
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzff;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    move-result-object v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzh:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzg:Z

    if-eq v3, v5, :cond_2

    const-string v3, "false"

    goto :goto_0

    .line 17
    :cond_2
    const-string v3, "true"

    .line 6
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x7

    .line 7
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "{ssai:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v1, v4, v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzf(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;)Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzb(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzf:Ljava/util/Set;

    .line 11
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 12
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    move-result-object v4

    .line 14
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzj(Ljava/util/List;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zza()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    return-void

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzh()Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zze()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzj(Ljava/util/List;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final zze(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzg:Z

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzg()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzh()Z

    return-void
.end method

.method final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzc()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzi:Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
