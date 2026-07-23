.class public final Lcom/facebook/ads/redexgen/X/hk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85086
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85087
    return-void
.end method


# virtual methods
.method public final ACv(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 3

    .line 85088
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0d(Z)V

    .line 85089
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A06:Lcom/facebook/ads/redexgen/X/RK;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A07:Lcom/facebook/ads/redexgen/X/RK;

    if-nez v0, :cond_0

    .line 85090
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A06:Lcom/facebook/ads/redexgen/X/RK;

    .line 85091
    :cond_0
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A07:Lcom/facebook/ads/redexgen/X/RK;

    .line 85092
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0J(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1x(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85094
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hk;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->removeDetachedView(Landroid/view/View;Z)V

    .line 85095
    :cond_1
    return-void
.end method
