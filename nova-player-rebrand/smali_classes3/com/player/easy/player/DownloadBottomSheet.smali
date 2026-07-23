.class public final Lcom/player/easy/player/DownloadBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "DownloadBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/player/easy/player/DownloadBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "activity",
        "Lcom/player/easy/player/ExoPlayerActivity;",
        "qualities",
        "",
        "Lcom/player/easy/player/Quality;",
        "wasPlaying",
        "",
        "<init>",
        "(Lcom/player/easy/player/ExoPlayerActivity;Ljava/util/List;Z)V",
        "getQualities",
        "()Ljava/util/List;",
        "getWasPlaying",
        "()Z",
        "containerView",
        "Landroid/widget/FrameLayout;",
        "getContainerView",
        "()Landroid/widget/FrameLayout;",
        "setContainerView",
        "(Landroid/widget/FrameLayout;)V",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "QualityAdapter",
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
.field private final activity:Lcom/player/easy/player/ExoPlayerActivity;

.field public containerView:Landroid/widget/FrameLayout;

.field private final qualities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/player/Quality;",
            ">;"
        }
    .end annotation
.end field

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final wasPlaying:Z


# direct methods
.method public static synthetic $r8$lambda$7OjAcjG7ICzFlgkHOpW3o2cK6Rg(Lcom/player/easy/player/DownloadBottomSheet;Lcom/player/easy/player/Quality;I)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/DownloadBottomSheet;->onCreate$lambda$0(Lcom/player/easy/player/DownloadBottomSheet;Lcom/player/easy/player/Quality;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gn9xPH6m9tS2SqNS0tSEdmjJlcw(Lcom/player/easy/player/DownloadBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/DownloadBottomSheet;->onCreate$lambda$1(Lcom/player/easy/player/DownloadBottomSheet;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/player/ExoPlayerActivity;",
            "Ljava/util/List<",
            "Lcom/player/easy/player/Quality;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    .line 18
    iput-object p2, p0, Lcom/player/easy/player/DownloadBottomSheet;->qualities:Ljava/util/List;

    .line 19
    iput-boolean p3, p0, Lcom/player/easy/player/DownloadBottomSheet;->wasPlaying:Z

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/player/DownloadBottomSheet;Lcom/player/easy/player/Quality;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->downloadQuality(Lcom/player/easy/player/Quality;I)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$1(Lcom/player/easy/player/DownloadBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    iget-boolean p0, p0, Lcom/player/easy/player/DownloadBottomSheet;->wasPlaying:Z

    invoke-virtual {p1, p0}, Lcom/player/easy/player/ExoPlayerActivity;->onBottomSheetDialogDismiss(Z)V

    return-void
.end method


# virtual methods
.method public final getContainerView()Landroid/widget/FrameLayout;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "containerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getQualities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/player/Quality;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet;->qualities:Ljava/util/List;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/player/easy/player/DownloadBottomSheet;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWasPlaying()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/player/easy/player/DownloadBottomSheet;->wasPlaying:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/player/easy/player/DownloadBottomSheet;->setContainerView(Landroid/widget/FrameLayout;)V

    .line 28
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object p1

    sget v0, Lcom/player/easy/R$color;->md_grey_900:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/player/easy/R$dimen;->bottom_sheet_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 46
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/player/easy/player/DownloadBottomSheet;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 47
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 48
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 49
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    new-instance p1, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;

    iget-object v1, p0, Lcom/player/easy/player/DownloadBottomSheet;->qualities:Ljava/util/List;

    .line 52
    new-instance v2, Lcom/player/easy/player/DownloadBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/player/easy/player/DownloadBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/DownloadBottomSheet;)V

    .line 53
    invoke-direct {p1, v1, v2}, Lcom/player/easy/player/DownloadBottomSheet$QualityAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 57
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/player/easy/player/DownloadBottomSheet;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance p1, Lcom/player/easy/player/DownloadBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/player/easy/player/DownloadBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/player/DownloadBottomSheet;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final setContainerView(Landroid/widget/FrameLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet;->containerView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/player/easy/player/DownloadBottomSheet;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
