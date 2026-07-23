.class public final Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SpeedBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/SpeedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B1\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0008\u0010\u0013\u001a\u00020\u0007H\u0016J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0007H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;",
        "speedList",
        "",
        "",
        "selectedSpeed",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V",
        "getBlock",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedSpeed:I

.field private final speedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "speedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->speedList:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->selectedSpeed:I

    .line 72
    iput-object p3, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getBlock()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->block:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->speedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 69
    check-cast p1, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->onBindViewHolder(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->selectedSpeed:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->speedList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->bind(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 88
    invoke-static {p2, p1, v0}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p2, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;

    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;->block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, p1, v0}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;-><init>(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function1;)V

    return-object p2
.end method
