.class Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method private constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 5455
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$1;)V
    .locals 0

    .line 5455
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-void
.end method

.method private adjustPositions(II)V
    .locals 1

    .line 5458
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5459
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1300(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V

    .line 5461
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1202(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z

    return-void
.end method

.method private updateStickyHeader(I)V
    .locals 3

    .line 5465
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getStickyPosition()I

    move-result v0

    if-ltz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 5469
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "updateStickyHeader position=%s"

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5473
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver$1;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 5487
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getStickyPosition()I

    move-result v0

    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->updateStickyHeader(I)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 5503
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->updateStickyHeader(I)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 5492
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->adjustPositions(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 5497
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->updateStickyHeader(I)V

    neg-int p2, p2

    .line 5498
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;->adjustPositions(II)V

    return-void
.end method
