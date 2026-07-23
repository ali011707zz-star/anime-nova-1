.class public final Lcom/facebook/ads/redexgen/X/1Z;
.super Lcom/facebook/ads/redexgen/X/9j;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;II)V
    .locals 6

    .line 6784
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/1Z;-><init>(Lcom/facebook/ads/redexgen/X/pg;IIILjava/lang/Object;)V

    .line 6785
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;IIILjava/lang/Object;)V
    .locals 1

    .line 6786
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/9j;-><init>(Lcom/facebook/ads/redexgen/X/pg;[II)V

    .line 6787
    iput p4, p0, Lcom/facebook/ads/redexgen/X/1Z;->A00:I

    .line 6788
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/1Z;->A01:Ljava/lang/Object;

    .line 6789
    return-void
.end method


# virtual methods
.method public final A93()I
    .locals 1

    .line 6790
    const/4 v0, 0x0

    return v0
.end method
