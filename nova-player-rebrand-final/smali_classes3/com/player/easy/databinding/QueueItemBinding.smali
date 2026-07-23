.class public final Lcom/player/easy/databinding/QueueItemBinding;
.super Ljava/lang/Object;
.source "QueueItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final action:Landroid/widget/ImageView;

.field public final constrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final eta:Landroid/widget/TextView;

.field public final icon2:Landroid/widget/ImageView;

.field public final progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final seprator:Landroid/widget/TextView;

.field public final status:Landroid/widget/TextView;

.field public final titleTextView:Landroid/widget/TextView;

.field public final totalDownloadedSize:Landroid/widget/TextView;

.field public final totalSize:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/player/easy/databinding/QueueItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p2, p0, Lcom/player/easy/databinding/QueueItemBinding;->action:Landroid/widget/ImageView;

    .line 61
    iput-object p3, p0, Lcom/player/easy/databinding/QueueItemBinding;->constrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p4, p0, Lcom/player/easy/databinding/QueueItemBinding;->eta:Landroid/widget/TextView;

    .line 63
    iput-object p5, p0, Lcom/player/easy/databinding/QueueItemBinding;->icon2:Landroid/widget/ImageView;

    .line 64
    iput-object p6, p0, Lcom/player/easy/databinding/QueueItemBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 65
    iput-object p7, p0, Lcom/player/easy/databinding/QueueItemBinding;->seprator:Landroid/widget/TextView;

    .line 66
    iput-object p8, p0, Lcom/player/easy/databinding/QueueItemBinding;->status:Landroid/widget/TextView;

    .line 67
    iput-object p9, p0, Lcom/player/easy/databinding/QueueItemBinding;->titleTextView:Landroid/widget/TextView;

    .line 68
    iput-object p10, p0, Lcom/player/easy/databinding/QueueItemBinding;->totalDownloadedSize:Landroid/widget/TextView;

    .line 69
    iput-object p11, p0, Lcom/player/easy/databinding/QueueItemBinding;->totalSize:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/QueueItemBinding;
    .locals 14

    .line 99
    sget v0, Lcom/player/easy/R$id;->action:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 105
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    sget v0, Lcom/player/easy/R$id;->eta:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 113
    sget v0, Lcom/player/easy/R$id;->icon2:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 119
    sget v0, Lcom/player/easy/R$id;->progressBar:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz v8, :cond_0

    .line 125
    sget v0, Lcom/player/easy/R$id;->seprator:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 131
    sget v0, Lcom/player/easy/R$id;->status:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 137
    sget v0, Lcom/player/easy/R$id;->titleTextView:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 143
    sget v0, Lcom/player/easy/R$id;->total_downloaded_size:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 149
    sget v0, Lcom/player/easy/R$id;->total_size:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 155
    new-instance v2, Lcom/player/easy/databinding/QueueItemBinding;

    move-object v5, v3

    invoke-direct/range {v2 .. v13}, Lcom/player/easy/databinding/QueueItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/QueueItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/QueueItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/QueueItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/QueueItemBinding;
    .locals 2

    .line 86
    sget v0, Lcom/player/easy/R$layout;->queue_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/QueueItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/QueueItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/player/easy/databinding/QueueItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/player/easy/databinding/QueueItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
