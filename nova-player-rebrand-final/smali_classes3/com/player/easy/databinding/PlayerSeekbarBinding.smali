.class public final Lcom/player/easy/databinding/PlayerSeekbarBinding;
.super Ljava/lang/Object;
.source "PlayerSeekbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final exoDuration:Landroid/widget/TextView;

.field public final exoPosition:Landroid/widget/TextView;

.field public final exoProgress:Landroidx/media3/ui/DefaultTimeBar;

.field public final playerSeekbar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/media3/ui/DefaultTimeBar;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    iput-object p2, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->exoDuration:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->exoPosition:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->exoProgress:Landroidx/media3/ui/DefaultTimeBar;

    .line 42
    iput-object p5, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->playerSeekbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerSeekbarBinding;
    .locals 8

    .line 72
    sget v0, Lcom/player/easy/R$id;->exo_duration:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lcom/player/easy/R$id;->exo_position:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/player/easy/R$id;->exo_progress:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v6, :cond_0

    .line 90
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    new-instance v2, Lcom/player/easy/databinding/PlayerSeekbarBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v7}, Lcom/player/easy/databinding/PlayerSeekbarBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/media3/ui/DefaultTimeBar;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/PlayerSeekbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/PlayerSeekbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerSeekbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerSeekbarBinding;
    .locals 2

    .line 59
    sget v0, Lcom/player/easy/R$layout;->player_seekbar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/PlayerSeekbarBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerSeekbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/player/easy/databinding/PlayerSeekbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/player/easy/databinding/PlayerSeekbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
