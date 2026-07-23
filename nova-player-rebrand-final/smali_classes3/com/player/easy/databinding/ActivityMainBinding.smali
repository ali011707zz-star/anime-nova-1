.class public final Lcom/player/easy/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final fragmentContainerView:Landroidx/fragment/app/FragmentContainerView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/player/easy/databinding/ActivityMainBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 45
    iput-object p2, p0, Lcom/player/easy/databinding/ActivityMainBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 46
    iput-object p3, p0, Lcom/player/easy/databinding/ActivityMainBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 47
    iput-object p4, p0, Lcom/player/easy/databinding/ActivityMainBinding;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 48
    iput-object p5, p0, Lcom/player/easy/databinding/ActivityMainBinding;->fragmentContainerView:Landroidx/fragment/app/FragmentContainerView;

    .line 49
    iput-object p6, p0, Lcom/player/easy/databinding/ActivityMainBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/ActivityMainBinding;
    .locals 9

    .line 79
    sget v0, Lcom/player/easy/R$id;->appbar:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Lcom/player/easy/R$id;->bottom_nav:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Lcom/player/easy/R$id;->fab:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lcom/player/easy/R$id;->fragment_container_view:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lcom/player/easy/R$id;->toolbar:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/appbar/MaterialToolbar;

    if-eqz v8, :cond_0

    .line 109
    new-instance v2, Lcom/player/easy/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct/range {v2 .. v8}, Lcom/player/easy/databinding/ActivityMainBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object v2

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/ActivityMainBinding;
    .locals 2

    .line 66
    sget v0, Lcom/player/easy/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/player/easy/databinding/ActivityMainBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/player/easy/databinding/ActivityMainBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
