.class final Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/download/DownloadManager;->destroySubscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1
    }
    l = {
        0x93,
        0x96
    }
    m = "destroySubscriptions"
    n = {
        "downloads"
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
            "Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p1, p0}, Lcom/player/easy/data/download/DownloadManager;->access$destroySubscriptions(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
