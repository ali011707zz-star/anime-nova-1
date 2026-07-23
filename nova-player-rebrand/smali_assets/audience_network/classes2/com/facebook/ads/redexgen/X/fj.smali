.class public final Lcom/facebook/ads/redexgen/X/fj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Cy;->setControlsAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2818
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9YpvPFzq4gA4ILum2PFw7tT2EwcxI8wV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "F47KlILUbWaCosO0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IjRysyutmgGRdQsMt2txP2GECpx3k3Q1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ciBLF0rumq0WEGUsEh07nHxU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yDOgyb3x0PSD2bFM5iTRFbbFTymIPux3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Sxy6px61nfjJHTffPjDZVR3ZYpa4rtVn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5GXF5D2qooFEcnp1hk94nU2dqySkSdML"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AxzUGf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fj;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82634
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 82635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0B(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 82636
    return v4

    .line 82637
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 82638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/fj;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/fj;->A01:[Ljava/lang/String;

    const-string v1, "HYvtDEBsv2VZCb1XBIl4ljHb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 82639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 82640
    :cond_2
    :goto_0
    return v4

    .line 82641
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/Cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
