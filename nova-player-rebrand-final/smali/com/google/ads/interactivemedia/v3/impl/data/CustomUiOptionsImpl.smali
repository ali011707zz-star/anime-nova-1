.class public Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;


# instance fields
.field private aboutThisAdSupport:Z

.field private skippableSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->skippableSupport:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->aboutThisAdSupport:Z

    return-void
.end method


# virtual methods
.method public getAboutThisAdSupport()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->aboutThisAdSupport:Z

    return v0
.end method

.method public getSkippableSupport()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->skippableSupport:Z

    return v0
.end method

.method public setAboutThisAdSupport(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->aboutThisAdSupport:Z

    return-void
.end method

.method public setSkippableSupport(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;->skippableSupport:Z

    return-void
.end method
