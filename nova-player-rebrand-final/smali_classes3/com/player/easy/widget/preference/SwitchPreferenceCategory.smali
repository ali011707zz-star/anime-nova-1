.class public final Lcom/player/easy/widget/preference/SwitchPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SwitchPreferenceCategory.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0014J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\nJ\u0008\u0010\u001a\u001a\u00020\nH\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0014J\u001a\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\n2\u0008\u0010$\u001a\u0004\u0018\u00010\u001dH\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/player/easy/widget/preference/SwitchPreferenceCategory;",
        "Landroidx/preference/PreferenceCategory;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "mChecked",
        "",
        "mCheckedSet",
        "onBindViewHolder",
        "",
        "holder",
        "Landroidx/preference/PreferenceViewHolder;",
        "syncSwitchView",
        "view",
        "Landroid/view/View;",
        "onCheckedChanged",
        "buttonView",
        "Landroid/widget/CompoundButton;",
        "isChecked",
        "onClick",
        "setChecked",
        "checked",
        "isEnabled",
        "shouldDisableDependents",
        "onGetDefaultValue",
        "",
        "a",
        "Landroid/content/res/TypedArray;",
        "index",
        "",
        "onSetInitialValue",
        "restoreValue",
        "defaultValue",
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


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lcom/player/easy/R$attr;->switchPreferenceCompatStyle:I

    .line 16
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final syncSwitchView(Landroid/view/View;)V
    .locals 4

    .line 39
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 41
    iget-boolean v2, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mChecked:Z

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v1, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_1

    .line 44
    move-object v2, p1

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    :cond_1
    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    if-eqz v1, :cond_2

    .line 50
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final syncSwitchView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 34
    sget v0, Lcom/player/easy/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->syncSwitchView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 28
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/player/easy/R$attr;->colorAccent:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/player/easy/util/system/ContextExtensionsKt;->getResourceColor$default(Landroid/content/Context;IFILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->syncSwitchView(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p2}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->setChecked(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 66
    invoke-virtual {p0}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    iget-boolean p1, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result p1

    goto :goto_0

    .line 117
    :cond_0
    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->setChecked(Z)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    iget-boolean v2, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 81
    :cond_1
    iput-boolean p1, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mChecked:Z

    .line 82
    iput-boolean v1, p0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->mCheckedSet:Z

    .line 83
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->notifyDependencyChange(Z)V

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
