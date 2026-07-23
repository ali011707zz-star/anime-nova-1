.class public final enum Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

.field public static final enum Html:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

.field public static final enum IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

.field public static final enum Static:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;


# direct methods
.method private static synthetic $values()[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const-string v1, "Html"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const-string v1, "Static"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    const-string v1, "IFrame"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->$values()[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    return-object v0
.end method
