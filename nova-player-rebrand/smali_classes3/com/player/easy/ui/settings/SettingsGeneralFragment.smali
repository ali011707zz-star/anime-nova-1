.class public final Lcom/player/easy/ui/settings/SettingsGeneralFragment;
.super Lcom/player/easy/ui/settings/SettingsFragment;
.source "SettingsGeneralFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/player/easy/ui/settings/SettingsGeneralFragment;",
        "Lcom/player/easy/ui/settings/SettingsFragment;",
        "<init>",
        "()V",
        "setupPreferenceScreen",
        "Landroidx/preference/PreferenceScreen;",
        "screen",
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
        "SMAP\nSettingsGeneralFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsGeneralFragment.kt\ncom/player/easy/ui/settings/SettingsGeneralFragment\n+ 2 PreferenceDSL.kt\ncom/player/easy/util/preference/PreferenceDSLKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n58#2:77\n101#2,5:78\n58#2:84\n101#2,5:85\n24#2:91\n101#2,5:92\n24#2:97\n101#2,5:98\n24#2:103\n101#2,5:104\n18#2:109\n101#2,2:110\n117#2,5:112\n103#2,3:117\n1#3:83\n1#3:90\n*S KotlinDebug\n*F\n+ 1 SettingsGeneralFragment.kt\ncom/player/easy/ui/settings/SettingsGeneralFragment\n*L\n17#1:77\n17#1:78,5\n35#1:84\n35#1:85,5\n45#1:91\n45#1:92,5\n51#1:97\n51#1:98,5\n57#1:103\n57#1:104,5\n64#1:109\n64#1:110,2\n68#1:112,5\n64#1:117,3\n17#1:83\n35#1:90\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/player/easy/ui/settings/SettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public setupPreferenceScreen(Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "screen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v1, Lcom/player/easy/R$string;->label_settings:I

    invoke-static {v0, v1}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 58
    new-instance v1, Lcom/player/easy/widget/preference/IntListPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5, v4}, Lcom/player/easy/widget/preference/IntListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    const-string v2, "pref_player_seek_amount"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 19
    sget v2, Lcom/player/easy/R$string;->pref_skip_amount:I

    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 23
    sget v2, Lcom/player/easy/R$string;->skip_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 24
    sget v6, Lcom/player/easy/R$string;->skip_10:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 25
    sget v7, Lcom/player/easy/R$string;->skip_15:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 26
    sget v8, Lcom/player/easy/R$string;->skip_20:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 27
    sget v9, Lcom/player/easy/R$string;->skip_30:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 28
    sget v10, Lcom/player/easy/R$string;->skip_60:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v6, v11, v2

    aput-object v7, v11, v5

    const/4 v6, 0x3

    aput-object v8, v11, v6

    const/4 v6, 0x4

    aput-object v9, v11, v6

    const/4 v6, 0x5

    aput-object v10, v11, v6

    .line 21
    invoke-static {v1, v11}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setEntriesRes(Landroidx/preference/ListPreference;[Ljava/lang/Integer;)V

    .line 30
    const-string v17, "30"

    const-string v18, "60"

    const-string v13, "5"

    const-string v14, "10"

    const-string v15, "15"

    const-string v16, "20"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 31
    const-string v6, "10"

    invoke-static {v1, v6}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 32
    const-string v6, "%s"

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    invoke-static {v1}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    new-instance v1, Lcom/player/easy/widget/preference/IntListPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v7, v4, v5, v4}, Lcom/player/easy/widget/preference/IntListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    const-string v3, "pref_default_downloader"

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 37
    sget v3, Lcom/player/easy/R$string;->pref_download_manager:I

    invoke-static {v1, v3}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 39
    sget v3, Lcom/player/easy/R$string;->pref_default_downloader:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/player/easy/R$string;->pref_system_downloader:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v3, v5, v12

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setEntriesRes(Landroidx/preference/ListPreference;[Ljava/lang/Integer;)V

    .line 40
    const-string v2, "2"

    const-string v3, "1"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {v1, v3}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    invoke-static {v1}, Lcom/player/easy/util/preference/PreferenceDSLKt;->initDialog(Landroidx/preference/DialogPreference;)V

    .line 24
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v2, "pref_show_brightness_bar"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 47
    sget v2, Lcom/player/easy/R$string;->pref_show_brightness_bar:I

    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 48
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 24
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v3, "pref_show_volume_bar"

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 53
    sget v3, Lcom/player/easy/R$string;->pref_show_volume_bar:I

    invoke-static {v1, v3}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 54
    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 24
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v3, "pref_show_watch_or_download_dialog"

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 59
    sget v3, Lcom/player/easy/R$string;->pref_show_watch_or_download_dialog:I

    invoke-static {v1, v3}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 60
    sget v3, Lcom/player/easy/R$string;->pref_show_watch_or_download_dialog_summary:I

    invoke-static {v1, v3}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setSummaryRes(Landroidx/preference/Preference;I)V

    .line 61
    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setDefaultValue(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 18
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    sget v2, Lcom/player/easy/R$string;->version:I

    invoke-static {v1, v2}, Lcom/player/easy/util/preference/PreferenceDSLKt;->setTitleRes(Landroidx/preference/Preference;I)V

    .line 67
    const-string v2, "1.0.6 (7)"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v3, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v2}, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;-><init>(Lcom/player/easy/ui/settings/SettingsGeneralFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method
