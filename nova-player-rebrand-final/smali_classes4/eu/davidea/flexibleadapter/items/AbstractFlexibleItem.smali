.class public abstract Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;
.super Ljava/lang/Object;
.source "AbstractFlexibleItem.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/IFlexible;


# instance fields
.field protected mDraggable:Z

.field protected mEnabled:Z

.field protected mHidden:Z

.field protected mSelectable:Z

.field protected mSwipeable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mHidden:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSelectable:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mDraggable:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSwipeable:Z

    return-void
.end method


# virtual methods
.method public getBubbleText(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->getLayoutRes()I

    move-result v0

    return v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public getSpanSize(II)I
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public isDraggable()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mDraggable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mEnabled:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mHidden:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSelectable:Z

    return v0
.end method

.method public isSwipeable()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSwipeable:Z

    return v0
.end method

.method public onViewAttached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onViewDetached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mDraggable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mEnabled:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mHidden:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSelectable:Z

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;->mSwipeable:Z

    return-void
.end method

.method public shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public unbindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)V"
        }
    .end annotation

    .line 0
    return-void
.end method
