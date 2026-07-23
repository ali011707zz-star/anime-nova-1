.class Leu/davidea/fastscroller/FastScroller$3;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/fastscroller/FastScroller;


# direct methods
.method constructor <init>(Leu/davidea/fastscroller/FastScroller;)V
    .locals 0

    .line 184
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 187
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 188
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v1, v0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 192
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-static {v1}, Leu/davidea/fastscroller/FastScroller;->access$100(Leu/davidea/fastscroller/FastScroller;)I

    move-result v1

    int-to-float v0, v0

    .line 193
    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v4, v3, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    .line 194
    invoke-virtual {v3, v1}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandlePosition(F)V

    :cond_1
    :goto_0
    return v2
.end method
