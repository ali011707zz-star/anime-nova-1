.class public final Lcom/player/easy/util/system/ActivityExtensionsKt;
.super Ljava/lang/Object;
.source "ActivityExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a@\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "setupDialogStuff",
        "",
        "Landroid/app/Activity;",
        "view",
        "Landroid/view/View;",
        "dialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "titleId",
        "",
        "titleText",
        "",
        "callback",
        "Lkotlin/Function0;",
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


# direct methods
.method public static final setupDialogStuff(Landroid/app/Activity;Landroid/view/View;Landroidx/appcompat/app/AlertDialog;ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroidx/appcompat/app/AlertDialog;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 21
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/player/easy/R$layout;->dialog_title:I

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 25
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 33
    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 35
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    if-eqz p5, :cond_4

    .line 45
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic setupDialogStuff$default(Landroid/app/Activity;Landroid/view/View;Landroidx/appcompat/app/AlertDialog;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 13
    const-string p4, ""

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ActivityExtensionsKt;->setupDialogStuff(Landroid/app/Activity;Landroid/view/View;Landroidx/appcompat/app/AlertDialog;ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
