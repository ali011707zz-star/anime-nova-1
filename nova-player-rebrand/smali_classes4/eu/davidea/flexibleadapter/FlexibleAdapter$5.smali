.class Leu/davidea/flexibleadapter/FlexibleAdapter$5;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1532
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Double call detected! Headers already shown OR the method showAllHeaders() was already called!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1536
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$200(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    .line 1541
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v2, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 1542
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1544
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method
