.class public final Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;
.super Ljava/lang/Object;
.source "PlayerControlsPrimaryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final exoFfwd:Landroid/widget/ImageButton;

.field public final exoPlayPause:Landroid/widget/ImageButton;

.field public final exoRew:Landroid/widget/ImageButton;

.field public final playPauseBarrierFfwd:Landroidx/constraintlayout/widget/Barrier;

.field public final playPauseBarrierRew:Landroidx/constraintlayout/widget/Barrier;

.field public final playerControlsPrimary:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final skipFfwdAmount:Landroid/widget/TextView;

.field public final skipRewAmount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p2, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->exoFfwd:Landroid/widget/ImageButton;

    .line 55
    iput-object p3, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->exoPlayPause:Landroid/widget/ImageButton;

    .line 56
    iput-object p4, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->exoRew:Landroid/widget/ImageButton;

    .line 57
    iput-object p5, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->playPauseBarrierFfwd:Landroidx/constraintlayout/widget/Barrier;

    .line 58
    iput-object p6, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->playPauseBarrierRew:Landroidx/constraintlayout/widget/Barrier;

    .line 59
    iput-object p7, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->playerControlsPrimary:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p8, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->skipFfwdAmount:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->skipRewAmount:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;
    .locals 12

    .line 91
    sget v0, Lcom/player/easy/R$id;->exo_ffwd:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/player/easy/R$id;->exo_play_pause:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/player/easy/R$id;->exo_rew:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/player/easy/R$id;->play_pause_barrier_ffwd:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_0

    .line 115
    sget v0, Lcom/player/easy/R$id;->play_pause_barrier_rew:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_0

    .line 121
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 123
    sget v0, Lcom/player/easy/R$id;->skip_ffwd_amount:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 129
    sget v0, Lcom/player/easy/R$id;->skip_rew_amount:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 135
    new-instance v2, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v11}, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;
    .locals 2

    .line 78
    sget v0, Lcom/player/easy/R$layout;->player_controls_primary:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
