.class public final Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

.field private final zzb:Landroid/webkit/WebView;

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

.field private final zzd:Ljava/util/HashMap;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzch;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzch;

    .line 2
    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzch;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdd;->zza()V

    const-string p3, "WebView is null"

    .line 4
    invoke-static {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzdd;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzb:Landroid/webkit/WebView;

    const-string p1, "WEB_MESSAGE_LISTENER"

    .line 5
    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    const-string p1, "omidJsSessionService"

    invoke-static {p2, p1}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    new-instance p3, Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;

    invoke-direct {p3, p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzi;-><init>(Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {p2, p1, v0, p3}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The JavaScriptSessionService cannot be supported in this WebView version."

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Z)Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;-><init>(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Z)V

    return-object p2
.end method


# virtual methods
.method public final zzb(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzc()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzb(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    return-void
.end method

.method final zzc()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zzb(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zze()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zzc()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    sget-object v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;

    sget-object v2, Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;

    sget-object v3, Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;->zzb:Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v3, v4}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzf;Lcom/google/ads/interactivemedia/omid/library/adsession/zzh;Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;Lcom/google/ads/interactivemedia/omid/library/adsession/zzk;Z)Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v3, v4, v4}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

    move-result-object v2

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;-><init>(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzc()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzb(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zza()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzcg;

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzc()Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcg;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zza()V

    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;->zzc()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
