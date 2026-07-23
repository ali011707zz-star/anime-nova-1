.class public final enum Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
.super Ljava/lang/Enum;
.source "AdSettings.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegrationErrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdSettings$IntegrationErrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

.field public static final enum INTEGRATION_ERROR_CALLBACK_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

.field public static final enum INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    .locals 3

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    sget-object v1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CALLBACK_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    const-string v1, "INTEGRATION_ERROR_CRASH_DEBUG_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    .line 44
    new-instance v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    const-string v1, "INTEGRATION_ERROR_CALLBACK_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CALLBACK_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    .line 30
    invoke-static {}, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->$values()[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->$VALUES:[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    .locals 1

    .line 30
    const-class v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    .locals 1

    .line 30
    sget-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->$VALUES:[Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    return-object v0
.end method
