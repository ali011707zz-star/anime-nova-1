.class public final Lcom/facebook/ads/redexgen/X/VO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
.implements Lcom/facebook/ads/AdView$AdViewLoadConfig;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/Rd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 0

    .line 69390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69391
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 69392
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 69393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 69394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/VO;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/AdView$AdViewLoadConfig;
    .locals 0

    .line 69395
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 69396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0C(Lcom/facebook/ads/AdListener;)V

    .line 69397
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69398
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/VO;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 0

    .line 69399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:Ljava/lang/String;

    .line 69400
    return-object p0
.end method
