.class public final Lcom/player/easy/databinding/FoldersFragmentBinding;
.super Ljava/lang/Object;
.source "FoldersFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyStateContainer:Landroid/widget/LinearLayout;

.field public final emptyText:Landroid/widget/TextView;

.field public final recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 41
    iput-object p2, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->emptyStateContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object p3, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->emptyText:Landroid/widget/TextView;

    .line 43
    iput-object p4, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object p5, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/FoldersFragmentBinding;
    .locals 8

    .line 74
    sget v0, Lcom/player/easy/R$id;->empty_state_container:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lcom/player/easy/R$id;->empty_text:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lcom/player/easy/R$id;->recycler:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lcom/player/easy/R$id;->swipe_refresh:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lcom/player/easy/databinding/FoldersFragmentBinding;

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct/range {v2 .. v7}, Lcom/player/easy/databinding/FoldersFragmentBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/FoldersFragmentBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/FoldersFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FoldersFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FoldersFragmentBinding;
    .locals 2

    .line 61
    sget v0, Lcom/player/easy/R$layout;->folders_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/FoldersFragmentBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FoldersFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/player/easy/databinding/FoldersFragmentBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
