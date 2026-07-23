.class public final Lcom/player/easy/databinding/DialogChangeSortingBinding;
.super Ljava/lang/Object;
.source "DialogChangeSortingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final sortingDialogHolder:Landroid/widget/LinearLayout;

.field public final sortingDialogRadioAscending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioDate:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioDescending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioExtension:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioName:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioOrder:Landroid/widget/RadioGroup;

.field public final sortingDialogRadioSize:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final sortingDialogRadioSorting:Landroid/widget/RadioGroup;

.field public final sortingDialogScrollview:Landroid/widget/ScrollView;

.field public final sortingDialogUseForThisFolder:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Landroid/widget/ScrollView;Lcom/google/android/material/checkbox/MaterialCheckBox;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->rootView:Landroid/widget/ScrollView;

    .line 70
    iput-object p2, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogHolder:Landroid/widget/LinearLayout;

    .line 71
    iput-object p3, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioAscending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 72
    iput-object p4, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioDate:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 73
    iput-object p5, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioDescending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 74
    iput-object p6, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioExtension:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 75
    iput-object p7, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioName:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 76
    iput-object p8, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioOrder:Landroid/widget/RadioGroup;

    .line 77
    iput-object p9, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioSize:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 78
    iput-object p10, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioSorting:Landroid/widget/RadioGroup;

    .line 79
    iput-object p11, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogScrollview:Landroid/widget/ScrollView;

    .line 80
    iput-object p12, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogUseForThisFolder:Lcom/google/android/material/checkbox/MaterialCheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/DialogChangeSortingBinding;
    .locals 15

    .line 110
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_holder:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 116
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_ascending:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v5, :cond_0

    .line 122
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_date:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v6, :cond_0

    .line 128
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_descending:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v7, :cond_0

    .line 134
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_extension:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v8, :cond_0

    .line 140
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_name:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v9, :cond_0

    .line 146
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_order:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RadioGroup;

    if-eqz v10, :cond_0

    .line 152
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_size:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    if-eqz v11, :cond_0

    .line 158
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_radio_sorting:I

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/RadioGroup;

    if-eqz v12, :cond_0

    .line 164
    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    .line 166
    sget v0, Lcom/player/easy/R$id;->sorting_dialog_use_for_this_folder:I

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz v14, :cond_0

    .line 172
    new-instance v2, Lcom/player/easy/databinding/DialogChangeSortingBinding;

    move-object v13, v3

    invoke-direct/range {v2 .. v14}, Lcom/player/easy/databinding/DialogChangeSortingBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Landroid/widget/ScrollView;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    return-object v2

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/DialogChangeSortingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/DialogChangeSortingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/DialogChangeSortingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/DialogChangeSortingBinding;
    .locals 2

    .line 97
    sget v0, Lcom/player/easy/R$layout;->dialog_change_sorting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/DialogChangeSortingBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/DialogChangeSortingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/player/easy/databinding/DialogChangeSortingBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
