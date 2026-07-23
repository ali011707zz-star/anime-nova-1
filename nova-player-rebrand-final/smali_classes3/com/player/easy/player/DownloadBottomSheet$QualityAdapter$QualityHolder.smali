.class public final Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QualityHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;",
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
        "SMAP\nDownloadBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadBottomSheet.kt\ncom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,97:1\n257#2,2:98\n*S KotlinDebug\n*F\n+ 1 DownloadBottomSheet.kt\ncom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder\n*L\n77#1:98,2\n*E\n"
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
.method public static synthetic $r8$lambda$lUaa_Xog_qP-fGuej44eww81bbM(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->bind$lambda$0(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V

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

    .line 74
    invoke-virtual {p1}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    iput-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    .line 73
    iput-object p2, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/player/easy/player/Quality;)V
    .locals 2

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/player/easy/player/Quality;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemIconPrimary:Landroid/widget/ImageView;

    const-string v1, "listItemIconPrimary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    invoke-virtual {v0}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;Lcom/player/easy/player/Quality;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->binding:Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

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

    .line 73
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter$QualityHolder;->block:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
