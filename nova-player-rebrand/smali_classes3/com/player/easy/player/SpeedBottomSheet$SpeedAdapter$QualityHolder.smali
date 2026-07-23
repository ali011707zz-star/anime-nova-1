.class public final Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpeedBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QualityHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
        "block",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function1;)V",
        "getBinding",
        "()Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
        "getBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "bind",
        "title",
        "",
        "isSelected",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpeedBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedBottomSheet.kt\ncom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,102:1\n278#2,2:103\n*S KotlinDebug\n*F\n+ 1 SpeedBottomSheet.kt\ncom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder\n*L\n81#1:103,2\n*E\n"
    }
.end annotation


# instance fields
.field private final binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

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


# direct methods
.method public static synthetic $r8$lambda$O1sUKY56B6kcuuPSNkbyoOcuCfA(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->bind$lambda$0(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    iput-object p1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    .line 77
    iput-object p2, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object p1, p1, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemIconPrimary:Landroid/widget/ImageView;

    const-string v0, "listItemIconPrimary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 103
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    invoke-virtual {p1}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance p2, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    return-object v0
.end method

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

    .line 77
    iget-object v0, p0, Lcom/player/easy/player/SpeedBottomSheet$SpeedAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
