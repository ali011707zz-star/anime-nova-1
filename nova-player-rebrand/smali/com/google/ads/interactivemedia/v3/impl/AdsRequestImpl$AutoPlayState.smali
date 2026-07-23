.class public final enum Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoPlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

.field public static final enum AUTO:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzvs;
        zza = "auto"
    .end annotation
.end field

.field public static final enum CLICK:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzvs;
        zza = "click"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzvs;
        zza = "unknown"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 2
    const-string v3, "CLICK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 3
    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    return-object v0
.end method
