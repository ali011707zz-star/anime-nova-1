.class public final Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DownloadBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/DownloadBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QualityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B/\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;",
        "qualities",
        "",
        "Lcom/player/easy/player/Quality;",
        "block",
        "Lkotlin/Function2;",
        "",
        "",
        "<init>",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V",
        "getBlock",
        "()Lkotlin/jvm/functions/Function2;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "getItemCount",
        "onBindViewHolder",
        "holder",
        "position",
        "QualityHolder",
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
.field private final block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/player/easy/player/Quality;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final qualities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/player/Quality;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/player/Quality;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/player/easy/player/Quality;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "qualities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->qualities:Ljava/util/List;

    iput-object p2, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->block:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getBlock()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/player/easy/player/Quality;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->block:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->qualities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 68
    check-cast p1, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->onBindViewHolder(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->qualities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/player/easy/player/Quality;

    invoke-virtual {p1, p2}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->bind(Lcom/player/easy/player/Quality;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 84
    invoke-static {p2, p1, v0}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance p2, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;

    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;->block:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p1, v0}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;-><init>(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function2;)V

    return-object p2
.end method
