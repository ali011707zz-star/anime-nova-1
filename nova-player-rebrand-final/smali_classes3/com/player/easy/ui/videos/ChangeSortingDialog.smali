.class public final Lcom/player/easy/ui/videos/ChangeSortingDialog;
.super Ljava/lang/Object;
.source "ChangeSortingDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0019\u001a\u00020\u0008H\u0002J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002J\u0008\u0010\u001b\u001a\u00020\u0008H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/ChangeSortingDialog;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "path",
        "",
        "callback",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getPath",
        "()Ljava/lang/String;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "currSorting",
        "",
        "config",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "view",
        "Landroid/view/View;",
        "binding",
        "Lcom/player/easy/databinding/DialogChangeSortingBinding;",
        "setupSortRadio",
        "setupOrderRadio",
        "dialogConfirmed",
        "app_release"
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
        "SMAP\nChangeSortingDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeSortingDialog.kt\ncom/player/easy/ui/videos/ChangeSortingDialog\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n30#2:110\n27#3:111\n1#4:112\n*S KotlinDebug\n*F\n+ 1 ChangeSortingDialog.kt\ncom/player/easy/ui/videos/ChangeSortingDialog\n*L\n28#1:110\n28#1:111\n*E\n"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

.field private final callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/player/easy/data/preference/PreferencesHelper;

.field private currSorting:I

.field private final path:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$tp0lTO2jG1XThDVOoNFOXxYYeOU(Lcom/player/easy/ui/videos/ChangeSortingDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/videos/ChangeSortingDialog;->_init_$lambda$1(Lcom/player/easy/ui/videos/ChangeSortingDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->callback:Lkotlin/jvm/functions/Function0;

    .line 28
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object p3

    .line 111
    new-instance v0, Lcom/player/easy/ui/videos/ChangeSortingDialog$special$$inlined$get$1;

    invoke-direct {v0}, Lcom/player/easy/ui/videos/ChangeSortingDialog$special$$inlined$get$1;-><init>()V

    .line 110
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p3, v0}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/player/easy/data/preference/PreferencesHelper;

    .line 28
    iput-object p3, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->config:Lcom/player/easy/data/preference/PreferencesHelper;

    .line 33
    invoke-virtual {p3, p2}, Lcom/player/easy/data/preference/PreferencesHelper;->getFolderSorting(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->currSorting:I

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/player/easy/R$layout;->dialog_change_sorting:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const-string v0, "inflate(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->view:Landroid/view/View;

    .line 35
    invoke-static {p3}, Lcom/player/easy/databinding/DialogChangeSortingBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/DialogChangeSortingBinding;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    .line 37
    iget-object p3, p3, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogUseForThisFolder:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->config:Lcom/player/easy/data/preference/PreferencesHelper;

    invoke-virtual {v0, p2}, Lcom/player/easy/data/preference/PreferencesHelper;->hasCustomSorting(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 42
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 43
    sget p3, Lcom/player/easy/R$string;->ok:I

    new-instance v0, Lcom/player/easy/ui/videos/ChangeSortingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/videos/ChangeSortingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/videos/ChangeSortingDialog;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    .line 44
    sget p3, Lcom/player/easy/R$string;->cancel:I

    invoke-virtual {p2, p3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 46
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->view:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/player/easy/R$string;->sort_by:I

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/player/easy/util/system/ActivityExtensionsKt;->setupDialogStuff$default(Landroid/app/Activity;Landroid/view/View;Landroidx/appcompat/app/AlertDialog;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/player/easy/ui/videos/ChangeSortingDialog;->setupSortRadio()V

    .line 48
    invoke-direct {p0}, Lcom/player/easy/ui/videos/ChangeSortingDialog;->setupOrderRadio()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 26
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/ui/videos/ChangeSortingDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/player/easy/ui/videos/ChangeSortingDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/player/easy/ui/videos/ChangeSortingDialog;->dialogConfirmed()V

    return-void
.end method

.method private final dialogConfirmed()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioSorting:Landroid/widget/RadioGroup;

    const-string v1, "sortingDialogRadioSorting"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 83
    sget v1, Lcom/player/easy/R$id;->sorting_dialog_radio_name:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    sget v1, Lcom/player/easy/R$id;->sorting_dialog_radio_size:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 86
    :cond_1
    sget v1, Lcom/player/easy/R$id;->sorting_dialog_radio_date:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v1, v1, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioOrder:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget v2, Lcom/player/easy/R$id;->sorting_dialog_radio_descending:I

    if-ne v1, v2, :cond_3

    or-int/lit16 v0, v0, 0x400

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v1, v1, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogUseForThisFolder:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->config:Lcom/player/easy/data/preference/PreferencesHelper;

    iget-object v2, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/player/easy/data/preference/PreferencesHelper;->saveCustomSorting(Ljava/lang/String;I)V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->config:Lcom/player/easy/data/preference/PreferencesHelper;

    iget-object v2, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/player/easy/data/preference/PreferencesHelper;->removeCustomSorting(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->config:Lcom/player/easy/data/preference/PreferencesHelper;

    invoke-virtual {v1, v0}, Lcom/player/easy/data/preference/PreferencesHelper;->setSorting(I)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setupOrderRadio()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioAscending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    const-string v1, "sortingDialogRadioAscending"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget v1, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->currSorting:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioDescending:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    const-string v1, "sortingDialogRadioDescending"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private final setupSortRadio()V
    .locals 2

    .line 60
    iget v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->currSorting:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioSize:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioDate:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioExtension:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->binding:Lcom/player/easy/databinding/DialogChangeSortingBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/DialogChangeSortingBinding;->sortingDialogRadioName:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 59
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->callback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/player/easy/ui/videos/ChangeSortingDialog;->path:Ljava/lang/String;

    return-object v0
.end method
