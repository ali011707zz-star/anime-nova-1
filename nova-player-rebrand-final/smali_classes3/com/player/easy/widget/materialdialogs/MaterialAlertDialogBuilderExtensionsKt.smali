.class public final Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt;
.super Ljava/lang/Object;
.source "MaterialAlertDialogBuilderExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a6\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "setTextInput",
        "Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;",
        "hint",
        "",
        "prefill",
        "onTextChanged",
        "Lkotlin/Function1;",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMaterialAlertDialogBuilderExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialAlertDialogBuilderExtensions.kt\ncom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,28:1\n48#2,19:29\n84#2,3:48\n31#3:51\n*S KotlinDebug\n*F\n+ 1 MaterialAlertDialogBuilderExtensions.kt\ncom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt\n*L\n20#1:29,19\n20#1:48,3\n23#1:51\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ypVsp6M_6t6tR0UluwanITiSGR4(Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt;->setTextInput$lambda$0$1(Landroid/widget/EditText;)V

    return-void
.end method

.method public static final setTextInput(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChanged"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/databinding/DialogStubTextinputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/DialogStubTextinputBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v0, Lcom/player/easy/databinding/DialogStubTextinputBinding;->textField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, v0, Lcom/player/easy/databinding/DialogStubTextinputBinding;->textField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    new-instance p2, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt$setTextInput$lambda$0$$inlined$doAfterTextChanged$1;

    invoke-direct {p2, p3}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt$setTextInput$lambda$0$$inlined$doAfterTextChanged$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    new-instance p2, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/player/easy/databinding/DialogStubTextinputBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    const-string p1, "setView(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic setTextInput$default(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt;->setTextInput(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static final setTextInput$lambda$0$1(Landroid/widget/EditText;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
