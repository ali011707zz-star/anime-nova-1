.class public final Lcom/google/android/gms/internal/ads/zzbuu;
.super Lcom/google/android/gms/internal/ads/zzbtv;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzbuw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzcar;

.field private zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zze:Landroid/view/View;

.field private zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field private zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field private zzi:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field private zzk:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

.field private final zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    return-void
.end method

.method private final zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string v0, "Server parameters: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    .line 4
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v0, p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of p1, p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p1, :cond_2

    const-string p1, "adJson"

    .line 8
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p1, "tagForChildDirectedTreatment"

    iget p2, p2, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string p1, "max_ad_content_rating"

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    const-string p2, ""

    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method private final zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private static final zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 3
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public final zzA(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzB()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v2
.end method

.method public final zzC()Lcom/google/android/gms/internal/ads/zzbui;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzb:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuw;->zzb()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbva;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzD(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_0

    .line 4
    const-string v4, "Requesting rewarded ad from adapter."

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_0
    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbus;

    move-object/from16 v5, p4

    .line 7
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzbus;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 16
    new-instance v5, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v8, 0x0

    .line 9
    invoke-direct {v1, v2, v0, v8}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v9

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v13, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    const-string v2, ""

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "adapter.loadRewardedAd"

    move-object/from16 v3, p1

    .line 15
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_1

    .line 4
    const-string v0, "Show rewarded ad from adapter."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzi:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "adapter.rewarded.showAd"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    throw v0

    :cond_0
    const-string p1, "Can not show null mediation rewarded ad."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 1
    :cond_1
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqk;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbun;

    .line 2
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzbun;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbqk;)V

    new-instance p2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbqq;

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzbqq;->zza:Ljava/lang/String;

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 15
    :sswitch_0
    const-string v4, "rewarded_interstitial"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "app_open_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_2
    const-string v4, "app_open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_3
    const-string v4, "interstitial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v4, "rewarded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_5
    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_6
    const-string v4, "banner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 7
    :pswitch_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zznn:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 10
    :pswitch_1
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 11
    :pswitch_2
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 12
    :pswitch_3
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 13
    :pswitch_4
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 14
    :pswitch_5
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 15
    :pswitch_6
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 6
    new-instance v3, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 16
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbqq;->zzb:Landroid/os/Bundle;

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_3
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/ads/mediation/Adapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V

    return-void

    .line 1
    :cond_4
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_6
        -0x3ebdafe9 -> :sswitch_5
        -0xe47b3f2 -> :sswitch_4
        0x240b672c -> :sswitch_3
        0x459991a8 -> :sswitch_2
        0x69fe9e1a -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzG(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_0

    .line 4
    const-string v4, "Requesting rewarded interstitial ad from adapter."

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_0
    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbus;

    move-object/from16 v5, p4

    .line 7
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzbus;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 15
    new-instance v5, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v8, 0x0

    .line 9
    invoke-direct {v1, v2, v0, v8}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v9

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v13, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    const-string v2, "adapter.loadRewardedInterstitialAd"

    move-object/from16 v3, p1

    .line 14
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzH()Lcom/google/android/gms/internal/ads/zzbwh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwh;->zza(Lcom/google/android/gms/ads/VersionInfo;)Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v0

    return-object v0
.end method

.method public final zzI()Lcom/google/android/gms/internal/ads/zzbwh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwh;->zza(Lcom/google/android/gms/ads/VersionInfo;)Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v0

    return-object v0
.end method

.method public final zzJ(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "Requesting interscroller ad from adapter."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbum;

    .line 7
    invoke-direct {v1, p0, p6, v0}, Lcom/google/android/gms/internal/ads/zzbum;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/ads/mediation/Adapter;)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/Context;

    .line 9
    invoke-direct {p0, p4, p3, p5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    iget-object p5, p3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 12
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    iget p3, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget p2, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 13
    invoke-static {p3, p2}, Lcom/google/android/gms/ads/zzc;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    .line 19
    const-string p2, " does not support interscroller ads."

    new-instance p3, Lcom/google/android/gms/ads/AdError;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 15
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.google.android.gms.ads"

    const/4 p5, 0x7

    invoke-direct {p3, p5, p2, p4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1, p3}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 13
    const-string p3, ""

    .line 17
    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "adapter.loadInterscrollerAd"

    .line 18
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 1
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p3, p3, 0x16

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzK()Lcom/google/android/gms/internal/ads/zzbuc;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 9
    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 12
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 1
    :cond_1
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzh()V

    return-void

    :cond_2
    const-string v0, "Show interstitial ad from adapter."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    const-string v1, "adapter.interstitial.showAd"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    throw v0

    .line 12
    :cond_3
    const-string p1, "Can not show null mediation interstitial ad."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzM(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_0

    .line 4
    const-string v4, "Requesting app open ad from adapter."

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_0
    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbut;

    move-object/from16 v5, p4

    .line 7
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzbut;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 16
    new-instance v5, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v8, 0x0

    .line 9
    invoke-direct {v1, v2, v0, v8}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v9

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v13, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    const-string v2, ""

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "adapter.loadAppOpenAd"

    move-object/from16 v3, p1

    .line 15
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzN(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_1

    .line 4
    const-string v0, "Show app open ad from adapter."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzk:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "adapter.appOpen.showAd"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    throw v0

    :cond_0
    const-string p1, "Can not show null mediation app open ad."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 1
    :cond_1
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzO()Lcom/google/android/gms/internal/ads/zzbue;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzP()Lcom/google/android/gms/internal/ads/zzbuf;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic zzQ(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-void
.end method

.method final synthetic zzR(Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .locals 0

    .line 0
    return-void
.end method

.method final synthetic zzS(Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzi:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    return-void
.end method

.method final synthetic zzT(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V
    .locals 0

    .line 0
    return-void
.end method

.method final synthetic zzU(Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzk:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    return-void
.end method

.method final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzc(Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zze:Landroid/view/View;

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbuu;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zze:Landroid/view/View;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0

    .line 2
    :cond_1
    const-class v1, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 7
    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #009 Class mismatch: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V

    return-void
.end method

.method public final zzh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "Showing interstitial from adapter."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    const-string v1, ""

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #009 Class mismatch: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v8, v7, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v8, :cond_1

    instance-of v9, v7, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v9, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_1
    :goto_0
    const-string v9, "Requesting banner ad from adapter."

    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 2
    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    if-eqz v9, :cond_2

    .line 3
    iget v9, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 4
    invoke-static {v9, v0}, Lcom/google/android/gms/ads/zzc;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    :goto_1
    move-object v13, v0

    goto :goto_2

    .line 5
    :cond_2
    iget v9, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/ads/zzc;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_1

    .line 4
    :goto_2
    const-string v9, ""

    if-eqz v8, :cond_6

    .line 6
    :try_start_0
    check-cast v7, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 7
    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v17, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto :goto_6

    :cond_3
    const/16 v17, 0x0

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzbul;

    .line 8
    iget-wide v10, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    const-wide/16 v15, -0x1

    cmp-long v0, v10, v15

    if-nez v0, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    .line 16
    :cond_4
    new-instance v0, Ljava/util/Date;

    .line 9
    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v15, v0

    :goto_4
    iget v0, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    iget-object v10, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v19

    iget v11, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget-boolean v12, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    iget v8, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v23

    move/from16 v16, v0

    move/from16 v22, v8

    move-object/from16 v18, v10

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/google/android/gms/internal/ads/zzbul;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 12
    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v15, v8

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 14
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v11, v6}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>(Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 15
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    .line 16
    :try_start_1
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 17
    :goto_6
    invoke-static {v7, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.requestBannerAd"

    .line 18
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_6
    move-object v7, v9

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v8, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v8, :cond_7

    .line 20
    :try_start_2
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbuo;

    .line 21
    invoke-direct {v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzbuo;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    new-instance v9, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 23
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v19, v13

    .line 24
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v13

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v14

    iget-object v15, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v6, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 26
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    move-object/from16 v20, v3

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/ads/mediation/Adapter;->loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 28
    invoke-static {v7, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.loadBannerAd"

    .line 29
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v7, v6, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v7, :cond_1

    instance-of v8, v6, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v8, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 28
    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_1
    :goto_0
    const-string v8, "Requesting interstitial ad from adapter."

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    const-string v8, ""

    if-eqz v7, :cond_5

    .line 2
    :try_start_0
    move-object v9, v6

    check-cast v9, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 3
    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    if-eqz v6, :cond_2

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v13, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    const/4 v13, 0x0

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzbul;

    .line 4
    iget-wide v11, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    const-wide/16 v14, -0x1

    cmp-long v6, v11, v14

    if-nez v6, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    .line 12
    :cond_3
    new-instance v6, Ljava/util/Date;

    .line 5
    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    move-object v11, v6

    :goto_2
    iget v12, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v15

    iget v6, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    move/from16 v16, v6

    iget v6, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 7
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v19

    move/from16 v18, v6

    move/from16 v17, v7

    invoke-direct/range {v10 .. v19}, Lcom/google/android/gms/internal/ads/zzbul;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 8
    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v14, v7

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 10
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>(Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 11
    invoke-direct {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    move-object v13, v10

    move-object v10, v6

    .line 12
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 13
    :goto_4
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.requestInterstitialAd"

    .line 14
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 5
    :cond_5
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v7, v6, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v7, :cond_6

    .line 16
    :try_start_1
    check-cast v6, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbup;

    .line 17
    invoke-direct {v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzbup;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    new-instance v9, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 19
    invoke-direct {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v13

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v4, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 22
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v18

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.loadInterstitialAd"

    .line 25
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method public final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcar;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of p3, p2, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 2
    invoke-static {p3, p5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p3, p3, 0x16

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzc:Lcom/google/android/gms/internal/ads/zzcar;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzcar;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbuu;->zzv(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzi:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v2, "adapter.showVideo"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    throw v0

    :cond_0
    const-string v0, "Can not show null mediated rewarded ad."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_1
    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #009 Class mismatch: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzq()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 2
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #009 Class mismatch: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzc:Lcom/google/android/gms/internal/ads/zzcar;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbkh;Ljava/util/List;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v7, v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v7, :cond_1

    instance-of v8, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v8, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 41
    const-class v3, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #009 Class mismatch: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_1
    :goto_0
    const-string v8, "Requesting native ad from adapter."

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    const-string v8, ""

    if-eqz v7, :cond_5

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 3
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    if-eqz v7, :cond_2

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v13, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    const/4 v13, 0x0

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzbuz;

    .line 4
    iget-wide v11, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    const-wide/16 v14, -0x1

    cmp-long v7, v11, v14

    if-nez v7, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    .line 12
    :cond_3
    new-instance v7, Ljava/util/Date;

    .line 5
    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    move-object v11, v7

    :goto_2
    iget v12, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    iget-object v14, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v15

    iget v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget-boolean v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    move-object/from16 v22, v0

    iget v0, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 7
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move/from16 v20, v0

    move/from16 v16, v7

    move/from16 v19, v9

    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/internal/ads/zzbuz;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzbkh;Ljava/util/List;ZILjava/lang/String;)V

    .line 8
    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>(Lcom/google/android/gms/internal/ads/zzbtz;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzb:Lcom/google/android/gms/internal/ads/zzbuw;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzb:Lcom/google/android/gms/internal/ads/zzbuw;

    .line 11
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 p3, v0

    move-object/from16 p5, v3

    move-object/from16 p4, v6

    move-object/from16 p7, v9

    move-object/from16 p6, v10

    move-object/from16 p2, v22

    .line 12
    invoke-interface/range {p2 .. p7}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 13
    :goto_4
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.requestNativeAd"

    .line 14
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 5
    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v7, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v7, :cond_7

    .line 16
    :try_start_1
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbur;

    .line 17
    invoke-direct {v7, v1, v6}, Lcom/google/android/gms/internal/ads/zzbur;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    new-instance v9, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 19
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 20
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v13

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v14

    iget-object v15, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    move-object/from16 p7, v9

    iget v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    move/from16 v16, v9

    iget v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 22
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v18

    move/from16 v17, v9

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    move-object/from16 v20, p6

    move-object/from16 v19, v9

    move-object/from16 v9, p7

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkh;)V

    .line 23
    invoke-virtual {v0, v9, v7}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAdMapper(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "adapter.loadNativeAdMapper"

    .line 25
    invoke-static {v2, v0, v7}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Method is not found"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    .line 29
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbuq;

    .line 30
    invoke-direct {v7, v1, v6}, Lcom/google/android/gms/internal/ads/zzbuq;-><init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbtz;)V

    new-instance v9, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 32
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbuu;->zzV(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 33
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzW(Lcom/google/android/gms/ads/internal/client/zzm;)Landroid/os/Bundle;

    move-result-object v13

    .line 34
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzX(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result v14

    iget-object v15, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    iget v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget v6, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 35
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbuu;->zzY(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbuu;->zzl:Ljava/lang/String;

    move-object/from16 v20, p6

    move-object/from16 v19, v3

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkh;)V

    .line 36
    invoke-virtual {v0, v9, v7}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 37
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "adapter.loadNativeAd"

    .line 38
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 28
    :cond_6
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_7
    :goto_5
    return-void
.end method

.method public final zzs()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzt()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzu()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zza:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbux;

    .line 5
    check-cast p3, Lcom/google/android/gms/ads/mediation/Adapter;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzc:Lcom/google/android/gms/internal/ads/zzcar;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzbux;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;Lcom/google/android/gms/internal/ads/zzcar;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbuu;->zzD(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;)V

    return-void

    .line 1
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    return-void
.end method

.method public final zzx()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcar;Ljava/util/List;)V
    .locals 0

    .line 1
    const-string p1, "Could not initialize rewarded video adapter."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzblm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuu;->zzb:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuw;->zze()Lcom/google/android/gms/internal/ads/zzbln;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbln;->zza()Lcom/google/android/gms/internal/ads/zzblm;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
