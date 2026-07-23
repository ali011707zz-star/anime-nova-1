.class public final Lcom/google/ads/interactivemedia/omid/library/adsession/zze;
.super Lcom/google/ads/interactivemedia/omid/library/adsession/zza;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzch;

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zza;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzch;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzch;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zze:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzl(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzh()Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzh()Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzcx;

    .line 5
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzd()Ljava/util/Map;

    move-result-object p2

    .line 6
    invoke-direct {v1, p3, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcx;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcu;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zze()Landroid/webkit/WebView;

    move-result-object p2

    .line 4
    invoke-direct {v0, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzcu;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    :goto_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 7
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza()V

    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzb(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzj(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;)V

    return-void
.end method

.method private final zzl(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zze:Z

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzg()F

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzo(F)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzn(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zza:Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzk(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzj()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzl(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzp()V

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zze()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    if-eq v1, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzj()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zze()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzm()V

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzd(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    return-void
.end method

.method public final zzd(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zzb(Landroid/view/View;Lcom/google/ads/interactivemedia/omid/library/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zzc()V

    return-void
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzch;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzch;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzct;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzct;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzdu;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
