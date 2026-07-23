.class public final Lcom/facebook/ads/redexgen/X/m2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JS;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroWrappingExtractor;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroTrackOutput;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroWrappingExtractorOutput;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95423
    sget-object v0, Lcom/facebook/ads/redexgen/X/JS;->A03:Lcom/facebook/ads/redexgen/X/JS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m2;->A00:Lcom/facebook/ads/redexgen/X/JS;

    .line 95424
    return-void
.end method

.method private A00()Z
    .locals 2

    .line 95425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m2;->A00:Lcom/facebook/ads/redexgen/X/JS;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JS;->A04:Lcom/facebook/ads/redexgen/X/JS;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/H9;
    .locals 1

    .line 95426
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m2;->A00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95427
    new-instance v0, Lcom/facebook/ads/redexgen/X/m7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/m7;-><init>(I)V

    return-object v0

    .line 95428
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/m6;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/m6;-><init>(I)V

    return-object v0
.end method
