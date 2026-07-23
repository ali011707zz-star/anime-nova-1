.class public final Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;
.super Ljava/lang/Object;
.source "PreferenceDSL.kt"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/settings/SettingsGeneralFragment;->setupPreferenceScreen(Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPreferenceDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceDSL.kt\ncom/player/easy/util/preference/PreferenceDSLKt$onClick$1\n+ 2 SettingsGeneralFragment.kt\ncom/player/easy/ui/settings/SettingsGeneralFragment\n*L\n1#1,168:1\n69#2,4:169\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $versionName$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/player/easy/ui/settings/SettingsGeneralFragment;


# direct methods
.method public constructor <init>(Lcom/player/easy/ui/settings/SettingsGeneralFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;->this$0:Lcom/player/easy/ui/settings/SettingsGeneralFragment;

    iput-object p2, p0, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;->$versionName$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;->this$0:Lcom/player/easy/ui/settings/SettingsGeneralFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;->$versionName$inlined:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/player/easy/util/system/ContextExtensionsKt;->addToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/player/easy/ui/settings/SettingsGeneralFragment$setupPreferenceScreen$lambda$0$5$$inlined$onClick$1;->this$0:Lcom/player/easy/ui/settings/SettingsGeneralFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/player/easy/R$string;->text_copied:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    :cond_0
    return v0
.end method
