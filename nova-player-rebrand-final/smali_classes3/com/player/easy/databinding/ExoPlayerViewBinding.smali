.class public final Lcom/player/easy/databinding/ExoPlayerViewBinding;
.super Ljava/lang/Object;
.source "ExoPlayerViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final exoAdOverlay:Landroid/widget/FrameLayout;

.field public final exoArtwork:Landroid/widget/ImageView;

.field public final exoBuffering:Landroid/widget/ProgressBar;

.field public final exoContentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final exoControllerPlaceholder:Landroid/view/View;

.field public final exoErrorMessage:Landroid/widget/TextView;

.field public final exoOverlay:Landroid/widget/FrameLayout;

.field public final exoShutter:Landroid/view/View;

.field public final exoSubtitles:Landroidx/media3/ui/SubtitleView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroidx/media3/ui/AspectRatioFrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Landroidx/media3/ui/SubtitleView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->rootView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoAdOverlay:Landroid/widget/FrameLayout;

    .line 59
    iput-object p3, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoArtwork:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoBuffering:Landroid/widget/ProgressBar;

    .line 61
    iput-object p5, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoContentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 62
    iput-object p6, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoControllerPlaceholder:Landroid/view/View;

    .line 63
    iput-object p7, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoErrorMessage:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoOverlay:Landroid/widget/FrameLayout;

    .line 65
    iput-object p9, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoShutter:Landroid/view/View;

    .line 66
    iput-object p10, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->exoSubtitles:Landroidx/media3/ui/SubtitleView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/ExoPlayerViewBinding;
    .locals 13

    .line 91
    sget v0, Lcom/player/easy/R$id;->exo_ad_overlay:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/player/easy/R$id;->exo_artwork:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/player/easy/R$id;->exo_buffering:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/player/easy/R$id;->exo_content_frame:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v7, :cond_0

    .line 115
    sget v0, Lcom/player/easy/R$id;->exo_controller_placeholder:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 121
    sget v0, Lcom/player/easy/R$id;->exo_error_message:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 127
    sget v0, Lcom/player/easy/R$id;->exo_overlay:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 133
    sget v0, Lcom/player/easy/R$id;->exo_shutter:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 139
    sget v0, Lcom/player/easy/R$id;->exo_subtitles:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/media3/ui/SubtitleView;

    if-eqz v12, :cond_0

    .line 145
    new-instance v2, Lcom/player/easy/databinding/ExoPlayerViewBinding;

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/player/easy/databinding/ExoPlayerViewBinding;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroidx/media3/ui/AspectRatioFrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Landroidx/media3/ui/SubtitleView;)V

    return-object v2

    :cond_0
    move-object v3, p0

    .line 149
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/player/easy/databinding/ExoPlayerViewBinding;
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    sget v0, Lcom/player/easy/R$layout;->exo_player_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-static {p1}, Lcom/player/easy/databinding/ExoPlayerViewBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/ExoPlayerViewBinding;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/player/easy/databinding/ExoPlayerViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
