.class public final Lcom/player/easy/ui/folders/FolderHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "FolderHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/FolderHolder;",
        "Leu/davidea/viewholders/FlexibleViewHolder;",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Lcom/player/easy/ui/folders/FolderAdapter;",
        "<init>",
        "(Landroid/view/View;Lcom/player/easy/ui/folders/FolderAdapter;)V",
        "getAdapter",
        "()Lcom/player/easy/ui/folders/FolderAdapter;",
        "binding",
        "Lcom/player/easy/databinding/FolderItemBinding;",
        "bind",
        "",
        "folder",
        "Lcom/player/easy/ui/videos/VideoFolder;",
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
.field private final adapter:Lcom/player/easy/ui/folders/FolderAdapter;

.field private final binding:Lcom/player/easy/databinding/FolderItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/player/easy/ui/folders/FolderAdapter;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    iput-object p2, p0, Lcom/player/easy/ui/folders/FolderHolder;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    .line 11
    invoke-static {p1}, Lcom/player/easy/databinding/FolderItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FolderItemBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/ui/folders/FolderHolder;->binding:Lcom/player/easy/databinding/FolderItemBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/player/easy/ui/videos/VideoFolder;)V
    .locals 6

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderHolder;->binding:Lcom/player/easy/databinding/FolderItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/FolderItemBinding;->itemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderHolder;->binding:Lcom/player/easy/databinding/FolderItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/FolderItemBinding;->itemDetails:Landroid/widget/TextView;

    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/player/easy/R$plurals;->items:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getAdapter()Lcom/player/easy/ui/folders/FolderAdapter;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderHolder;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    return-object v0
.end method
