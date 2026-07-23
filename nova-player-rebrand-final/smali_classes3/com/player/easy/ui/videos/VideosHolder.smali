.class public final Lcom/player/easy/ui/videos/VideosHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "VideosHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/VideosHolder;",
        "Leu/davidea/viewholders/FlexibleViewHolder;",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Lcom/player/easy/ui/videos/VideosAdapter;",
        "<init>",
        "(Landroid/view/View;Lcom/player/easy/ui/videos/VideosAdapter;)V",
        "getAdapter",
        "()Lcom/player/easy/ui/videos/VideosAdapter;",
        "binding",
        "Lcom/player/easy/databinding/VideoListItemBinding;",
        "bind",
        "",
        "video",
        "Lcom/player/easy/ui/videos/VideoStore;",
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
        "SMAP\nVideosHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideosHolder.kt\ncom/player/easy/ui/videos/VideosHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Contexts.kt\ncoil/Contexts\n*L\n1#1,54:1\n257#2,2:55\n12#3:57\n*S KotlinDebug\n*F\n+ 1 VideosHolder.kt\ncom/player/easy/ui/videos/VideosHolder\n*L\n39#1:55,2\n50#1:57\n*E\n"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/player/easy/ui/videos/VideosAdapter;

.field private final binding:Lcom/player/easy/databinding/VideoListItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/player/easy/ui/videos/VideosAdapter;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    iput-object p2, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    .line 18
    invoke-static {p1}, Lcom/player/easy/databinding/VideoListItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/VideoListItemBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/player/easy/ui/videos/VideoStore;)V
    .locals 12

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->size:Landroid/widget/TextView;

    sget-object v1, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v4, v4, Lcom/player/easy/databinding/VideoListItemBinding;->size:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->duration:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v2}, Lcom/player/easy/ui/videos/VideosAdapter;->getFormatBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v3}, Lcom/player/easy/ui/videos/VideosAdapter;->getFormatter()Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getDuration()J

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/player/easy/util/Utils;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getDate()J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 29
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v1}, Lcom/player/easy/ui/videos/VideosAdapter;->getCurrentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v1, v1, Lcom/player/easy/databinding/VideoListItemBinding;->date:Landroid/widget/TextView;

    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideosAdapter;->getCurrentYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideosAdapter;->getYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    goto :goto_1

    :goto_2
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 31
    invoke-static/range {v6 .. v11}, Lcom/player/easy/util/lang/DateExtensionsKt;->toRelativeString$default(Ljava/util/Date;Landroid/content/Context;Ljava/text/SimpleDateFormat;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideosAdapter;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/player/easy/data/preference/PreferencesHelper;->getLocalVideoProgress(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v3, v0

    .line 37
    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getDuration()J

    move-result-wide v6

    long-to-float v4, v6

    div-float/2addr v3, v4

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-ltz v3, :cond_3

    const/16 v4, 0x65

    if-ge v3, v4, :cond_3

    .line 39
    iget-object v4, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v4, v4, Lcom/player/easy/databinding/VideoListItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const-string v6, "progressBar"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    goto :goto_3

    :cond_2
    const/16 v2, 0x8

    .line 55
    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->thumb:Landroid/widget/ImageView;

    const-string v1, "thumb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcoil/ImageViews;->clear(Landroid/widget/ImageView;)V

    .line 45
    new-instance v0, Lcoil/request/ImageRequest$Builder;

    iget-object v2, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v2, v2, Lcom/player/easy/databinding/VideoListItemBinding;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 47
    sget v0, Lcom/player/easy/R$drawable;->ic_video_white_48:I

    invoke-virtual {p1, v0}, Lcoil/request/ImageRequest$Builder;->error(I)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/player/easy/util/CoilTargetImageView;

    iget-object v2, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v2, v2, Lcom/player/easy/databinding/VideoListItemBinding;->thumb:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/player/easy/util/CoilTargetImageView;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->binding:Lcom/player/easy/databinding/VideoListItemBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/VideoListItemBinding;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    return-void
.end method

.method public final getAdapter()Lcom/player/easy/ui/videos/VideosAdapter;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideosHolder;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    return-object v0
.end method
