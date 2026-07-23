.class public final Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QualityBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/QualityBottomSheet$QualityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QualityHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
        "block",
        "Lkotlin/Function2;",
        "Lcom/player/easy/player/Quality;",
        "",
        "",
        "<init>",
        "(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function2;)V",
        "getBinding",
        "()Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
        "getBlock",
        "()Lkotlin/jvm/functions/Function2;",
        "bind",
        "quality",
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
        "SMAP\nQualityBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QualityBottomSheet.kt\ncom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,102:1\n278#2,2:103\n*S KotlinDebug\n*F\n+ 1 QualityBottomSheet.kt\ncom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder\n*L\n81#1:103,2\n*E\n"
    }
.end annotation


# instance fields
.field private final binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

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


# direct methods
.method public static synthetic $r8$lambda$ws3dItyOOSi_237s8_6RkYRTdWM(Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->bind$lambda$0(Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/player/easy/player/Quality;",
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
    iput-object p1, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    .line 77
    iput-object p2, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p2, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/player/easy/player/Quality;Z)V
    .locals 2

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/player/easy/player/Quality;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemIconPrimary:Landroid/widget/ImageView;

    const-string v1, "listItemIconPrimary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 103
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    invoke-virtual {p2}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    return-object v0
.end method

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

    .line 77
    iget-object v0, p0, Lcom/player/easy/player/QualityBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
