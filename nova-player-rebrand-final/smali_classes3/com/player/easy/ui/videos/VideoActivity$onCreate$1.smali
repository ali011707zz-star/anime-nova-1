.class public final Lcom/player/easy/ui/videos/VideoActivity$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "VideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/videos/VideoActivity;->onCreate(Landroid/os/Bundle;)V
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
        "com/player/easy/ui/videos/VideoActivity$onCreate$1",
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
.field final synthetic this$0:Lcom/player/easy/ui/videos/VideoActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/videos/VideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity$onCreate$1;->this$0:Lcom/player/easy/ui/videos/VideoActivity;

    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Lcom/player/easy/ui/folders/FoldersFragmentKt;->setCurrentOpenedFolder(Lcom/player/easy/ui/videos/VideoFolder;)V

    .line 96
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity$onCreate$1;->this$0:Lcom/player/easy/ui/videos/VideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
