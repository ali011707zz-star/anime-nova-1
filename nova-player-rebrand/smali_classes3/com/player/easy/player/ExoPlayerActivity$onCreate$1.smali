.class public final Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$onCreate$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
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

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    const/4 p1, 0x1

    .line 297
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_1
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
