.class Leu/davidea/fastscroller/FastScroller$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/FastScroller;->init()V
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

    .line 138
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 141
    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, p2, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object p2, p2, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    .line 145
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    int-to-float p2, p2

    .line 146
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v1, v0, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, v1

    mul-float/2addr p1, p2

    .line 147
    invoke-virtual {v0, p1}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandlePosition(F)V

    .line 149
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget p1, p1, Leu/davidea/fastscroller/FastScroller;->minimumScrollThreshold:I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget p3, p2, Leu/davidea/fastscroller/FastScroller;->minimumScrollThreshold:I

    if-gt p1, p3, :cond_1

    iget-object p1, p2, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-virtual {p1}, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    :cond_1
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {p1}, Leu/davidea/fastscroller/FastScroller;->showScrollbar()V

    .line 151
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-static {p1}, Leu/davidea/fastscroller/FastScroller;->access$000(Leu/davidea/fastscroller/FastScroller;)V

    :cond_2
    :goto_0
    return-void
.end method
