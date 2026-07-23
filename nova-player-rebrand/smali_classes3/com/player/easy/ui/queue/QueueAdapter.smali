.class public final Lcom/player/easy/ui/queue/QueueAdapter;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "QueueAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0008H\u0016J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/player/easy/ui/queue/QueueAdapter;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "Lcom/player/easy/ui/queue/QueueItem;",
        "fragment",
        "Lcom/player/easy/ui/queue/QueueFragment;",
        "<init>",
        "(Lcom/player/easy/ui/queue/QueueFragment;)V",
        "items",
        "",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "downloadItemListener",
        "Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;",
        "getDownloadItemListener",
        "()Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;",
        "updateDataSet",
        "",
        "indexOf",
        "",
        "item",
        "DownloadItemListener",
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


# instance fields
.field private final downloadItemListener:Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/player/easy/ui/queue/QueueFragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueAdapter;->items:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueAdapter;->downloadItemListener:Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;

    return-void
.end method


# virtual methods
.method public final getDownloadItemListener()Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueAdapter;->downloadItemListener:Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final indexOf(Lcom/player/easy/ui/queue/QueueItem;)I
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public updateDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueAdapter;->items:Ljava/util/List;

    .line 19
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;)V

    return-void
.end method
