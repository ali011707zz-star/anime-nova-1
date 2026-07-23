.class public final Lcom/facebook/ads/redexgen/X/mB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mD;)V
    .locals 2

    .line 97394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97395
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    .line 97396
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A02:I

    .line 97398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A03:I

    .line 97399
    return-void
.end method


# virtual methods
.method public final A8A()I
    .locals 1

    .line 97400
    const/4 v0, -0x1

    return v0
.end method

.method public final A8v()I
    .locals 1

    .line 97401
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A03:I

    return v0
.end method

.method public final AHS()I
    .locals 2

    .line 97402
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mB;->A02:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 97403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    return v0

    .line 97404
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mB;->A02:I

    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 97405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    return v0

    .line 97406
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mB;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A01:I

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 97407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A00:I

    .line 97408
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A00:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 97409
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mB;->A00:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
