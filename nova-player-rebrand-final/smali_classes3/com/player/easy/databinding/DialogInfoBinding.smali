.class public final Lcom/player/easy/databinding/DialogInfoBinding;
.super Ljava/lang/Object;
.source "DialogInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addBtn:Landroid/widget/Button;

.field public final buttonPanel:Landroid/widget/LinearLayout;

.field public final cancelBtn:Landroid/widget/Button;

.field public final editNewName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final renameNewDownload:Lcom/google/android/material/button/MaterialButton;

.field private final rootView:Landroid/widget/ScrollView;

.field public final spacer:Landroid/widget/Space;

.field public final startBtn:Landroid/widget/Button;

.field public final textSize:Landroid/widget/TextView;

.field public final textView:Landroid/widget/TextView;

.field public final textView2:Landroid/widget/TextView;

.field public final textView3:Landroid/widget/TextView;

.field public final textView4:Landroid/widget/TextView;

.field public final textViewUrl:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/Space;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/player/easy/databinding/DialogInfoBinding;->rootView:Landroid/widget/ScrollView;

    .line 73
    iput-object p2, p0, Lcom/player/easy/databinding/DialogInfoBinding;->addBtn:Landroid/widget/Button;

    .line 74
    iput-object p3, p0, Lcom/player/easy/databinding/DialogInfoBinding;->buttonPanel:Landroid/widget/LinearLayout;

    .line 75
    iput-object p4, p0, Lcom/player/easy/databinding/DialogInfoBinding;->cancelBtn:Landroid/widget/Button;

    .line 76
    iput-object p5, p0, Lcom/player/easy/databinding/DialogInfoBinding;->editNewName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 77
    iput-object p6, p0, Lcom/player/easy/databinding/DialogInfoBinding;->renameNewDownload:Lcom/google/android/material/button/MaterialButton;

    .line 78
    iput-object p7, p0, Lcom/player/easy/databinding/DialogInfoBinding;->spacer:Landroid/widget/Space;

    .line 79
    iput-object p8, p0, Lcom/player/easy/databinding/DialogInfoBinding;->startBtn:Landroid/widget/Button;

    .line 80
    iput-object p9, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textSize:Landroid/widget/TextView;

    .line 81
    iput-object p10, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textView:Landroid/widget/TextView;

    .line 82
    iput-object p11, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textView2:Landroid/widget/TextView;

    .line 83
    iput-object p12, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textView3:Landroid/widget/TextView;

    .line 84
    iput-object p13, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textView4:Landroid/widget/TextView;

    .line 85
    iput-object p14, p0, Lcom/player/easy/databinding/DialogInfoBinding;->textViewUrl:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/DialogInfoBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 115
    sget v1, Lcom/player/easy/R$id;->add_btn:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 121
    sget v1, Lcom/player/easy/R$id;->buttonPanel:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 127
    sget v1, Lcom/player/easy/R$id;->cancel_btn:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 133
    sget v1, Lcom/player/easy/R$id;->edit_new_name:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    .line 139
    sget v1, Lcom/player/easy/R$id;->rename_new_download:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    if-eqz v9, :cond_0

    .line 145
    sget v1, Lcom/player/easy/R$id;->spacer:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Space;

    if-eqz v10, :cond_0

    .line 151
    sget v1, Lcom/player/easy/R$id;->start_btn:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 157
    sget v1, Lcom/player/easy/R$id;->textSize:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 163
    sget v1, Lcom/player/easy/R$id;->textView:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 169
    sget v1, Lcom/player/easy/R$id;->textView2:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 175
    sget v1, Lcom/player/easy/R$id;->textView3:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 181
    sget v1, Lcom/player/easy/R$id;->textView4:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 187
    sget v1, Lcom/player/easy/R$id;->text_view_url:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 193
    new-instance v3, Lcom/player/easy/databinding/DialogInfoBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v17}, Lcom/player/easy/databinding/DialogInfoBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/Space;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 197
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/DialogInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/DialogInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/DialogInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/DialogInfoBinding;
    .locals 2

    .line 102
    sget v0, Lcom/player/easy/R$layout;->dialog_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/DialogInfoBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/DialogInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/player/easy/databinding/DialogInfoBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/player/easy/databinding/DialogInfoBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
