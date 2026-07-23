.class public Lcom/google/ads/interactivemedia/v3/internal/zzct;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

.field private zzc:J

.field private zzd:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzp()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdv;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    return-void
.end method


# virtual methods
.method public zza()V
    .locals 0

    .line 0
    return-void
.end method

.method public zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method final zzc(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdv;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    return-void
.end method

.method public final zzd()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdv;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "backgrounded"

    goto :goto_0

    .line 2
    :cond_0
    const-string p1, "foregrounded"

    .line 1
    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzf(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzg(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "unlocked"

    goto :goto_0

    .line 2
    :cond_0
    const-string p1, "locked"

    .line 1
    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzg(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzh(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzc:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd:I

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zze(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzi(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzc:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd:I

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zze(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzb;->zzb()Lorg/json/JSONObject;

    move-result-object p1

    .line 1
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzb(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzk(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzl(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final zzl(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzi()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adSessionType"

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzh()Lcom/google/ads/interactivemedia/omid/library/adsession/zzd;

    move-result-object v1

    .line 3
    invoke-static {v3, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "deviceType"

    .line 6
    invoke-static {p1, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "osVersion"

    .line 8
    invoke-static {p1, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "os"

    const-string v4, "Android"

    .line 9
    invoke-static {p1, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "deviceInfo"

    .line 10
    invoke-static {v3, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcy;->zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzg;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceCategory"

    invoke-static {v3, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    .line 15
    invoke-static {v3, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    .line 16
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    .line 17
    invoke-static {p1, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    .line 18
    invoke-static {p1, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    .line 19
    invoke-static {v3, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    .line 20
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.5.2-google_20241009"

    .line 21
    invoke-static {p1, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzci;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzci;->zzb()Landroid/content/Context;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    .line 23
    invoke-static {p1, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-static {v3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzf()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    .line 25
    invoke-static {v3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    .line 26
    invoke-static {v3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    .line 27
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 28
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzc;->zzc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    .line 29
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzc(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    .line 28
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public final zzm()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzd(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final zzn(Ljava/util/Date;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzi(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzo(F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzck;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzh(Landroid/webkit/WebView;Ljava/lang/String;F)V

    return-void
.end method

.method public final zzp()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzc:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd:I

    return-void
.end method
