.class public final Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
.super Ljava/lang/Object;
.source "BottomSheetListCheckmarkItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final listItemIconPrimary:Landroid/widget/ImageView;

.field public final listItemText:Landroidx/appcompat/widget/AppCompatTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p2, p0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemIconPrimary:Landroid/widget/ImageView;

    .line 33
    iput-object p3, p0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->listItemText:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 3

    .line 63
    sget v0, Lcom/player/easy/R$id;->list_item_icon_primary:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Lcom/player/easy/R$id;->list_item_text:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;
    .locals 2

    .line 50
    sget v0, Lcom/player/easy/R$layout;->bottom_sheet_list_checkmark_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/player/easy/databinding/BottomSheetListCheckmarkItemBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
