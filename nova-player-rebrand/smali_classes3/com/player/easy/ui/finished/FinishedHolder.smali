.class public final Lcom/player/easy/ui/finished/FinishedHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "FinishedHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/player/easy/ui/finished/FinishedHolder;",
        "Leu/davidea/viewholders/FlexibleViewHolder;",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Lcom/player/easy/ui/finished/FinishedAdapter;",
        "<init>",
        "(Landroid/view/View;Lcom/player/easy/ui/finished/FinishedAdapter;)V",
        "getAdapter",
        "()Lcom/player/easy/ui/finished/FinishedAdapter;",
        "binding",
        "Lcom/player/easy/databinding/FinishedItemBinding;",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "bind",
        "",
        "setDownloadStateView",
        "showPopupMenu",
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
        "SMAP\nFinishedHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FinishedHolder.kt\ncom/player/easy/ui/finished/FinishedHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ViewExtensions.kt\ncom/player/easy/util/ViewExtensionsKt\n*L\n1#1,94:1\n257#2,2:95\n257#2,2:97\n66#3,10:99\n*S KotlinDebug\n*F\n+ 1 FinishedHolder.kt\ncom/player/easy/ui/finished/FinishedHolder\n*L\n55#1:95,2\n58#1:97,2\n75#1:99,10\n*E\n"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

.field private final binding:Lcom/player/easy/databinding/FinishedItemBinding;

.field private download:Lcom/tonyodev/fetch2/Download;

.field private final view:Landroid/view/View;


# direct methods
.method public static $r8$lambda$J7L_bsmwk4IPRCThrnaTN5Y4k-o(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedHolder;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeKWwNUs7DJF61Nm_gJBikpgS6w(ZZLandroid/view/Menu;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedHolder;->showPopupMenu$lambda$0(ZZLandroid/view/Menu;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nbGuEjLHba1A5_DDGcUZH7-V7gY(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/finished/FinishedHolder;->showPopupMenu$lambda$1(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ycFQTEaXsXZ68GaKPNZXDOkDAmU(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/finished/FinishedHolder;->_init_$lambda$0(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/player/easy/ui/finished/FinishedAdapter;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedHolder;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/player/easy/ui/finished/FinishedHolder;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    .line 18
    invoke-static {p1}, Lcom/player/easy/databinding/FinishedItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FinishedItemBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedHolder;->binding:Lcom/player/easy/databinding/FinishedItemBinding;

    .line 22
    iget-object p1, p1, Lcom/player/easy/databinding/FinishedItemBinding;->more:Landroid/widget/ImageView;

    new-instance p2, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/ui/finished/FinishedHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/View;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final setDownloadStateView()V
    .locals 11

    .line 50
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder;->binding:Lcom/player/easy/databinding/FinishedItemBinding;

    .line 51
    iget-object v1, v0, Lcom/player/easy/databinding/FinishedItemBinding;->status:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    const/4 v3, 0x0

    const-string v4, "download"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v5, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    const/4 v6, 0x0

    const-string v7, "totalSize"

    if-ne v2, v5, :cond_1

    .line 54
    iget-object v2, v0, Lcom/player/easy/databinding/FinishedItemBinding;->status:Landroid/widget/TextView;

    sget v5, Lcom/player/easy/R$string;->error:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v0, Lcom/player/easy/databinding/FinishedItemBinding;->totalSize:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 57
    :cond_1
    iget-object v2, v0, Lcom/player/easy/databinding/FinishedItemBinding;->status:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v5, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTranslatedStatus(Lcom/tonyodev/fetch2/Download;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v0, Lcom/player/easy/databinding/FinishedItemBinding;->totalSize:Landroid/widget/TextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v2, v0, Lcom/player/easy/databinding/FinishedItemBinding;->totalSize:Landroid/widget/TextView;

    .line 60
    iget-object v5, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v5, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_5

    .line 61
    sget-object v5, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    iget-object v7, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v7, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_4
    invoke-interface {v7}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8, v1}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_5
    const-string v1, "???"

    .line 59
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    iget-object v0, v0, Lcom/player/easy/databinding/FinishedItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_6
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v1

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v3, v1

    :goto_2
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v6

    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private final showPopupMenu(Landroid/view/View;)V
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    const/4 v1, 0x0

    const-string v2, "download"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v3, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    sget-object v2, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v1, v2, :cond_3

    move v4, v5

    .line 76
    :cond_3
    sget v1, Lcom/player/easy/R$menu;->finished_single:I

    .line 75
    new-instance v2, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v4}, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda2;-><init>(ZZ)V

    new-instance v0, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/ui/finished/FinishedHolder;)V

    .line 66
    new-instance v3, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/player/easy/R$attr;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 67
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "getMenu(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Lcom/player/easy/util/ViewExtensionsKt$popupMenu$1;

    invoke-direct {p1, v0}, Lcom/player/easy/util/ViewExtensionsKt$popupMenu$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 74
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method private static final showPopupMenu$lambda$0(ZZLandroid/view/Menu;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$popupMenu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget v0, Lcom/player/easy/R$id;->action_open:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    sget v0, Lcom/player/easy/R$id;->action_start:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    sget p1, Lcom/player/easy/R$id;->action_redownload:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    sget p1, Lcom/player/easy/R$id;->action_remove:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    sget p1, Lcom/player/easy/R$id;->action_share:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showPopupMenu$lambda$1(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "$this$popupMenu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    invoke-virtual {v0}, Lcom/player/easy/ui/finished/FinishedAdapter;->getDelegate()Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;->onMenuItemClick(ILandroid/view/MenuItem;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bind(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedHolder;->download:Lcom/tonyodev/fetch2/Download;

    .line 33
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder;->binding:Lcom/player/easy/databinding/FinishedItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/FinishedItemBinding;->titleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedHolder;->setDownloadStateView()V

    return-void
.end method

.method public final getAdapter()Lcom/player/easy/ui/finished/FinishedAdapter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    return-object v0
.end method
