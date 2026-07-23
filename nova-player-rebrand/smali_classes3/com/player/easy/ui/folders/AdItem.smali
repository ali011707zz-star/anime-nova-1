.class public final Lcom/player/easy/ui/folders/AdItem;
.super Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;
.source "AdItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/folders/AdItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J$\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010H\u0016J>\u0010\u0013\u001a\u00020\u00142\u0014\u0010\u000f\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\n2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J\u0008\u0010\u001a\u001a\u00020\u0006H\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/AdItem;",
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;",
        "Lcom/player/easy/ui/folders/AdHolder;",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "getLayoutRes",
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
        "isDraggable",
        "isSelectable",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/player/easy/ui/folders/AdItem$Companion;

.field private static id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/ui/folders/AdItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/ui/folders/AdItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/ui/folders/AdItem;->Companion:Lcom/player/easy/ui/folders/AdItem$Companion;

    const-wide v0, 0x35779fa64L

    .line 13
    sput-wide v0, Lcom/player/easy/ui/folders/AdItem;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/player/easy/ui/folders/AdHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/player/easy/ui/folders/AdItem;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lcom/player/easy/ui/folders/AdHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lcom/player/easy/ui/folders/AdHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            "Lcom/player/easy/ui/folders/AdHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "holder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lcom/player/easy/ui/folders/AdHolder;->bind()V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/AdItem;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lcom/player/easy/ui/folders/AdHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lcom/player/easy/ui/folders/AdHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            ")",
            "Lcom/player/easy/ui/folders/AdHolder;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/player/easy/ui/folders/AdHolder;

    invoke-direct {v0, p1, p2}, Lcom/player/easy/ui/folders/AdHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutRes()I
    .locals 1

    .line 25
    sget v0, Lcom/player/easy/R$layout;->ad_holder:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 22
    sget-wide v0, Lcom/player/easy/ui/folders/AdItem;->id:J

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
