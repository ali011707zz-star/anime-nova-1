.class public final Lcom/facebook/ads/redexgen/X/eH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 80796
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/eI;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 0

    .line 80797
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/eH;-><init>(Lcom/facebook/ads/redexgen/X/eI;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 80798
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 80799
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/eI;->A01(Lcom/facebook/ads/redexgen/X/eI;J)J

    .line 80800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A00(Lcom/facebook/ads/redexgen/X/eI;)I

    .line 80801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A04(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    .line 80802
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A02(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    .line 80803
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:Lcom/facebook/ads/redexgen/X/eI;

    .line 80804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 80805
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 80806
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->ABp(Ljava/lang/String;Ljava/util/Map;)V

    .line 80807
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
