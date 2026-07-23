.class public final Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "text",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 MainActivity.kt\ncom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1\n+ 3 SpannableString.kt\nandroidx/core/text/SpannableStringKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 6 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,82:1\n305#2,6:83\n311#2,6:90\n317#2:98\n318#2:101\n29#3:89\n299#4,2:96\n257#4,2:99\n59#5:102\n62#6:103\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1\n*L\n310#1:89\n316#1:96,2\n317#1:99,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

.field final synthetic $existTitle$inlined:Ljava/lang/String;

.field final synthetic $extension$inlined:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/player/easy/databinding/DialogInfoBinding;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iput-object p3, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$existTitle$inlined:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->editNewName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->editNewName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->editNewName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 87
    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$existTitle$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->renameNewDownload:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "renameNewDownload"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 96
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialogBinding$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->addBtn:Landroid/widget/Button;

    const-string v3, "addBtn"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 99
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
