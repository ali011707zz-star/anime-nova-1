.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_MarketAppInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_MarketAppInfo;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract appVersion()I
.end method

.method public abstract packageName()Ljava/lang/String;
.end method
