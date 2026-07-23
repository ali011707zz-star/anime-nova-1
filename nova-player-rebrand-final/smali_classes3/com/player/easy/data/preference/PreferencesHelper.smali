.class public final Lcom/player/easy/data/preference/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000g\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0001-\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0006\u0010\u0015\u001a\u00020\u000eJ\u0006\u0010\u0016\u001a\u00020\u000eJ\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0013J\u000e\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u001aJ\u0016\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0010J\u000e\u0010%\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001aJ\u000e\u0010&\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u001aJ\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001aJ\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u0002000\u0013J\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020(0\u0013J\u0006\u00109\u001a\u00020#J\u0006\u0010:\u001a\u00020\u000eJ\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010.\u00a8\u0006<"
    }
    d2 = {
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "flowPrefs",
        "Lcom/tfcporciuncula/flow/FlowSharedPreferences;",
        "downloadOnlyOverWifi",
        "",
        "seekAmount",
        "",
        "defaultDownloader",
        "customBrightnessValue",
        "Lcom/tfcporciuncula/flow/Preference;",
        "",
        "showBrightnessBar",
        "showVolumeBar",
        "onceHideVolumeBrightnessBars",
        "playerFitResizeMode",
        "lastKnownCountryCode",
        "",
        "sorting",
        "getSorting",
        "()I",
        "setSorting",
        "(I)V",
        "getFolderSorting",
        "path",
        "saveCustomSorting",
        "",
        "value",
        "removeCustomSorting",
        "hasCustomSorting",
        "getLocalVideoProgress",
        "",
        "name",
        "gson",
        "Lcom/google/gson/Gson;",
        "videoAdConfigSerializer",
        "com/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1",
        "Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;",
        "videoAdConfig",
        "Lcom/player/easy/data/VideoAdConfig;",
        "lastShowingVideoAd",
        "askNotificationsAfter",
        "askNotificationsDuration",
        "lastDownloadAdShowed",
        "lastWatchAdShowed",
        "lastExcludeDownloadAdShowed",
        "lastExcludeWatchAdShowed",
        "rewardAdTimestamp",
        "grantAdFreeReward",
        "isAdFreeActive",
        "showWatchOrDownloadDialog",
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
        "SMAP\nPreferencesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesHelper.kt\ncom/player/easy/data/preference/PreferencesHelper\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,112:1\n40#2,13:113\n40#2,13:126\n*S KotlinDebug\n*F\n+ 1 PreferencesHelper.kt\ncom/player/easy/data/preference/PreferencesHelper\n*L\n51#1:113,13\n56#1:126,13\n*E\n"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

.field private final gson:Lcom/google/gson/Gson;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final videoAdConfigSerializer:Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->context:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    .line 18
    new-instance v0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "prefs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    .line 63
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->gson:Lcom/google/gson/Gson;

    .line 66
    new-instance p1, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;

    invoke-direct {p1, p0}, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;-><init>(Lcom/player/easy/data/preference/PreferencesHelper;)V

    iput-object p1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfigSerializer:Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/player/easy/data/preference/PreferencesHelper;)Lcom/google/gson/Gson;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public final askNotificationsAfter()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "ask_notifications_after"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final askNotificationsDuration()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "ask_notifications_duration"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final customBrightnessValue()Lcom/tfcporciuncula/flow/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "custom_brightness_value"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getFloat(Ljava/lang/String;F)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final defaultDownloader()I
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_default_downloader"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final downloadOnlyOverWifi()Z
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_download_only_over_wifi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFolderSorting(Ljava/lang/String;)I
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_sort_folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->getSorting()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getLocalVideoProgress(Ljava/lang/String;)J
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSorting()I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/player/easy/R$integer;->default_sorting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "files_sort_order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final grantAdFreeReward()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->rewardAdTimestamp()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final hasCustomSorting(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_sort_folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isAdFreeActive()Z
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->rewardAdTimestamp()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final lastDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_download_ad_showed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final lastExcludeDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_exclude_download_ad_showed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final lastExcludeWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_exclude_watch_ad_showed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final lastKnownCountryCode()Lcom/tfcporciuncula/flow/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_known_country_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final lastShowingVideoAd()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_showing_video_ad"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final lastWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "last_watch_ad_showed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final onceHideVolumeBrightnessBars()Lcom/tfcporciuncula/flow/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "once_hide_volume_brightness_bars"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getBoolean(Ljava/lang/String;Z)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final playerFitResizeMode()Lcom/tfcporciuncula/flow/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "player_fit_resize_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getBoolean(Ljava/lang/String;Z)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final removeCustomSorting(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_sort_folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final rewardAdTimestamp()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "reward_ad_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final saveCustomSorting(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Lcom/player/easy/data/preference/PreferencesHelper;->setSorting(I)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_sort_folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final seekAmount()I
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_player_seek_amount"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final setSorting(I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "files_sort_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final showBrightnessBar()Z
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_brightness_bar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final showVolumeBar()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_volume_bar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final showWatchOrDownloadDialog()Lcom/tfcporciuncula/flow/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    const-string v1, "pref_show_watch_or_download_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getBoolean(Ljava/lang/String;Z)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final videoAdConfig()Lcom/tfcporciuncula/flow/Preference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tfcporciuncula/flow/Preference;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper;->flowPrefs:Lcom/tfcporciuncula/flow/FlowSharedPreferences;

    iget-object v1, p0, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfigSerializer:Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;

    sget-object v2, Lcom/player/easy/data/VideoAdConfig;->Companion:Lcom/player/easy/data/VideoAdConfig$Companion;

    invoke-virtual {v2}, Lcom/player/easy/data/VideoAdConfig$Companion;->empty()Lcom/player/easy/data/VideoAdConfig;

    move-result-object v2

    const-string v3, "video_ad_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->getObject(Ljava/lang/String;Lcom/tfcporciuncula/flow/Serializer;Ljava/lang/Object;)Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    return-object v0
.end method
