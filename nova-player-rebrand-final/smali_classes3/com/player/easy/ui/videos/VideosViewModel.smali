.class public final Lcom/player/easy/ui/videos/VideosViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VideosViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0006\u0010!\u001a\u00020\u001fJ$\u0010\"\u001a\u00020\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010$\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010&R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR \u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u00150\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u00150\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/VideosViewModel;",
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
        "pendingDeleteVideos",
        "",
        "Lcom/player/easy/ui/videos/VideoItem;",
        "getPendingDeleteVideos",
        "()Ljava/util/List;",
        "setPendingDeleteVideos",
        "(Ljava/util/List;)V",
        "_permissionNeededForDelete",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/player/easy/util/result/Event;",
        "Landroid/content/IntentSender;",
        "permissionNeededForDelete",
        "Landroidx/lifecycle/LiveData;",
        "getPermissionNeededForDelete",
        "()Landroidx/lifecycle/LiveData;",
        "_removeAction",
        "removeAction",
        "getRemoveAction",
        "deleteVideos",
        "",
        "selectedVideos",
        "deletePendingVideosThumbnailCache",
        "performDeleteVideos",
        "videos",
        "resolver",
        "Landroid/content/ContentResolver;",
        "(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
        "SMAP\nVideosViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideosViewModel.kt\ncom/player/easy/ui/videos/VideosViewModel\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,83:1\n17#2:84\n*S KotlinDebug\n*F\n+ 1 VideosViewModel.kt\ncom/player/easy/ui/videos/VideosViewModel\n*L\n22#1:84\n*E\n"
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

.field private _removeAction:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final cache$delegate:Lkotlin/Lazy;

.field private pendingDeleteVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionNeededForDelete:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final removeAction:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 84
    sget-object p1, Lcom/player/easy/ui/videos/VideosViewModel$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/videos/VideosViewModel$special$$inlined$injectLazy$1;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->cache$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->_permissionNeededForDelete:Landroidx/lifecycle/MutableLiveData;

    .line 26
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->permissionNeededForDelete:Landroidx/lifecycle/LiveData;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->_removeAction:Landroidx/lifecycle/MutableLiveData;

    .line 29
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->removeAction:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getCache(Lcom/player/easy/ui/videos/VideosViewModel;)Lcom/player/easy/data/CoverCache;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideosViewModel;->getCache()Lcom/player/easy/data/CoverCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_permissionNeededForDelete$p(Lcom/player/easy/ui/videos/VideosViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->_permissionNeededForDelete:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_removeAction$p(Lcom/player/easy/ui/videos/VideosViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->_removeAction:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$performDeleteVideos(Lcom/player/easy/ui/videos/VideosViewModel;Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/ui/videos/VideosViewModel;->performDeleteVideos(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getCache()Lcom/player/easy/data/CoverCache;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->cache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/CoverCache;

    return-object v0
.end method

.method private final performDeleteVideos(Ljava/util/List;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/videos/VideosViewModel$performDeleteVideos$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/player/easy/ui/videos/VideosViewModel$performDeleteVideos$2;-><init>(Ljava/util/List;Lcom/player/easy/ui/videos/VideosViewModel;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

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


# virtual methods
.method public final deletePendingVideosThumbnailCache()V
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->pendingDeleteVideos:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->_removeAction:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/player/easy/util/result/Event;

    invoke-direct {v2, v0}, Lcom/player/easy/util/result/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->pendingDeleteVideos:Ljava/util/List;

    .line 63
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;

    invoke-direct {v5, v0, p0, v1}, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;-><init>(Ljava/util/List;Lcom/player/easy/ui/videos/VideosViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteVideos(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedVideos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/ui/videos/VideosViewModel$deleteVideos$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/ui/videos/VideosViewModel$deleteVideos$1;-><init>(Lcom/player/easy/ui/videos/VideosViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getPendingDeleteVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->pendingDeleteVideos:Ljava/util/List;

    return-object v0
.end method

.method public final getPermissionNeededForDelete()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->permissionNeededForDelete:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRemoveAction()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel;->removeAction:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setPendingDeleteVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel;->pendingDeleteVideos:Ljava/util/List;

    return-void
.end method
