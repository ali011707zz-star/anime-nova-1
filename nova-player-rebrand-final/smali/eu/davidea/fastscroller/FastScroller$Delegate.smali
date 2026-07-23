.class public Leu/davidea/fastscroller/FastScroller$Delegate;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/fastscroller/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private mFastScroller:Leu/davidea/fastscroller/FastScroller;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFastScroller()Leu/davidea/fastscroller/FastScroller;
    .locals 1

    .line 700
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    return-object v0
.end method

.method public isFastScrollerEnabled()Z
    .locals 1

    .line 691
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 665
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    .line 670
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setFastScroller(Leu/davidea/fastscroller/FastScroller;)V
    .locals 3

    .line 717
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 720
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    .line 721
    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 722
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setEnabled(Z)V

    .line 723
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    sget v0, Leu/davidea/flexibleadapter/R$layout;->library_fast_scroller_layout:I

    sget v1, Leu/davidea/flexibleadapter/R$id;->fast_scroller_bubble:I

    sget v2, Leu/davidea/flexibleadapter/R$id;->fast_scroller_handle:I

    invoke-virtual {p1, v0, v1, v2}, Leu/davidea/fastscroller/FastScroller;->setViewsToUse(III)V

    return-void

    .line 730
    :cond_0
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 731
    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    :cond_1
    return-void

    .line 718
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView cannot be null. Setup FastScroller after the Adapter has been added to the RecyclerView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toggleFastScroller()V
    .locals 1

    .line 681
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller;->toggleFastScroller()V

    :cond_0
    return-void
.end method
