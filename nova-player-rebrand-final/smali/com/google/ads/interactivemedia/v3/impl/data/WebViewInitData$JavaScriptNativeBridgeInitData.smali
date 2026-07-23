.class public Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaScriptNativeBridgeInitData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;
    }
.end annotation


# instance fields
.field public adTimeUpdateMs:Ljava/lang/Long;

.field public appSetIdTimeoutMs:Ljava/lang/Long;

.field public consentSettingsConfig:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;

.field public disableAppSetId:Ljava/lang/Boolean;

.field public disableJsIdLessEvaluation:Ljava/lang/Boolean;

.field public enableGks:Ljava/lang/Boolean;

.field public enableInstrumentation:Ljava/lang/Boolean;

.field public enableOmidJsManagedSessions:Ljava/lang/Boolean;

.field public espAdapterTimeoutMs:Ljava/lang/Integer;

.field public espAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gksDaiNativeXhrApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gksFirstPartyAdServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gksTimeoutMs:Ljava/lang/Integer;

.field public jsConsentCheckRequiredParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public msParameterTimeoutMs:Ljava/lang/Integer;

.field public platformSignalCollectorTimeoutMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
