.class public final Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/View;",
        "view",
        "",
        "onViewAttachedToWindow",
        "(Landroid/view/View;)V",
        "onViewDetachedFromWindow",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnAttach$1\n+ 2 ExoPlayerActivity.kt\ncom/player/easy/player/ExoPlayerActivity\n*L\n1#1,103:1\n582#2:104\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_doOnAttach:Landroid/view/View;

.field final synthetic this$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;->$this_doOnAttach:Landroid/view/View;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;->$this_doOnAttach:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 582
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-virtual {p1, v0}, Lcom/player/easy/player/DoubleTabPlayerView;->setDoubleTabListener(Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method
