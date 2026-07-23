.class Leu/davidea/flexibleadapter/FlexibleAdapter$13;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->autoScrollWithDelay(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$position:I

.field final synthetic val$subItemsCount:I


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 5111
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->val$position:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->val$subItemsCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 5114
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p1, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5117
    :cond_0
    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 5118
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 5119
    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->val$position:I

    iget v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->val$subItemsCount:I

    add-int v4, v2, v3

    sub-int/2addr v4, v0

    const/4 v5, 0x1

    if-lez v4, :cond_2

    sub-int v4, v2, p1

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 5123
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5124
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5125
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getSpanCount()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 5127
    rem-int/2addr v0, v1

    add-int/2addr v0, v1

    :cond_1
    add-int/2addr p1, v0

    .line 5131
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1100(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    goto :goto_0

    :cond_2
    if-ge v2, p1, :cond_3

    .line 5133
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$13;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1100(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    :cond_3
    :goto_0
    return v5
.end method
