.class public final enum Lcom/facebook/ads/AdExperienceType;
.super Ljava/lang/Enum;
.source "AdExperienceType.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdExperienceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdExperienceType;

.field public static final enum AD_EXPERIENCE_TYPE_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

.field public static final enum AD_EXPERIENCE_TYPE_REWARDED:Lcom/facebook/ads/AdExperienceType;

.field public static final enum AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;


# instance fields
.field private adExperienceType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/AdExperienceType;
    .locals 3

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/facebook/ads/AdExperienceType;

    sget-object v1, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED:Lcom/facebook/ads/AdExperienceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/facebook/ads/AdExperienceType;

    const/4 v1, 0x0

    const-string v2, "ad_experience_config_rewarded"

    const-string v3, "AD_EXPERIENCE_TYPE_REWARDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/AdExperienceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED:Lcom/facebook/ads/AdExperienceType;

    .line 29
    new-instance v0, Lcom/facebook/ads/AdExperienceType;

    const/4 v1, 0x1

    const-string v2, "ad_experience_config_rewarded_interstitial"

    const-string v3, "AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/AdExperienceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    .line 30
    new-instance v0, Lcom/facebook/ads/AdExperienceType;

    const/4 v1, 0x2

    const-string v2, "ad_experience_config_interstitial"

    const-string v3, "AD_EXPERIENCE_TYPE_INTERSTITIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/AdExperienceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    .line 25
    invoke-static {}, Lcom/facebook/ads/AdExperienceType;->$values()[Lcom/facebook/ads/AdExperienceType;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdExperienceType;->$VALUES:[Lcom/facebook/ads/AdExperienceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/facebook/ads/AdExperienceType;->adExperienceType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdExperienceType;
    .locals 1

    .line 25
    const-class v0, Lcom/facebook/ads/AdExperienceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdExperienceType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdExperienceType;
    .locals 1

    .line 25
    sget-object v0, Lcom/facebook/ads/AdExperienceType;->$VALUES:[Lcom/facebook/ads/AdExperienceType;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdExperienceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdExperienceType;

    return-object v0
.end method


# virtual methods
.method public getAdExperienceType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/facebook/ads/AdExperienceType;->adExperienceType:Ljava/lang/String;

    return-object v0
.end method
