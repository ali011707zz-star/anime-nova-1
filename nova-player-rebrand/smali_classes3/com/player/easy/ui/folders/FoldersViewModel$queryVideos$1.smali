.class final Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FoldersViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/FoldersViewModel;->queryVideos(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.ui.folders.FoldersViewModel"
    f = "FoldersViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x6d
    }
    m = "queryVideos"
    n = {
        "videoList"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/player/easy/ui/folders/FoldersViewModel;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/folders/FoldersViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->label:I

    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$queryVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {p1, p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$queryVideos(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
