.class public final Lcom/facebook/ads/redexgen/X/9Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24077
    const v1, 0x3d090

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9Q;->A02:I

    .line 24078
    const v0, 0xb71b0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A01:I

    .line 24079
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A05:I

    .line 24080
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9Q;->A04:I

    .line 24081
    const v0, 0x2faf080

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A03:I

    .line 24082
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A00:I

    .line 24083
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24084
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A02:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24085
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24086
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A05:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24087
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A04:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24088
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A03:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9Q;)I
    .locals 0

    .line 24089
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9Q;->A00:I

    return p0
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/oL;
    .locals 1

    .line 24090
    new-instance v0, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/oL;-><init>(Lcom/facebook/ads/redexgen/X/9Q;)V

    return-object v0
.end method
