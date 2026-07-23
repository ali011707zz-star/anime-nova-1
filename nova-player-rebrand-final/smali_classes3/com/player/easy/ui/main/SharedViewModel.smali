.class public final Lcom/player/easy/ui/main/SharedViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SharedViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00182\u0006\u0010\u001a\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/ui/main/SharedViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "currentPath",
        "",
        "getCurrentPath",
        "()Ljava/lang/String;",
        "setCurrentPath",
        "(Ljava/lang/String;)V",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "getDownloadManager",
        "()Lcom/player/easy/data/download/DownloadManager;",
        "downloadManager$delegate",
        "Lkotlin/Lazy;",
        "videos",
        "",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "getVideos",
        "()Ljava/util/List;",
        "isFileExistAlready",
        "Lkotlin/Pair;",
        "",
        "url",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSharedViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedViewModel.kt\ncom/player/easy/ui/main/SharedViewModel\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,43:1\n17#2:44\n*S KotlinDebug\n*F\n+ 1 SharedViewModel.kt\ncom/player/easy/ui/main/SharedViewModel\n*L\n19#1:44\n*E\n"
    }
.end annotation


# instance fields
.field private currentPath:Ljava/lang/String;

.field private final downloadManager$delegate:Lkotlin/Lazy;

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 9

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->currentPath:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/player/easy/ui/main/SharedViewModel$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/main/SharedViewModel$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->downloadManager$delegate:Lkotlin/Lazy;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->videos:Ljava/util/List;

    .line 24
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "observe active download"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/player/easy/ui/main/SharedViewModel$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/player/easy/ui/main/SharedViewModel$1;-><init>(Lcom/player/easy/ui/main/SharedViewModel;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getCurrentPath()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->currentPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadManager()Lcom/player/easy/data/download/DownloadManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->downloadManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    return-object v0
.end method

.method public final getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/player/easy/ui/main/SharedViewModel;->videos:Ljava/util/List;

    return-object v0
.end method

.method public final isFileExistAlready(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/player/easy/ui/main/SharedViewModel$isFileExistAlready$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/player/easy/ui/main/SharedViewModel$isFileExistAlready$2;-><init>(Lcom/player/easy/ui/main/SharedViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->withIOContext(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setCurrentPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/player/easy/ui/main/SharedViewModel;->currentPath:Ljava/lang/String;

    return-void
.end method
