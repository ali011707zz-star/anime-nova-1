.class public final Lcom/facebook/ads/redexgen/X/B4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecMetadata"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/B0;

.field public A01:Lcom/facebook/ads/redexgen/X/jQ;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/jQ;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 29824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29825
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B4;->A00:Lcom/facebook/ads/redexgen/X/B0;

    .line 29826
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/B4;->A01:Lcom/facebook/ads/redexgen/X/jQ;

    .line 29827
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/B4;->A02:Ljava/lang/String;

    .line 29828
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/B4;->A04:Z

    .line 29829
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/B4;->A03:Z

    .line 29830
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/B4;->A05:Z

    .line 29831
    return-void
.end method
