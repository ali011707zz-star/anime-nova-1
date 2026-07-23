.class public final Lcom/player/easy/ui/queue/QueueHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "QueueHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u0011\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/player/easy/ui/queue/QueueHolder;",
        "Leu/davidea/viewholders/FlexibleViewHolder;",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Lcom/player/easy/ui/queue/QueueAdapter;",
        "<init>",
        "(Landroid/view/View;Lcom/player/easy/ui/queue/QueueAdapter;)V",
        "getAdapter",
        "()Lcom/player/easy/ui/queue/QueueAdapter;",
        "binding",
        "Lcom/player/easy/databinding/QueueItemBinding;",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "bind",
        "",
        "notifyProgress",
        "setDownloadStateView",
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
.field private final adapter:Lcom/player/easy/ui/queue/QueueAdapter;

.field private final binding:Lcom/player/easy/databinding/QueueItemBinding;

.field private download:Lcom/tonyodev/fetch2/Download;

.field private final view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$_dSzkQdtZcU0hoFAJRfsNwttqhI(Lcom/player/easy/ui/queue/QueueHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueHolder;->_init_$lambda$0(Lcom/player/easy/ui/queue/QueueHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/player/easy/ui/queue/QueueAdapter;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueHolder;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/player/easy/ui/queue/QueueHolder;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    .line 15
    invoke-static {p1}, Lcom/player/easy/databinding/QueueItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/QueueItemBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueHolder;->binding:Lcom/player/easy/databinding/QueueItemBinding;

    .line 18
    iget-object p1, p1, Lcom/player/easy/databinding/QueueItemBinding;->action:Landroid/widget/ImageView;

    new-instance p2, Lcom/player/easy/ui/queue/QueueHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/player/easy/ui/queue/QueueHolder$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/queue/QueueHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/player/easy/ui/queue/QueueHolder;Landroid/view/View;)V
    .locals 1

    .line 19
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueHolder;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueueAdapter;->getDownloadItemListener()Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez p0, :cond_0

    const-string p0, "download"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, v0, p0}, Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;->onDownloadActionClick(ILcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private final setDownloadStateView()V
    .locals 10

    .line 57
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueHolder;->binding:Lcom/player/easy/databinding/QueueItemBinding;

    .line 58
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    const/4 v2, 0x0

    const-string v3, "download"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->isPausedOrAdded(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->action:Landroid/widget/ImageView;

    sget v4, Lcom/player/easy/R$drawable;->ic_baseline_play_circle_outline_24:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->action:Landroid/widget/ImageView;

    sget v4, Lcom/player/easy/R$drawable;->ic_baseline_pause_circle_outline_24:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_0
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->status:Landroid/widget/TextView;

    .line 65
    iget-object v4, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    invoke-interface {v4}, Lcom/tonyodev/fetch2/Download;->getDownloadedBytesPerSecond()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const-string v5, "getContext(...)"

    if-nez v4, :cond_4

    .line 66
    iget-object v4, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    iget-object v8, v0, Lcom/player/easy/databinding/QueueItemBinding;->status:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTranslatedStatus(Lcom/tonyodev/fetch2/Download;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 68
    :cond_4
    iget-object v4, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v4, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_5
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getDownloadSpeedString(Lcom/tonyodev/fetch2/Download;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v1

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_7
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 72
    :goto_2
    iget-object v4, v0, Lcom/player/easy/databinding/QueueItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->eta:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v4, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    iget-object v8, v0, Lcom/player/easy/databinding/QueueItemBinding;->eta:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getETAString(Lcom/tonyodev/fetch2/Download;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->totalSize:Landroid/widget/TextView;

    .line 80
    iget-object v4, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v4, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_a
    invoke-interface {v4}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_c

    .line 81
    sget-object v4, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    iget-object v6, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v6, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_b
    invoke-interface {v6}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v6

    iget-object v8, v0, Lcom/player/easy/databinding/QueueItemBinding;->totalSize:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7, v8}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 83
    :cond_c
    const-string v4, "?"

    .line 79
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, v0, Lcom/player/easy/databinding/QueueItemBinding;->totalDownloadedSize:Landroid/widget/TextView;

    sget-object v4, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    iget-object v6, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v6, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v2, v6

    :goto_4
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v2

    iget-object v0, v0, Lcom/player/easy/databinding/QueueItemBinding;->totalDownloadedSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3, v0}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    .line 33
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueHolder;->binding:Lcom/player/easy/databinding/QueueItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/QueueItemBinding;->titleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueHolder;->setDownloadStateView()V

    return-void
.end method

.method public final getAdapter()Lcom/player/easy/ui/queue/QueueAdapter;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueHolder;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    return-object v0
.end method

.method public final notifyProgress(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v0

    if-eq v1, v0, :cond_1

    return-void

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueHolder;->download:Lcom/tonyodev/fetch2/Download;

    .line 53
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueHolder;->setDownloadStateView()V

    return-void
.end method
