.class public final Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;
.super Ljava/lang/Object;
.source "ExoPlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEventListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener",
        "",
        "<init>",
        "(Lcom/player/easy/player/ExoPlayerActivity;)V",
        "onVideoEvent",
        "",
        "event",
        "",
        "videoUrl",
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
.method public static synthetic $r8$lambda$6_GKoczrTmFC5tZTVMeTpK5nymI(Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;->onVideoEvent$lambda$0(Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onVideoEvent$lambda$0(Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 3

    .line 541
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "VideoEvent"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Video URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    const-string p1, "play"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 545
    const-string p1, "pause"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/player/easy/player/ExoPlayerActivity;->access$getPlayerAdConfig$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/player/PlayerAdConfig;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "playerAdConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/player/easy/player/PlayerAdConfig;->showAd()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onVideoEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, v1}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
