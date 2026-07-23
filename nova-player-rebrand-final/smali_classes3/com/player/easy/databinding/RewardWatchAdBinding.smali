.class public final Lcom/player/easy/databinding/RewardWatchAdBinding;
.super Ljava/lang/Object;
.source "RewardWatchAdBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogDescription:Lcom/google/android/material/textview/MaterialTextView;

.field public final dialogRoot:Landroid/widget/LinearLayout;

.field public final dialogTitle:Lcom/google/android/material/textview/MaterialTextView;

.field public final noThanks:Lcom/google/android/material/button/MaterialButton;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final watchAd:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->dialogDescription:Lcom/google/android/material/textview/MaterialTextView;

    .line 44
    iput-object p3, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->dialogRoot:Landroid/widget/LinearLayout;

    .line 45
    iput-object p4, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->dialogTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 46
    iput-object p5, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->noThanks:Lcom/google/android/material/button/MaterialButton;

    .line 47
    iput-object p6, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->watchAd:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/RewardWatchAdBinding;
    .locals 9

    .line 77
    sget v0, Lcom/player/easy/R$id;->dialogDescription:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v4, :cond_0

    .line 83
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/player/easy/R$id;->dialogTitle:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Lcom/player/easy/R$id;->noThanks:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    if-eqz v7, :cond_0

    .line 97
    sget v0, Lcom/player/easy/R$id;->watchAd:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    if-eqz v8, :cond_0

    .line 103
    new-instance v2, Lcom/player/easy/databinding/RewardWatchAdBinding;

    move-object v5, v3

    invoke-direct/range {v2 .. v8}, Lcom/player/easy/databinding/RewardWatchAdBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    return-object v2

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/RewardWatchAdBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/RewardWatchAdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/RewardWatchAdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/RewardWatchAdBinding;
    .locals 2

    .line 64
    sget v0, Lcom/player/easy/R$layout;->reward_watch_ad:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/RewardWatchAdBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/RewardWatchAdBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/player/easy/databinding/RewardWatchAdBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/player/easy/databinding/RewardWatchAdBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
