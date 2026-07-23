.class public final Lcom/player/easy/util/preference/PreferenceDSLKt;
.super Ljava/lang/Object;
.source "PreferenceDSL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u001a.\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0008\u001a\u00020\t*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\t\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u000b\u001a\u00020\u000c*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u000c\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\r\u001a\u00020\u000e*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u000e\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u000f\u001a\u00020\u0010*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0010\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0011\u001a\u00020\u0012*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0012\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0013\u001a\u00020\u0014*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0014\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0015\u001a\u00020\u0016*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0016\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0017\u001a\u00020\u0014*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0014\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0018\u001a\u00020\u0019*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0019\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u001a\u001a\u00020\u001b*\u00020\u00012\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u001b\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u001c\u001a\u00020\u0001*\u00020\u00012\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f\u001a$\u0010 \u001a\u0002H!\"\u0008\u0008\u0000\u0010!*\u00020\t*\u00020\n2\u0006\u0010\"\u001a\u0002H!H\u0086\u0008\u00a2\u0006\u0002\u0010#\u001a@\u0010$\u001a\u0002H!\"\u0008\u0008\u0000\u0010!*\u00020\t*\u00020\n2\u0006\u0010\"\u001a\u0002H!2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a@\u0010&\u001a\u0002H!\"\u0008\u0008\u0000\u0010!*\u00020\t*\u00020\n2\u0006\u0010\"\u001a\u0002H!2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a \u0010\'\u001a\u00020\u0006*\u00020\t2\u000e\u0008\u0004\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00060(H\u0086\u0008\u00f8\u0001\u0000\u001a(\u0010)\u001a\u00020\u0006*\u00020\t2\u0016\u0008\u0004\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010*\u0012\u0004\u0012\u00020+0\u0004H\u0086\u0008\u00f8\u0001\u0000\",\u0010-\u001a\u0004\u0018\u00010**\u00020\t2\u0008\u0010,\u001a\u0004\u0018\u00010*8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\"(\u00103\u001a\u000202*\u00020\t2\u0006\u0010,\u001a\u0002028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\"(\u00108\u001a\u000202*\u00020\t2\u0006\u0010,\u001a\u0002028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u00105\"\u0004\u0008:\u00107\"(\u0010;\u001a\u000202*\u00020\t2\u0006\u0010,\u001a\u0002028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008<\u00105\"\u0004\u0008=\u00107\"(\u0010>\u001a\u000202*\u00020\t2\u0006\u0010,\u001a\u0002028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008?\u00105\"\u0004\u0008@\u00107\"4\u0010B\u001a\u0008\u0012\u0004\u0012\u0002020A*\u00020\u00142\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u0002020A8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010F\"4\u0010B\u001a\u0008\u0012\u0004\u0012\u0002020A*\u00020\u00192\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u0002020A8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010G\"\u0004\u0008E\u0010H\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006I"
    }
    d2 = {
        "newScreen",
        "Landroidx/preference/PreferenceScreen;",
        "Landroidx/preference/PreferenceManager;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/player/easy/util/preference/DSL;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "preference",
        "Landroidx/preference/Preference;",
        "Landroidx/preference/PreferenceGroup;",
        "switchPreference",
        "Landroidx/preference/SwitchPreferenceCompat;",
        "switchPreferenceCategory",
        "Lcom/player/easy/widget/preference/SwitchPreferenceCategory;",
        "checkBoxPreference",
        "Landroidx/preference/CheckBoxPreference;",
        "editTextPreference",
        "Landroidx/preference/EditTextPreference;",
        "listPreference",
        "Landroidx/preference/ListPreference;",
        "intListPreference",
        "Lcom/player/easy/widget/preference/IntListPreference;",
        "stringListPreference",
        "multiSelectListPreference",
        "Landroidx/preference/MultiSelectListPreference;",
        "preferenceCategory",
        "Landroidx/preference/PreferenceCategory;",
        "preferenceScreen",
        "initDialog",
        "dialogPreference",
        "Landroidx/preference/DialogPreference;",
        "add",
        "P",
        "p",
        "(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Landroidx/preference/Preference;",
        "initThenAdd",
        "(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Lkotlin/jvm/functions/Function1;)Landroidx/preference/Preference;",
        "addThenInit",
        "onClick",
        "Lkotlin/Function0;",
        "onChange",
        "",
        "",
        "value",
        "defaultValue",
        "getDefaultValue",
        "(Landroidx/preference/Preference;)Ljava/lang/Object;",
        "setDefaultValue",
        "(Landroidx/preference/Preference;Ljava/lang/Object;)V",
        "",
        "titleRes",
        "getTitleRes",
        "(Landroidx/preference/Preference;)I",
        "setTitleRes",
        "(Landroidx/preference/Preference;I)V",
        "iconRes",
        "getIconRes",
        "setIconRes",
        "summaryRes",
        "getSummaryRes",
        "setSummaryRes",
        "iconTint",
        "getIconTint",
        "setIconTint",
        "",
        "entriesRes",
        "getEntriesRes",
        "(Landroidx/preference/ListPreference;)[Ljava/lang/Integer;",
        "setEntriesRes",
        "(Landroidx/preference/ListPreference;[Ljava/lang/Integer;)V",
        "(Landroidx/preference/MultiSelectListPreference;)[Ljava/lang/Integer;",
        "(Landroidx/preference/MultiSelectListPreference;[Ljava/lang/Integer;)V",
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
        "SMAP\nPreferenceDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceDSL.kt\ncom/player/easy/util/preference/PreferenceDSLKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,168:1\n101#1,5:170\n101#1,5:175\n101#1,5:180\n101#1,5:185\n101#1,5:190\n101#1,5:195\n101#1,5:200\n101#1,5:205\n101#1,5:210\n109#1,5:215\n109#1,5:220\n1#2:169\n11705#3:225\n12052#3,3:226\n11705#3:231\n12052#3,3:232\n37#4,2:229\n37#4,2:235\n*S KotlinDebug\n*F\n+ 1 PreferenceDSL.kt\ncom/player/easy/util/preference/PreferenceDSLKt\n*L\n18#1:170,5\n24#1:175,5\n30#1:180,5\n42#1:185,5\n48#1:190,5\n52#1:195,5\n58#1:200,5\n64#1:205,5\n70#1:210,5\n76#1:215,5\n82#1:220,5\n160#1:225\n160#1:226,3\n166#1:231\n166#1:232,3\n160#1:229,2\n166#1:235,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final add(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Landroidx/preference/Preference;",
            ">(",
            "Landroidx/preference/PreferenceGroup;",
            "TP;)TP;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 96
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object p1
.end method

.method public static final addThenInit(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Lkotlin/jvm/functions/Function1;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Landroidx/preference/Preference;",
            ">(",
            "Landroidx/preference/PreferenceGroup;",
            "TP;",
            "Lkotlin/jvm/functions/Function1<",
            "-TP;",
            "Lkotlin/Unit;",
            ">;)TP;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 112
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static final checkBoxPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/CheckBoxPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/CheckBoxPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/CheckBoxPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 187
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 188
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static final editTextPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/EditTextPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/EditTextPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/EditTextPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 192
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 193
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 48
    invoke-static {v0}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    return-object v0
.end method

.method public static final getDefaultValue(Landroidx/preference/Preference;)Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getEntriesRes(Landroidx/preference/ListPreference;)[Ljava/lang/Integer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 158
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static final getEntriesRes(Landroidx/preference/MultiSelectListPreference;)[Ljava/lang/Integer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 164
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static final getIconRes(Landroidx/preference/Preference;)I
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final getIconTint(Landroidx/preference/Preference;)I
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final getSummaryRes(Landroidx/preference/Preference;)I
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final getTitleRes(Landroidx/preference/Preference;)I
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final initDialog(Landroidx/preference/DialogPreference;)V
    .locals 1

    const-string v0, "dialogPreference"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static final initThenAdd(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Lkotlin/jvm/functions/Function1;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Landroidx/preference/Preference;",
            ">(",
            "Landroidx/preference/PreferenceGroup;",
            "TP;",
            "Lkotlin/jvm/functions/Function1<",
            "-TP;",
            "Lkotlin/Unit;",
            ">;)TP;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 103
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object p1
.end method

.method public static final intListPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Lcom/player/easy/widget/preference/IntListPreference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/player/easy/widget/preference/IntListPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/player/easy/widget/preference/IntListPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/player/easy/widget/preference/IntListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/player/easy/widget/preference/IntListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 202
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 203
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    invoke-static {v0}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    return-object v0
.end method

.method public static final listPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/ListPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/ListPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/ListPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 197
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 198
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 52
    invoke-static {v0}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    return-object v0
.end method

.method public static final multiSelectListPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/MultiSelectListPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/MultiSelectListPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/MultiSelectListPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 212
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 213
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 70
    invoke-static {v0}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    return-object v0
.end method

.method public static final newScreen(Landroidx/preference/PreferenceManager;Lkotlin/jvm/functions/Function1;)Landroidx/preference/PreferenceScreen;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/PreferenceScreen;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/PreferenceScreen;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "createPreferenceScreen(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final onChange(Landroidx/preference/Preference;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/Preference;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/player/easy/util/preference/PreferenceDSLKt$onChange$1;

    invoke-direct {v0, p1}, Lcom/player/easy/util/preference/PreferenceDSLKt$onChange$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static final onClick(Landroidx/preference/Preference;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/Preference;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/player/easy/util/preference/PreferenceDSLKt$onClick$1;

    invoke-direct {v0, p1}, Lcom/player/easy/util/preference/PreferenceDSLKt$onClick$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static final preference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/Preference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/Preference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/Preference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 172
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 173
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static final preferenceCategory(Landroidx/preference/PreferenceScreen;Lkotlin/jvm/functions/Function1;)Landroidx/preference/PreferenceCategory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/PreferenceCategory;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/PreferenceCategory;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 217
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 218
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final preferenceScreen(Landroidx/preference/PreferenceScreen;Lkotlin/jvm/functions/Function1;)Landroidx/preference/PreferenceScreen;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/PreferenceScreen;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/PreferenceScreen;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "createPreferenceScreen(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 222
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 223
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final setEntriesRes(Landroidx/preference/ListPreference;[Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 227
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final setEntriesRes(Landroidx/preference/MultiSelectListPreference;[Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 233
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final setIconRes(Landroidx/preference/Preference;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final setIconTint(Landroidx/preference/Preference;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public static final setSummaryRes(Landroidx/preference/Preference;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public static final setTitleRes(Landroidx/preference/Preference;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public static final stringListPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/ListPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/ListPreference;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/ListPreference;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 207
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 208
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 64
    invoke-static {v0}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    return-object v0
.end method

.method public static final switchPreference(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/preference/SwitchPreferenceCompat;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/preference/SwitchPreferenceCompat;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 177
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 178
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static final switchPreferenceCategory(Landroidx/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)Lcom/player/easy/widget/preference/SwitchPreferenceCategory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/player/easy/widget/preference/SwitchPreferenceCategory;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/player/easy/widget/preference/SwitchPreferenceCategory;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/player/easy/widget/preference/SwitchPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 182
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 183
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method
