.class public interface abstract Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;
.super Ljava/lang/Object;
.source "ItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewHolderCallback"
.end annotation


# virtual methods
.method public abstract getFrontView()Landroid/view/View;
.end method

.method public abstract getRearLeftView()Landroid/view/View;
.end method

.method public abstract getRearRightView()Landroid/view/View;
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isSwipeable()Z
.end method

.method public abstract onActionStateChanged(II)V
.end method

.method public abstract onItemReleased(I)V
.end method
