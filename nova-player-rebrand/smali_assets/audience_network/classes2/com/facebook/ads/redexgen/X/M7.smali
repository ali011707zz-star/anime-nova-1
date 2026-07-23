.class public final Lcom/facebook/ads/redexgen/X/M7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/M6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/M6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50988
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADB(Z)V
    .locals 2

    .line 50989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0B(Lcom/facebook/ads/redexgen/X/M6;Z)V

    .line 50990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A0E(Lcom/facebook/ads/redexgen/X/M6;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A02(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A02(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A02(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50993
    :cond_0
    return-void

    .line 50994
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final ADx(Z)V
    .locals 2

    .line 50995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0B(Lcom/facebook/ads/redexgen/X/M6;Z)V

    .line 50996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A0E(Lcom/facebook/ads/redexgen/X/M6;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A03(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A03(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M7;->A00:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A03(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50999
    :cond_0
    return-void

    .line 51000
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
