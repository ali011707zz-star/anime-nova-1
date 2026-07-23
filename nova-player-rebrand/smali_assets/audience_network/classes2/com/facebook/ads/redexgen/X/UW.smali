.class public final Lcom/facebook/ads/redexgen/X/UW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UV;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/UV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UV;III)V
    .locals 0

    .line 67781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67782
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UW;->A03:Lcom/facebook/ads/redexgen/X/UV;

    .line 67783
    iput p2, p0, Lcom/facebook/ads/redexgen/X/UW;->A01:I

    .line 67784
    iput p3, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:I

    .line 67785
    iput p4, p0, Lcom/facebook/ads/redexgen/X/UW;->A02:I

    .line 67786
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 67787
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 67788
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 67789
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/UV;
    .locals 1

    .line 67790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A03:Lcom/facebook/ads/redexgen/X/UV;

    return-object v0
.end method
