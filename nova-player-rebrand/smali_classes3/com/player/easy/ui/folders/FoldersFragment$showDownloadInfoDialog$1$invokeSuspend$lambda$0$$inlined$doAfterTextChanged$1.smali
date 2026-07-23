.class public final Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 FoldersFragment.kt\ncom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1\n+ 3 SpannableString.kt\nandroidx/core/text/SpannableStringKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 6 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,82:1\n488#2,3:83\n493#2:87\n494#2:90\n495#2:93\n29#3:86\n299#4,2:88\n257#4,2:91\n59#5:94\n62#6:95\n*S KotlinDebug\n*F\n+ 1 FoldersFragment.kt\ncom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1\n*L\n490#1:86\n493#1:88,2\n494#1:91,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $dialog$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

.field final synthetic $existTitle$inlined:Ljava/lang/String;

.field final synthetic $extension$inlined:Ljava/lang/String;

.field final synthetic $newFileName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/player/easy/databinding/DialogInfoBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialog$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iput-object p3, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$newFileName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$existTitle$inlined:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v2, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialog$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->editNewName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$extension$inlined:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$newFileName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 86
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$newFileName$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialog$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->renameNewDownload:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "renameNewDownload"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$existTitle$inlined:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v5

    .line 88
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$dialog$inlined:Lcom/player/easy/databinding/DialogInfoBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogInfoBinding;->addBtn:Landroid/widget/Button;

    const-string v1, "addBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1$invokeSuspend$lambda$0$$inlined$doAfterTextChanged$1;->$existTitle$inlined:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    .line 91
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

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
