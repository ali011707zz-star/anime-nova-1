.class public final Lcom/player/easy/ui/folders/FoldersFragmentKt;
.super Ljava/lang/Object;
.source "FoldersFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "DELETE_PERMISSION_REQUEST",
        "",
        "currentOpenedFolder",
        "Lcom/player/easy/ui/videos/VideoFolder;",
        "getCurrentOpenedFolder",
        "()Lcom/player/easy/ui/videos/VideoFolder;",
        "setCurrentOpenedFolder",
        "(Lcom/player/easy/ui/videos/VideoFolder;)V",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DELETE_PERMISSION_REQUEST:I = 0x1034

.field private static currentOpenedFolder:Lcom/player/easy/ui/videos/VideoFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final getCurrentOpenedFolder()Lcom/player/easy/ui/videos/VideoFolder;
    .locals 1

    .line 69
    sget-object v0, Lcom/player/easy/ui/folders/FoldersFragmentKt;->currentOpenedFolder:Lcom/player/easy/ui/videos/VideoFolder;

    return-object v0
.end method

.method public static final setCurrentOpenedFolder(Lcom/player/easy/ui/videos/VideoFolder;)V
    .locals 0

    .line 69
    sput-object p0, Lcom/player/easy/ui/folders/FoldersFragmentKt;->currentOpenedFolder:Lcom/player/easy/ui/videos/VideoFolder;

    return-void
.end method
