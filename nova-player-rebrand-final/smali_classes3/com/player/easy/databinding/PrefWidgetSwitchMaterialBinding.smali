.class public final Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;
.super Ljava/lang/Object;
.source "PrefWidgetSwitchMaterialBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field public final switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;


# direct methods
.method private constructor <init>(Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/materialswitch/MaterialSwitch;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->rootView:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 25
    iput-object p2, p0, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 57
    new-instance v0, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;

    invoke-direct {v0, p0, p0}, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;-><init>(Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/materialswitch/MaterialSwitch;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;
    .locals 2

    .line 42
    sget v0, Lcom/player/easy/R$layout;->pref_widget_switch_material:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->getRoot()Lcom/google/android/material/materialswitch/MaterialSwitch;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/materialswitch/MaterialSwitch;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/player/easy/databinding/PrefWidgetSwitchMaterialBinding;->rootView:Lcom/google/android/material/materialswitch/MaterialSwitch;

    return-object v0
.end method
