.class public final Lcom/facebook/ads/redexgen/X/Qx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60644
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/RK;I)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 2

    .line 60645
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    .line 60646
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qx;->A01:I

    .line 60647
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qx;->A03:I

    .line 60648
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qx;->A02:I

    .line 60649
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qx;->A00:I

    .line 60650
    return-object p0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1

    .line 60651
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Qx;->A00(Lcom/facebook/ads/redexgen/X/RK;I)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    return-object v0
.end method
