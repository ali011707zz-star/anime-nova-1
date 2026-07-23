.class final Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideosViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/videos/VideosViewModel;->deletePendingVideosThumbnailCache()V
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
    c = "com.player.easy.ui.videos.VideosViewModel$deletePendingVideosThumbnailCache$1"
    f = "VideosViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVideosViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideosViewModel.kt\ncom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1915#2,2:84\n*S KotlinDebug\n*F\n+ 1 VideosViewModel.kt\ncom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1\n*L\n64#1:84,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $toBeDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/videos/VideosViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/player/easy/ui/videos/VideosViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;",
            "Lcom/player/easy/ui/videos/VideosViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->$toBeDeleted:Ljava/util/List;

    iput-object p2, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->this$0:Lcom/player/easy/ui/videos/VideosViewModel;

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
    new-instance p1, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;

    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->$toBeDeleted:Ljava/util/List;

    iget-object v1, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->this$0:Lcom/player/easy/ui/videos/VideosViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;-><init>(Ljava/util/List;Lcom/player/easy/ui/videos/VideosViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    iget v0, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->$toBeDeleted:Ljava/util/List;

    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosViewModel$deletePendingVideosThumbnailCache$1;->this$0:Lcom/player/easy/ui/videos/VideosViewModel;

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/videos/VideoItem;

    .line 64
    invoke-static {v0}, Lcom/player/easy/ui/videos/VideosViewModel;->access$getCache(Lcom/player/easy/ui/videos/VideosViewModel;)Lcom/player/easy/data/CoverCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/player/easy/ui/videos/VideoItem;->getVideo()Lcom/player/easy/ui/videos/VideoStore;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/player/easy/data/CoverCache;->deleteFromCache(Lcom/player/easy/ui/videos/VideoStore;)I

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
