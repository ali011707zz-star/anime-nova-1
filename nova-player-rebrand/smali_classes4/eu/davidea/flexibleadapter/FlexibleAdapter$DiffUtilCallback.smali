.class public Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffUtilCallback"
.end annotation


# instance fields
.field protected newItems:Ljava/util/List;

.field protected oldItems:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5763
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 5821
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5822
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5823
    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/IFlexible;->shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 5798
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5799
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5800
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 0

    .line 5845
    sget-object p1, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    return-object p1
.end method

.method public final getNewItems()Ljava/util/List;
    .locals 1

    .line 5774
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    return-object v0
.end method

.method public final getNewListSize()I
    .locals 1

    .line 5784
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOldListSize()I
    .locals 1

    .line 5779
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final setItems(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 5769
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    .line 5770
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    return-void
.end method
