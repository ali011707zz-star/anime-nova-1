.class public final Lcom/player/easy/data/preference/PreferenceKeys;
.super Ljava/lang/Object;
.source "PreferenceKeys.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/player/easy/data/preference/PreferenceKeys;",
        "",
        "<init>",
        "()V",
        "playerSeekAmount",
        "",
        "defaultDownloader",
        "showBrightnessBar",
        "showVolumeBar",
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


# static fields
.field public static final INSTANCE:Lcom/player/easy/data/preference/PreferenceKeys;

.field public static final defaultDownloader:Ljava/lang/String; = "pref_default_downloader"

.field public static final playerSeekAmount:Ljava/lang/String; = "pref_player_seek_amount"

.field public static final showBrightnessBar:Ljava/lang/String; = "pref_show_brightness_bar"

.field public static final showVolumeBar:Ljava/lang/String; = "pref_show_volume_bar"

.field public static final showWatchOrDownloadDialog:Ljava/lang/String; = "pref_show_watch_or_download_dialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/data/preference/PreferenceKeys;

    invoke-direct {v0}, Lcom/player/easy/data/preference/PreferenceKeys;-><init>()V

    sput-object v0, Lcom/player/easy/data/preference/PreferenceKeys;->INSTANCE:Lcom/player/easy/data/preference/PreferenceKeys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
