.class public final Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleTabPlayerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/DoubleTabPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DoubleTapGestureListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "rootView",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/player/easy/player/DoubleTabPlayerView;Landroid/view/View;)V",
        "getRootView",
        "()Landroid/view/View;",
        "onSingleTapConfirmed",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onDoubleTap",
        "onDoubleTapEvent",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/player/easy/player/DoubleTabPlayerView;


# direct methods
.method public constructor <init>(Lcom/player/easy/player/DoubleTabPlayerView;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->rootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getRootView()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDoubleTap"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {p1}, Lcom/player/easy/player/DoubleTabPlayerView;->access$isDoubleTapping$p(Lcom/player/easy/player/DoubleTabPlayerView;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {p1, v0}, Lcom/player/easy/player/DoubleTabPlayerView;->access$setDoubleTapping$p(Lcom/player/easy/player/DoubleTabPlayerView;Z)V

    :cond_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {v0}, Lcom/player/easy/player/DoubleTabPlayerView;->access$isDoubleTapping$p(Lcom/player/easy/player/DoubleTabPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onDoubleTapEvent, ACTION_UP"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Lcom/player/easy/player/DoubleTabPlayerView;->getDoubleTabListener()Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v4, p1}, Lcom/player/easy/player/DoubleTabPlayerView;->access$shouldForward(Lcom/player/easy/player/DoubleTabPlayerView;F)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, v3, p1}, Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;->onDoubleTapProgressUp(FFLjava/lang/Boolean;)V

    :cond_0
    return v1

    .line 174
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSingleTapConfirmed: isDoubleTap = false"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1
.end method
