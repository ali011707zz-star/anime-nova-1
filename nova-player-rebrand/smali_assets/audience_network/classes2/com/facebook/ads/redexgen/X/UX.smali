.class public final Lcom/facebook/ads/redexgen/X/UX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/UW;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/UW;)V
    .locals 0

    .line 67791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67792
    iput p1, p0, Lcom/facebook/ads/redexgen/X/UX;->A00:I

    .line 67793
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Lcom/facebook/ads/redexgen/X/UW;

    .line 67794
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 67795
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/UW;
    .locals 1

    .line 67796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Lcom/facebook/ads/redexgen/X/UW;

    return-object v0
.end method
