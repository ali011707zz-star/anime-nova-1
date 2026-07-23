.class public final Lcom/player/easy/databinding/ActivityPlayerBinding;
.super Ljava/lang/Object;
.source "ActivityPlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityPlayer:Landroid/widget/FrameLayout;

.field public final adClose2:Landroid/widget/ImageView;

.field public final adFrame:Landroid/widget/LinearLayout;

.field public final empty:Landroid/widget/Space;

.field public final forwardPlayer:Landroid/widget/FrameLayout;

.field public final fullscreenContainer:Landroid/widget/FrameLayout;

.field public final placeHolder:Landroid/widget/FrameLayout;

.field public final playerJumpControls:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final playerSkipFfwdAmount:Landroid/widget/TextView;

.field public final playerSkipRewAmount:Landroid/widget/TextView;

.field public final playerView:Lcom/player/easy/player/DoubleTabPlayerView;

.field public final progress:Landroid/widget/ProgressBar;

.field public final rewardPlayer:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final webview:Lcom/player/easy/widget/AdBlockerWebView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/Space;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/player/easy/player/DoubleTabPlayerView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Lcom/player/easy/widget/AdBlockerWebView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 79
    iput-object p2, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->activityPlayer:Landroid/widget/FrameLayout;

    .line 80
    iput-object p3, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->adClose2:Landroid/widget/ImageView;

    .line 81
    iput-object p4, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->adFrame:Landroid/widget/LinearLayout;

    .line 82
    iput-object p5, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->empty:Landroid/widget/Space;

    .line 83
    iput-object p6, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    .line 84
    iput-object p7, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 85
    iput-object p8, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->placeHolder:Landroid/widget/FrameLayout;

    .line 86
    iput-object p9, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerJumpControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    iput-object p10, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerSkipFfwdAmount:Landroid/widget/TextView;

    .line 88
    iput-object p11, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerSkipRewAmount:Landroid/widget/TextView;

    .line 89
    iput-object p12, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    .line 90
    iput-object p13, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->progress:Landroid/widget/ProgressBar;

    .line 91
    iput-object p14, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    .line 92
    iput-object p15, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/ActivityPlayerBinding;
    .locals 16

    move-object/from16 v0, p0

    .line 122
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    .line 124
    sget v2, Lcom/player/easy/R$id;->adClose2:I

    .line 125
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 130
    sget v2, Lcom/player/easy/R$id;->adFrame:I

    .line 131
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 136
    sget v2, Lcom/player/easy/R$id;->empty:I

    .line 137
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Space;

    if-eqz v5, :cond_0

    .line 142
    sget v2, Lcom/player/easy/R$id;->forward_player:I

    .line 143
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 148
    sget v2, Lcom/player/easy/R$id;->fullscreen_container:I

    .line 149
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 154
    sget v2, Lcom/player/easy/R$id;->placeHolder:I

    .line 155
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 160
    sget v2, Lcom/player/easy/R$id;->playerJumpControls:I

    .line 161
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 166
    sget v2, Lcom/player/easy/R$id;->player_skip_ffwd_amount:I

    .line 167
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 172
    sget v2, Lcom/player/easy/R$id;->player_skip_rew_amount:I

    .line 173
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 178
    sget v2, Lcom/player/easy/R$id;->player_view:I

    .line 179
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/player/easy/player/DoubleTabPlayerView;

    if-eqz v12, :cond_0

    .line 184
    sget v2, Lcom/player/easy/R$id;->progress:I

    .line 185
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    if-eqz v13, :cond_0

    .line 190
    sget v2, Lcom/player/easy/R$id;->reward_player:I

    .line 191
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_0

    .line 196
    sget v2, Lcom/player/easy/R$id;->webview:I

    .line 197
    invoke-static {v0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/player/easy/widget/AdBlockerWebView;

    if-eqz v15, :cond_0

    .line 202
    new-instance v0, Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v15}, Lcom/player/easy/databinding/ActivityPlayerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/Space;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/player/easy/player/DoubleTabPlayerView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Lcom/player/easy/widget/AdBlockerWebView;)V

    return-object v0

    .line 206
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/ActivityPlayerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/ActivityPlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/ActivityPlayerBinding;
    .locals 2

    .line 109
    sget v0, Lcom/player/easy/R$layout;->activity_player:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/ActivityPlayerBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/player/easy/databinding/ActivityPlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/player/easy/databinding/ActivityPlayerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
