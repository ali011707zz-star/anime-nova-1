.class public final Lcom/player/easy/ui/folders/FoldersViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FoldersViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\'J\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0082@\u00a2\u0006\u0002\u0010)J\u0014\u0010*\u001a\u00020\'2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0 J$\u0010-\u001a\u00020\'2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020,0 2\u0006\u0010/\u001a\u000200H\u0082@\u00a2\u0006\u0002\u00101J\u0008\u00102\u001a\u00020\'H\u0014J9\u00103\u001a\u00020\r*\u0002002\u0008\u0008\u0002\u00104\u001a\u00020\u00172!\u00105\u001a\u001d\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020\'06H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001bX\u0082D\u00a2\u0006\u0002\n\u0000R \u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 0\u001f0\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 0\u001f0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0015\u00a8\u0006:"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/FoldersViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "cache",
        "Lcom/player/easy/data/CoverCache;",
        "getCache",
        "()Lcom/player/easy/data/CoverCache;",
        "cache$delegate",
        "Lkotlin/Lazy;",
        "contentObserver",
        "Landroid/database/ContentObserver;",
        "_permissionNeededForDelete",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/player/easy/util/result/Event;",
        "Landroid/content/IntentSender;",
        "permissionNeededForDelete",
        "Landroidx/lifecycle/LiveData;",
        "getPermissionNeededForDelete",
        "()Landroidx/lifecycle/LiveData;",
        "collection",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "projection",
        "",
        "",
        "[Ljava/lang/String;",
        "sortOrder",
        "_state",
        "Lcom/player/easy/util/result/Result;",
        "",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "state",
        "getState",
        "canReadSharedEntries",
        "",
        "loadVideos",
        "",
        "queryVideos",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteFolders",
        "selectedFolder",
        "Lcom/player/easy/ui/folders/FolderItem;",
        "performDeleteFolders",
        "folders",
        "resolver",
        "Landroid/content/ContentResolver;",
        "(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCleared",
        "registerObserver",
        "uri",
        "observer",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "selfChange",
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
        "SMAP\nFoldersViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,232:1\n17#2:233\n*S KotlinDebug\n*F\n+ 1 FoldersViewModel.kt\ncom/player/easy/ui/folders/FoldersViewModel\n*L\n33#1:233\n*E\n"
    }
.end annotation


# instance fields
.field private final _permissionNeededForDelete:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private _state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final cache$delegate:Lkotlin/Lazy;

.field private final collection:Landroid/net/Uri;

.field private contentObserver:Landroid/database/ContentObserver;

.field private final permissionNeededForDelete:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final projection:[Ljava/lang/String;

.field private final sortOrder:Ljava/lang/String;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 7

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 233
    sget-object p1, Lcom/player/easy/ui/folders/FoldersViewModel$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/folders/FoldersViewModel$special$$inlined$injectLazy$1;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->cache$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->_permissionNeededForDelete:Landroidx/lifecycle/MutableLiveData;

    .line 38
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->permissionNeededForDelete:Landroidx/lifecycle/LiveData;

    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 42
    const-string p1, "external"

    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->collection:Landroid/net/Uri;

    .line 55
    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_display_name"

    const-string v3, "duration"

    const-string v4, "_size"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->projection:[Ljava/lang/String;

    .line 59
    const-string p1, "date_modified DESC"

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->sortOrder:Ljava/lang/String;

    .line 61
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    .line 62
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->state:Landroidx/lifecycle/LiveData;

    .line 65
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "fresh start loading videos"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->canReadSharedEntries()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->loadVideos()V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getCache(Lcom/player/easy/ui/folders/FoldersViewModel;)Lcom/player/easy/data/CoverCache;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->getCache()Lcom/player/easy/data/CoverCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCollection$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroid/net/Uri;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->collection:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$getContentObserver$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroid/database/ContentObserver;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->contentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static final synthetic access$getProjection$p(Lcom/player/easy/ui/folders/FoldersViewModel;)[Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSortOrder$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->sortOrder:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$get_permissionNeededForDelete$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->_permissionNeededForDelete:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$performDeleteFolders(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/ui/folders/FoldersViewModel;->performDeleteFolders(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryVideos(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->queryVideos(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setContentObserver$p(Lcom/player/easy/ui/folders/FoldersViewModel;Landroid/database/ContentObserver;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private final getCache()Lcom/player/easy/data/CoverCache;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->cache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/CoverCache;

    return-object v0
.end method

.method private final performDeleteFolders(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/player/easy/ui/folders/FoldersViewModel$performDeleteFolders$2;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final queryVideos(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;

    iget v1, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;

    invoke-direct {v0, p0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$2;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    .line 164
    :goto_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videos"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$Forest;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private final registerObserver(Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Landroid/database/ContentObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/database/ContentObserver;"
        }
    .end annotation

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/player/easy/ui/folders/FoldersViewModel$registerObserver$contentObserver$1;

    invoke-direct {v1, p3, v0}, Lcom/player/easy/ui/folders/FoldersViewModel$registerObserver$contentObserver$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/os/Handler;)V

    const/4 p3, 0x1

    .line 228
    invoke-virtual {p1, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v1
.end method

.method static synthetic registerObserver$default(Lcom/player/easy/ui/folders/FoldersViewModel;Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/database/ContentObserver;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 219
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p4, "EXTERNAL_CONTENT_URI"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/ui/folders/FoldersViewModel;->registerObserver(Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Landroid/database/ContentObserver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canReadSharedEntries()Z
    .locals 4

    .line 73
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    .line 77
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    if-ne v1, v2, :cond_1

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x22

    if-lt v1, v2, :cond_3

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final deleteFolders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getPermissionNeededForDelete()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->permissionNeededForDelete:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadVideos()V
    .locals 6

    .line 91
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
