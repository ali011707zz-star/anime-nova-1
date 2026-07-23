.class public Lcom/player/easy/ui/BottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "BottomSheet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0015J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000bJ\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/player/easy/ui/BottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "onClickListener",
        "Landroid/content/DialogInterface$OnClickListener;",
        "customView",
        "Landroid/view/View;",
        "applyTopPadding",
        "",
        "applyBottomPadding",
        "container",
        "Landroid/widget/FrameLayout;",
        "containerView",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "show",
        "setCustomView",
        "view",
        "setApplyTopPadding",
        "value",
        "setApplyBottomPadding",
        "dismissWithButtonClick",
        "item",
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


# instance fields
.field private applyBottomPadding:Z

.field private applyTopPadding:Z

.field private final container:Landroid/widget/FrameLayout;

.field private containerView:Landroid/widget/FrameLayout;

.field private customView:Landroid/view/View;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/player/easy/ui/BottomSheet;->applyTopPadding:Z

    .line 26
    iput-boolean v0, p0, Lcom/player/easy/ui/BottomSheet;->applyBottomPadding:Z

    .line 28
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/player/easy/ui/BottomSheet;->container:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final dismissWithButtonClick(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/player/easy/ui/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/player/easy/ui/BottomSheet;->container:Landroid/widget/FrameLayout;

    .line 36
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/player/easy/R$dimen;->bottom_sheet_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDisplayCompat(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 56
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    iget-boolean v2, p0, Lcom/player/easy/ui/BottomSheet;->applyTopPadding:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 61
    :goto_0
    iget-boolean v4, p0, Lcom/player/easy/ui/BottomSheet;->applyBottomPadding:Z

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 57
    :goto_1
    invoke-virtual {p1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    .line 66
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v3, p0, Lcom/player/easy/ui/BottomSheet;->container:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p1, p0, Lcom/player/easy/ui/BottomSheet;->customView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/player/easy/ui/BottomSheet;->customView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    iget-object v0, p0, Lcom/player/easy/ui/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_5
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    .line 75
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/player/easy/ui/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public final setApplyBottomPadding(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/player/easy/ui/BottomSheet;->applyBottomPadding:Z

    return-void
.end method

.method public final setApplyTopPadding(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/player/easy/ui/BottomSheet;->applyTopPadding:Z

    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/player/easy/ui/BottomSheet;->customView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 82
    iget-object v0, p0, Lcom/player/easy/ui/BottomSheet;->containerView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
