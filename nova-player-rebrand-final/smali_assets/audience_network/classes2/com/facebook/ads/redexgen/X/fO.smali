.class public final Lcom/facebook/ads/redexgen/X/fO;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DQ;->A04(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2813
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TrZNDxp7XgPrLwMeMcKKV4LE6uuIfYVU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ULEyXJCc47teQ6YZ0eXPV0V7C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "At5pbwNHr2LiheLI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DEC0Eom9qK7OI0oKL1WQ5oYEbz9lc5Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Go2f3K9Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jmF0Wp1VVfzp13IVqL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AKLTgtcpjio1lTTBDL2vrOjYxOjCOJfp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yZ5UHZcmQhcxGg9JLD5yPnSTYa225zYb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fO;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82319
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 82320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A06(Lcom/facebook/ads/redexgen/X/DQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A00(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 82322
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/fO;->A01:[Ljava/lang/String;

    const-string v1, "6jsFEd17ts6f8PQH6w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DQ;->A00(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 82323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DQ;->A03(Lcom/facebook/ads/redexgen/X/DQ;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A01(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A01(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 82326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A02(Lcom/facebook/ads/redexgen/X/DQ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 82327
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DQ;->A03(Lcom/facebook/ads/redexgen/X/DQ;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A01(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A01(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 82331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fO;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A02(Lcom/facebook/ads/redexgen/X/DQ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 82332
    :cond_0
    return-void
.end method
