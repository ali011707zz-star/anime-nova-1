.class public final Lcom/player/easy/databinding/PlayerLockButtonBinding;
.super Ljava/lang/Object;
.source "PlayerLockButtonBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final lockButtonOutside:Landroid/widget/ImageButton;

.field public final playerLockButtonOutside:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final unlockButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;->lockButtonOutside:Landroid/widget/ImageButton;

    .line 37
    iput-object p3, p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;->playerLockButtonOutside:Landroid/widget/LinearLayout;

    .line 38
    iput-object p4, p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;->unlockButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerLockButtonBinding;
    .locals 4

    .line 68
    sget v0, Lcom/player/easy/R$id;->lock_button_outside:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    sget v2, Lcom/player/easy/R$id;->unlock_button:I

    .line 77
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/player/easy/databinding/PlayerLockButtonBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/PlayerLockButtonBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/PlayerLockButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerLockButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PlayerLockButtonBinding;
    .locals 2

    .line 55
    sget v0, Lcom/player/easy/R$layout;->player_lock_button:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/PlayerLockButtonBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerLockButtonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/player/easy/databinding/PlayerLockButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/player/easy/databinding/PlayerLockButtonBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
