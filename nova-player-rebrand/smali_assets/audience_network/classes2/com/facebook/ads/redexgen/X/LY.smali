.class public final Lcom/facebook/ads/redexgen/X/LY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/LY;
    .locals 0

    .line 50461
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LY;->A00:I

    .line 50462
    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/LY;
    .locals 0

    .line 50463
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LY;->A01:I

    .line 50464
    return-object p0
.end method

.method public final A02(Z)Lcom/facebook/ads/redexgen/X/LY;
    .locals 0

    .line 50465
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LY;->A02:Z

    .line 50466
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/LY;
    .locals 0

    .line 50467
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LY;->A03:Z

    .line 50468
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/LY;
    .locals 0

    .line 50469
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LY;->A04:Z

    .line 50470
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/LZ;
    .locals 6

    .line 50471
    new-instance v0, Lcom/facebook/ads/redexgen/X/LZ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/LY;->A00:I

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/LY;->A02:Z

    iget v3, p0, Lcom/facebook/ads/redexgen/X/LY;->A01:I

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/LY;->A03:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/LY;->A04:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/LZ;-><init>(IZIZZ)V

    return-object v0
.end method
