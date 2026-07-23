.class public final Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;
.super Ljava/lang/Object;
.source "ExoPlayerActivity.kt"

# interfaces
.implements Lcom/player/easy/util/lang/HttpConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1",
        "Lcom/player/easy/util/lang/HttpConnection$Listener;",
        "onConnectionCreated",
        "",
        "conn",
        "Ljava/net/HttpURLConnection;",
        "onResponseHandle",
        "code",
        "",
        "message",
        "",
        "onMovedPermanently",
        "newUrl",
        "onIOException",
        "e",
        "Ljava/io/IOException;",
        "onTooManyRedirects",
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
.method public static synthetic $r8$lambda$zFtoWE12bx2_X4cCCtRSGt-D6FI(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->onIOException$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onIOException$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 8

    .line 1146
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getDownloadSelection$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "downloadSelection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1147
    sget v3, Lcom/player/easy/R$string;->downloading_failed:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public onConnectionCreated(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 1

    .line 1145
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMovedPermanently(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResponseHandle(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1138
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;

    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p1, p3}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/net/HttpURLConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onTooManyRedirects()V
    .locals 0

    .line 0
    return-void
.end method
