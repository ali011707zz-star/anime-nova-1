.class final Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FoldersViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.player.easy.ui.folders.FoldersViewModel$deleteFolders$1$1"
    f = "FoldersViewModel.kt"
    i = {
        0x0
    }
    l = {
        0xb7
    }
    m = "invokeSuspend"
    n = {
        "resolver"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFoldersViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n1915#2,2:233\n*S KotlinDebug\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1\n*L\n179#1:233,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $selectedFolder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/folders/FoldersViewModel;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/folders/FoldersViewModel;",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    iput-object p2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->$selectedFolder:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;

    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->$selectedFolder:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    :try_start_1
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 177
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_4

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->$selectedFolder:Ljava/util/List;

    .line 233
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/player/easy/ui/folders/FolderItem;

    .line 179
    invoke-virtual {v2}, Lcom/player/easy/ui/folders/FolderItem;->getFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 233
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/player/easy/ui/videos/VideoStore;

    .line 179
    invoke-virtual {v3}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {p1, v0}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "createDeleteRequest(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {v0}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$get_permissionNeededForDelete$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/player/easy/util/result/Event;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/player/easy/util/result/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    iget-object v3, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->$selectedFolder:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1;->label:I

    invoke-static {v1, v3, p1, p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$performDeleteFolders(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 186
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
