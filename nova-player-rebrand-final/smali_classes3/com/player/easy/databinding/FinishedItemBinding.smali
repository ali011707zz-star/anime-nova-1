.class public final Lcom/player/easy/databinding/FinishedItemBinding;
.super Ljava/lang/Object;
.source "FinishedItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final constrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final icon2:Landroid/widget/ImageView;

.field public final more:Landroid/widget/ImageView;

.field public final progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final status:Landroid/widget/TextView;

.field public final titleTextView:Landroid/widget/TextView;

.field public final totalSize:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/player/easy/databinding/FinishedItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p2, p0, Lcom/player/easy/databinding/FinishedItemBinding;->constrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p3, p0, Lcom/player/easy/databinding/FinishedItemBinding;->icon2:Landroid/widget/ImageView;

    .line 52
    iput-object p4, p0, Lcom/player/easy/databinding/FinishedItemBinding;->more:Landroid/widget/ImageView;

    .line 53
    iput-object p5, p0, Lcom/player/easy/databinding/FinishedItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 54
    iput-object p6, p0, Lcom/player/easy/databinding/FinishedItemBinding;->status:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/player/easy/databinding/FinishedItemBinding;->titleTextView:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/player/easy/databinding/FinishedItemBinding;->totalSize:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/FinishedItemBinding;
    .locals 9

    .line 86
    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    sget v0, Lcom/player/easy/R$id;->icon2:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 94
    sget v0, Lcom/player/easy/R$id;->more:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 100
    sget v0, Lcom/player/easy/R$id;->progressBar:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz v5, :cond_0

    .line 106
    sget v0, Lcom/player/easy/R$id;->status:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 112
    sget v0, Lcom/player/easy/R$id;->titleTextView:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 118
    sget v0, Lcom/player/easy/R$id;->total_size:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 124
    new-instance v0, Lcom/player/easy/databinding/FinishedItemBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v8}, Lcom/player/easy/databinding/FinishedItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/FinishedItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/FinishedItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FinishedItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FinishedItemBinding;
    .locals 2

    .line 73
    sget v0, Lcom/player/easy/R$layout;->finished_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/FinishedItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FinishedItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/player/easy/databinding/FinishedItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/player/easy/databinding/FinishedItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
