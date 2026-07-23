.class public final Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;
.super Landroid/webkit/WebChromeClient;
.source "ExoPlayerActivity.kt"


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$onCreate$8",
        "Landroid/webkit/WebChromeClient;",
        "onShowCustomView",
        "",
        "view",
        "Landroid/view/View;",
        "callback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "onHideCustomView",
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
.field final synthetic this$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    .line 441
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 5

    .line 471
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "VideoEvent"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onHideCustomView"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v4}, Lcom/player/easy/player/ExoPlayerActivity;->access$getCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0, v3}, Lcom/player/easy/player/ExoPlayerActivity;->access$setCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    .line 482
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getCustomViewCallback$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0, v3}, Lcom/player/easy/player/ExoPlayerActivity;->access$setCustomViewCallback$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .line 443
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "VideoEvent"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onShowCustomView"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    .line 445
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$setCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0, p2}, Lcom/player/easy/player/ExoPlayerActivity;->access$setCustomViewCallback$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    if-eqz p1, :cond_4

    .line 455
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p2}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p2

    const/4 v0, 0x0

    const-string v2, "binding"

    if-nez p2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    iget-object p2, p2, Lcom/player/easy/databinding/ActivityPlayerBinding;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 460
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
