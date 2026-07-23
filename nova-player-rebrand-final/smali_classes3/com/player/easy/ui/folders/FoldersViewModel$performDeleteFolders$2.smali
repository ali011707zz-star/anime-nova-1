.class final Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FoldersViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/FoldersViewModel;->performDeleteFolders(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.ui.folders.FoldersViewModel$performDeleteFolders$2"
    f = "FoldersViewModel.kt"
    i = {}
    l = {
        0xcb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFoldersViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n1915#2:233\n1915#2,2:234\n1916#2:236\n*S KotlinDebug\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2\n*L\n192#1:233\n193#1:234,2\n192#1:236\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Landroid/content/ContentResolver;

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/folders/FoldersViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/player/easy/ui/folders/FoldersViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$folders:Ljava/util/List;

    iput-object p2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;

    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$folders:Ljava/util/List;

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 191
    iget v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$folders:Ljava/util/List;

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->$resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    .line 233
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/player/easy/ui/folders/FolderItem;

    .line 193
    invoke-virtual {v4}, Lcom/player/easy/ui/folders/FolderItem;->getFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v4

    .line 234
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/player/easy/ui/videos/VideoStore;

    .line 195
    invoke-virtual {v5}, Lcom/player/easy/ui/videos/VideoStore;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-virtual {v5}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "_id = ?"

    invoke-virtual {v1, v7, v8, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    invoke-static {v3}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$getCache(Lcom/player/easy/ui/folders/FoldersViewModel;)Lcom/player/easy/data/CoverCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/player/easy/data/CoverCache;->deleteFromCache(Lcom/player/easy/ui/videos/VideoStore;)I

    goto :goto_0

    .line 201
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne p1, v1, :cond_4

    .line 203
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2$2;

    iget-object v3, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2$2;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 205
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
