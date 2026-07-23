.class public final Lcom/player/easy/databinding/FolderItemBinding;
.super Ljava/lang/Object;
.source "FolderItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chevronIcon:Landroid/widget/ImageView;

.field public final iconBackground:Landroid/view/View;

.field public final itemDetails:Landroid/widget/TextView;

.field public final itemFrame:Landroid/widget/FrameLayout;

.field public final itemHolder:Landroid/widget/RelativeLayout;

.field public final itemIcon:Landroid/widget/ImageView;

.field public final itemName:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final textContainer:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/player/easy/databinding/FolderItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 54
    iput-object p2, p0, Lcom/player/easy/databinding/FolderItemBinding;->chevronIcon:Landroid/widget/ImageView;

    .line 55
    iput-object p3, p0, Lcom/player/easy/databinding/FolderItemBinding;->iconBackground:Landroid/view/View;

    .line 56
    iput-object p4, p0, Lcom/player/easy/databinding/FolderItemBinding;->itemDetails:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lcom/player/easy/databinding/FolderItemBinding;->itemFrame:Landroid/widget/FrameLayout;

    .line 58
    iput-object p6, p0, Lcom/player/easy/databinding/FolderItemBinding;->itemHolder:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p7, p0, Lcom/player/easy/databinding/FolderItemBinding;->itemIcon:Landroid/widget/ImageView;

    .line 60
    iput-object p8, p0, Lcom/player/easy/databinding/FolderItemBinding;->itemName:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/player/easy/databinding/FolderItemBinding;->textContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/FolderItemBinding;
    .locals 12

    .line 91
    sget v0, Lcom/player/easy/R$id;->chevron_icon:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/player/easy/R$id;->icon_background:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/player/easy/R$id;->item_details:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 109
    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 111
    sget v0, Lcom/player/easy/R$id;->item_holder:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 117
    sget v0, Lcom/player/easy/R$id;->item_icon:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 123
    sget v0, Lcom/player/easy/R$id;->item_name:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 129
    sget v0, Lcom/player/easy/R$id;->text_container:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 135
    new-instance v2, Lcom/player/easy/databinding/FolderItemBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v11}, Lcom/player/easy/databinding/FolderItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/FolderItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/FolderItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FolderItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/FolderItemBinding;
    .locals 2

    .line 78
    sget v0, Lcom/player/easy/R$layout;->folder_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/FolderItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FolderItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/player/easy/databinding/FolderItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/player/easy/databinding/FolderItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
