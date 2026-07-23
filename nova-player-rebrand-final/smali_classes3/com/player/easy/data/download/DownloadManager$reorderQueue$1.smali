.class final Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/download/DownloadManager;->reorderQueue(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.player.easy.data.download.DownloadManager"
    f = "DownloadManager.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xc1,
        0xc5
    }
    m = "reorderQueue"
    n = {
        "downloads",
        "wasRunning",
        "downloads",
        "wasRunning",
        "$this$forEach$iv",
        "element$iv",
        "download",
        "$i$f$forEach",
        "$i$a$-forEach-DownloadManager$reorderQueue$2"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$4",
        "L$5",
        "I$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/player/easy/data/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/data/download/DownloadManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/player/easy/data/download/DownloadManager;->reorderQueue(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
