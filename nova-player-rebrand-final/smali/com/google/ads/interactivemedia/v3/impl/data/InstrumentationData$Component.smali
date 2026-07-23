.class public final enum Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum ADS_IDENTITY_TOKEN_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum IDENTIFIER_INFO_FACTORY:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum IDENTITY_MANAGER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum LATENCY_MEASUREMENT_TRACKER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum NATIVE_ESP:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum PLATFORM_SIGNAL_COLLECTOR:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field public static final enum SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;


# direct methods
.method private static synthetic $values()[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;
    .locals 3

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTITY_MANAGER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->NATIVE_ESP:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->PLATFORM_SIGNAL_COLLECTOR:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_IDENTITY_TOKEN_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->LATENCY_MEASUREMENT_TRACKER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTIFIER_INFO_FACTORY:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "ADS_LOADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "IDENTITY_MANAGER"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTITY_MANAGER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "NATIVE_ESP"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->NATIVE_ESP:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "PLATFORM_SIGNAL_COLLECTOR"

    const/4 v2, 0x3

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->PLATFORM_SIGNAL_COLLECTOR:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "ADS_IDENTITY_TOKEN_LOADER"

    const/4 v2, 0x4

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_IDENTITY_TOKEN_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "SPAM_MS_PARAMETER_LOADER"

    const/4 v2, 0x5

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "LATENCY_MEASUREMENT_TRACKER"

    const/4 v2, 0x6

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->LATENCY_MEASUREMENT_TRACKER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const-string v1, "IDENTIFIER_INFO_FACTORY"

    const/4 v2, 0x7

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTIFIER_INFO_FACTORY:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    .line 9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->$values()[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    return-object v0
.end method
