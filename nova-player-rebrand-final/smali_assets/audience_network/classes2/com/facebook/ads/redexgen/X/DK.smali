.class public final Lcom/facebook/ads/redexgen/X/DK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackState"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/nW;

.field public final A01:[Z

.field public final A02:[Z

.field public final A03:[Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nW;[Z)V
    .locals 1

    .line 33631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DK;->A00:Lcom/facebook/ads/redexgen/X/nW;

    .line 33633
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DK;->A02:[Z

    .line 33634
    iget v0, p1, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DK;->A01:[Z

    .line 33635
    iget v0, p1, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DK;->A03:[Z

    .line 33636
    return-void
.end method
