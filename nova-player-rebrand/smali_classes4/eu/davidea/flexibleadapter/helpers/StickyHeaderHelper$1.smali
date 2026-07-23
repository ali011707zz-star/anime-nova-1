.class Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeaderWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)V
    .locals 0

    .line 349
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;->this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 357
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;->this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->access$102(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;Z)Z

    .line 358
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;->this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-static {p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->access$200(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 359
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;->this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-static {p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->access$300(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 352
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;->this$0:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->access$002(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;I)I

    return-void
.end method
