.class public interface abstract Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;
.super Ljava/lang/Object;
.source "ItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterCallback"
.end annotation


# virtual methods
.method public abstract onActionStateChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract onItemMove(II)Z
.end method

.method public abstract onItemSwiped(II)V
.end method

.method public abstract shouldMove(II)Z
.end method
