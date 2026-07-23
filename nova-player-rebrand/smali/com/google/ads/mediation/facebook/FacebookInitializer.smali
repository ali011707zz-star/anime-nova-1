.class Lcom/google/ads/mediation/facebook/FacebookInitializer;
.super Ljava/lang/Object;
.source "FacebookInitializer.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/ads/mediation/facebook/FacebookInitializer;


# instance fields
.field private isInitialized:Z

.field private isInitializing:Z

.field private final listeners:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitializing:Z

    .line 30
    iput-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitialized:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method static getInstance()Lcom/google/ads/mediation/facebook/FacebookInitializer;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->instance:Lcom/google/ads/mediation/facebook/FacebookInitializer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookInitializer;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookInitializer;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->instance:Lcom/google/ads/mediation/facebook/FacebookInitializer;

    .line 38
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->instance:Lcom/google/ads/mediation/facebook/FacebookInitializer;

    return-object v0
.end method


# virtual methods
.method initialize(Landroid/content/Context;Ljava/util/ArrayList;Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitializing:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p3}, Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;->onInitializeSuccess()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitializing:Z

    .line 65
    invoke-static {}, Lcom/google/ads/mediation/facebook/FacebookInitializer;->getInstance()Lcom/google/ads/mediation/facebook/FacebookInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    const-string p3, "GOOGLE:6.21.0.1"

    .line 67
    invoke-interface {p1, p3}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 68
    invoke-interface {p1, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withPlacementIds(Ljava/util/List;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 69
    invoke-interface {p1, p0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    return-void
.end method

.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 8

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitializing:Z

    .line 76
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->isInitialized:Z

    .line 78
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;

    .line 79
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v3}, Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;->onInitializeSuccess()V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v4, Lcom/google/android/gms/ads/AdError;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.ads.mediation.facebook"

    const/16 v7, 0x68

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v3, v4}, Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
