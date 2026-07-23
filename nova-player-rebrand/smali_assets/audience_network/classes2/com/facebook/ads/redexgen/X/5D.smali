.class public final Lcom/facebook/ads/redexgen/X/5D;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/55;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14112
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 9

    .line 14113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0z(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14114
    return-void

    .line 14115
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A14(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 14116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A07(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 14117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14118
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0k()D

    move-result-wide v1

    double-to-float v0, v1

    .line 14119
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A00(F)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    .line 14120
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/55;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14121
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mt;->A0A()Ljava/lang/String;

    move-result-object v8

    .line 14122
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->AKh(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 14123
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/55;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0g(Lcom/facebook/ads/redexgen/X/55;I)V

    .line 14124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0E(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->setVisibility(I)V

    .line 14125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0E(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/55;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0u(I)V

    .line 14126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0E(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->bringToFront()V

    .line 14127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5D;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0f(Lcom/facebook/ads/redexgen/X/55;)V

    .line 14128
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14129
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5D;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
