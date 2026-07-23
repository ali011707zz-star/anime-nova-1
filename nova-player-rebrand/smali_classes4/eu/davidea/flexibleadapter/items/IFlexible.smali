.class public interface abstract Leu/davidea/flexibleadapter/items/IFlexible;
.super Ljava/lang/Object;
.source "IFlexible.java"


# virtual methods
.method public abstract bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
.end method

.method public abstract createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract getItemViewType()I
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSwipeable()Z
.end method

.method public abstract onViewAttached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract onViewDetached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setSelectable(Z)V
.end method

.method public abstract shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z
.end method

.method public abstract unbindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method
