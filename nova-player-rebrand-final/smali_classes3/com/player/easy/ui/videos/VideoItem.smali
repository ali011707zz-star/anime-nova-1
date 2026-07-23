.class public final Lcom/player/easy/ui/videos/VideoItem;
.super Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;
.source "VideoItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000fH\u0016J>\u0010\u0012\u001a\u00020\u00132\u0014\u0010\u000e\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u000f2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/VideoItem;",
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;",
        "Lcom/player/easy/ui/videos/VideosHolder;",
        "video",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "<init>",
        "(Lcom/player/easy/ui/videos/VideoStore;)V",
        "getVideo",
        "()Lcom/player/easy/ui/videos/VideoStore;",
        "getLayoutRes",
        "",
        "createViewHolder",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "Leu/davidea/flexibleadapter/items/IFlexible;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "bindViewHolder",
        "",
        "holder",
        "position",
        "payloads",
        "",
        "",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final video:Lcom/player/easy/ui/videos/VideoStore;


# direct methods
.method public constructor <init>(Lcom/player/easy/ui/videos/VideoStore;)V
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/player/easy/ui/videos/VideosHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/player/easy/ui/videos/VideoItem;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lcom/player/easy/ui/videos/VideosHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lcom/player/easy/ui/videos/VideosHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            "Lcom/player/easy/ui/videos/VideosHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "holder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {p2, p1}, Lcom/player/easy/ui/videos/VideosHolder;->bind(Lcom/player/easy/ui/videos/VideoStore;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/videos/VideoItem;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lcom/player/easy/ui/videos/VideosHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lcom/player/easy/ui/videos/VideosHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            ")",
            "Lcom/player/easy/ui/videos/VideosHolder;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/player/easy/ui/videos/VideosHolder;

    check-cast p2, Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-direct {v0, p1, p2}, Lcom/player/easy/ui/videos/VideosHolder;-><init>(Landroid/view/View;Lcom/player/easy/ui/videos/VideosAdapter;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/player/easy/ui/videos/VideoItem;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/player/easy/ui/videos/VideoItem;

    iget-object p1, p1, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutRes()I
    .locals 1

    .line 12
    sget v0, Lcom/player/easy/R$layout;->video_list_item:I

    return v0
.end method

.method public final getVideo()Lcom/player/easy/ui/videos/VideoStore;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoItem;->video:Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
