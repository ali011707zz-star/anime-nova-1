.class public final Lcom/facebook/ads/redexgen/X/Qa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/RK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RK;IIII)V
    .locals 0

    .line 60244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60245
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qa;->A04:Lcom/facebook/ads/redexgen/X/RK;

    .line 60246
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Qa;->A00:I

    .line 60247
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Qa;->A01:I

    .line 60248
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Qa;->A02:I

    .line 60249
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Qa;->A03:I

    .line 60250
    return-void
.end method
