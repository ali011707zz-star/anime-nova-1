.class public final Lcom/player/easy/player/DoubleTabPlayerView;
.super Landroidx/media3/ui/PlayerView;
.source "DoubleTabPlayerView.kt"

# interfaces
.implements Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;
.implements Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
.implements Lcom/player/easy/widget/VolumeBar$VolumeChangeListener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;,
        Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;,
        Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003`abB\'\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010I\u001a\u00020DJ\u0006\u0010J\u001a\u00020DJ\u0006\u0010K\u001a\u00020DJ\u0010\u0010L\u001a\u00020\'2\u0006\u0010M\u001a\u00020NH\u0017J\u0017\u0010O\u001a\u0004\u0018\u00010\'2\u0006\u0010P\u001a\u00020-H\u0002\u00a2\u0006\u0002\u0010QJ\u0008\u0010R\u001a\u00020DH\u0016J\u0010\u0010S\u001a\u00020D2\u0006\u0010T\u001a\u00020-H\u0016J\u0008\u0010U\u001a\u00020DH\u0016J\u0008\u0010V\u001a\u00020DH\u0016J\u0010\u0010W\u001a\u00020D2\u0006\u0010T\u001a\u00020-H\u0016J\u0008\u0010X\u001a\u00020DH\u0016J\u0008\u0010Y\u001a\u00020\'H\u0016J\u0010\u0010Z\u001a\u00020D2\u0006\u0010[\u001a\u00020\nH\u0016J\u0008\u0010\\\u001a\u00020DH\u0007J\u0010\u0010]\u001a\u00020D2\u0006\u0010=\u001a\u00020-H\u0002J\u0010\u0010^\u001a\u00020D2\u0006\u0010_\u001a\u00020-H\u0002R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u00101\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010\u0012\u001a\u0004\u00083\u00104R\u001b\u00106\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\u0012\u001a\u0004\u00087\u00108R\u001b\u0010:\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\u0012\u001a\u0004\u0008;\u00108R\u0014\u0010=\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u00108R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020D\u0018\u00010CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010H\u00a8\u0006c"
    }
    d2 = {
        "Lcom/player/easy/player/DoubleTabPlayerView;",
        "Landroidx/media3/ui/PlayerView;",
        "Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;",
        "Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;",
        "Lcom/player/easy/widget/VolumeBar$VolumeChangeListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "preferences",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "getPreferences",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "preferences$delegate",
        "Lkotlin/Lazy;",
        "doubleTabGestureDetector",
        "Landroidx/core/view/GestureDetectorCompat;",
        "scaleGestureDetector",
        "Landroid/view/ScaleGestureDetector;",
        "doubleTabListener",
        "Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;",
        "getDoubleTabListener",
        "()Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;",
        "setDoubleTabListener",
        "(Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;)V",
        "exoErrorMessage",
        "Landroid/widget/TextView;",
        "brightnessBar",
        "Lcom/player/easy/widget/BrightnessBar;",
        "volumeBar",
        "Lcom/player/easy/widget/VolumeBar;",
        "playerVolumeGroup",
        "Landroidx/constraintlayout/widget/Group;",
        "playerBrightnessGroup",
        "screenIsLocked",
        "",
        "getScreenIsLocked",
        "()Z",
        "setScreenIsLocked",
        "(Z)V",
        "currentBrightnessLevel",
        "",
        "isDoubleTapping",
        "shouldShowPlayerControlForBrightness",
        "shouldShowPlayerControlForVolume",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "minimumVolume",
        "getMinimumVolume",
        "()I",
        "minimumVolume$delegate",
        "maximumVolume",
        "getMaximumVolume",
        "maximumVolume$delegate",
        "currentVolume",
        "getCurrentVolume",
        "textClearRunnable",
        "Ljava/lang/Runnable;",
        "hideController",
        "onHideSystemUi",
        "Lkotlin/Function1;",
        "",
        "getOnHideSystemUi",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnHideSystemUi",
        "(Lkotlin/jvm/functions/Function1;)V",
        "syncVolumeWithVolumeBar",
        "volumeUp",
        "volumeDown",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "shouldForward",
        "posX",
        "(F)Ljava/lang/Boolean;",
        "onStartChangingBrightnessBar",
        "onBrightnessChange",
        "value",
        "onEndChangingBrightnessBar",
        "onStartChangingVolumeBar",
        "onVolumeChange",
        "onEndChangingVolumeBar",
        "performClick",
        "onVisibilityChanged",
        "visibility",
        "hideSystemUi",
        "setIconVolume",
        "setIconBrightness",
        "currentBrightness",
        "DoubleTapGestureListener",
        "CustomOnScaleGestureListener",
        "ListenerDoubleTab",
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
        "SMAP\nDoubleTabPlayerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleTabPlayerView.kt\ncom/player/easy/player/DoubleTabPlayerView\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,358:1\n17#2:359\n257#3,2:360\n327#3,2:362\n329#3,2:372\n257#3,2:374\n257#3,2:376\n257#3,2:378\n257#3,2:380\n257#3,2:382\n257#3,2:384\n257#3,2:386\n255#3:388\n199#4,8:364\n*S KotlinDebug\n*F\n+ 1 DoubleTabPlayerView.kt\ncom/player/easy/player/DoubleTabPlayerView\n*L\n43#1:359\n111#1:360,2\n121#1:362,2\n121#1:372,2\n122#1:374,2\n236#1:376,2\n261#1:378,2\n289#1:380,2\n292#1:382,2\n299#1:384,2\n302#1:386,2\n94#1:388\n121#1:364,8\n*E\n"
    }
.end annotation


# instance fields
.field private final audioManager$delegate:Lkotlin/Lazy;

.field private final brightnessBar:Lcom/player/easy/widget/BrightnessBar;

.field private currentBrightnessLevel:F

.field private final doubleTabGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private doubleTabListener:Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;

.field private final exoErrorMessage:Landroid/widget/TextView;

.field private final hideController:Ljava/lang/Runnable;

.field private isDoubleTapping:Z

.field private final maximumVolume$delegate:Lkotlin/Lazy;

.field private final minimumVolume$delegate:Lkotlin/Lazy;

.field private onHideSystemUi:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

.field private final playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

.field private final preferences$delegate:Lkotlin/Lazy;

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private screenIsLocked:Z

.field private shouldShowPlayerControlForBrightness:Z

.field private shouldShowPlayerControlForVolume:Z

.field private final textClearRunnable:Ljava/lang/Runnable;

.field private final volumeBar:Lcom/player/easy/widget/VolumeBar;


# direct methods
.method public static synthetic $r8$lambda$1LgNVMeWtVpQe1hxCfiHFBSp9iA(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->audioManager_delegate$lambda$0(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Msmih0gt1Pce4R7VtmQUXH9WOb8(Lcom/player/easy/player/DoubleTabPlayerView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->textClearRunnable$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzSWudj0Oy-4dIM-shOf0XUJ9mY(Lcom/player/easy/player/DoubleTabPlayerView;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->maximumVolume_delegate$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i-qJ9EaznFy5YnT8VySGlHG4L3U(Lcom/player/easy/player/DoubleTabPlayerView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->hideController$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kc_J9hE_Aqmyu82foScZCGwPaZw(Lcom/player/easy/player/DoubleTabPlayerView;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->minimumVolume_delegate$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/player/easy/player/DoubleTabPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/player/easy/player/DoubleTabPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 359
    sget-object p2, Lcom/player/easy/player/DoubleTabPlayerView$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/player/DoubleTabPlayerView$special$$inlined$injectLazy$1;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->preferences$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    new-instance p3, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;

    invoke-direct {p3, p0, p0}, Lcom/player/easy/player/DoubleTabPlayerView$DoubleTapGestureListener;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;Landroid/view/View;)V

    invoke-direct {p2, p1, p3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->doubleTabGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 48
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;

    invoke-direct {p3, p0, p0}, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;Landroidx/media3/ui/PlayerView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 52
    sget p2, Lcom/player/easy/R$id;->exo_error_message:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->exoErrorMessage:Landroid/widget/TextView;

    .line 54
    sget p2, Lcom/player/easy/R$id;->brightness_bar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/player/easy/widget/BrightnessBar;

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->brightnessBar:Lcom/player/easy/widget/BrightnessBar;

    .line 56
    sget v0, Lcom/player/easy/R$id;->volume_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/player/easy/widget/VolumeBar;

    iput-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->volumeBar:Lcom/player/easy/widget/VolumeBar;

    .line 58
    sget v1, Lcom/player/easy/R$id;->player_group_volume:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

    .line 60
    sget v2, Lcom/player/easy/R$id;->player_group_brightness:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/Group;

    iput-object v2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

    .line 64
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/player/easy/data/preference/PreferencesHelper;->customBrightnessValue()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p3

    invoke-interface {p3}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/player/easy/player/DoubleTabPlayerView;->currentBrightnessLevel:F

    .line 72
    new-instance p3, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->audioManager$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->minimumVolume$delegate:Lkotlin/Lazy;

    .line 82
    new-instance p1, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->maximumVolume$delegate:Lkotlin/Lazy;

    .line 87
    new-instance p1, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;)V

    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->textClearRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance p1, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/player/easy/player/DoubleTabPlayerView$$ExternalSyntheticLambda4;-><init>(Lcom/player/easy/player/DoubleTabPlayerView;)V

    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p0, p0}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    .line 105
    sget p1, Lcom/player/easy/R$id;->player_group:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    .line 107
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/player/easy/data/preference/PreferencesHelper;->showBrightnessBar()Z

    move-result p3

    const/16 v3, 0x8

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p2, p0}, Lcom/player/easy/widget/BrightnessBar;->setBrightnessChangedListener(Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;)V

    .line 109
    iget p3, p0, Lcom/player/easy/player/DoubleTabPlayerView;->currentBrightnessLevel:F

    invoke-virtual {p2, p3}, Lcom/player/easy/widget/BrightnessBar;->setBrightness(F)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    .line 113
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/player/easy/data/preference/PreferencesHelper;->showVolumeBar()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {v0, p0}, Lcom/player/easy/widget/VolumeBar;->setVolumeChangedListener(Lcom/player/easy/widget/VolumeBar$VolumeChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->syncVolumeWithVolumeBar()V

    goto :goto_1

    .line 120
    :cond_1
    sget p2, Lcom/player/easy/R$id;->skip_intro:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 121
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x48

    .line 121
    invoke-static {v2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v2

    .line 365
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 367
    iget v5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 368
    iget v6, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 370
    invoke-virtual {p3, v4, v2, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 372
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    .line 124
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    .line 128
    :goto_1
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->playerFitResizeMode()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    invoke-interface {p1}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 127
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    return-void

    .line 362
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/player/DoubleTabPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getPreferences(Lcom/player/easy/player/DoubleTabPlayerView;)Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isDoubleTapping$p(Lcom/player/easy/player/DoubleTabPlayerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->isDoubleTapping:Z

    return p0
.end method

.method public static final synthetic access$setDoubleTapping$p(Lcom/player/easy/player/DoubleTabPlayerView;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->isDoubleTapping:Z

    return-void
.end method

.method public static final synthetic access$shouldForward(Lcom/player/easy/player/DoubleTabPlayerView;F)Ljava/lang/Boolean;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/player/easy/player/DoubleTabPlayerView;->shouldForward(F)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final audioManager_delegate$lambda$0(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->audioManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private final getCurrentVolume()I
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private final getMaximumVolume()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->maximumVolume$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getMinimumVolume()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->minimumVolume$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->preferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method private static final hideController$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideController()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final maximumVolume_delegate$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)I
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private static final minimumVolume_delegate$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)I
    .locals 2

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final setIconBrightness(F)V
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 347
    sget p1, Lcom/player/easy/R$drawable;->ic_brightness_low:I

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 348
    sget p1, Lcom/player/easy/R$drawable;->ic_brightness_high:I

    goto :goto_0

    .line 349
    :cond_1
    sget p1, Lcom/player/easy/R$drawable;->ic_brightness_med:I

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->exoErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method private final setIconVolume(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 336
    sget p1, Lcom/player/easy/R$drawable;->ic_volume_off_24dp:I

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 337
    sget p1, Lcom/player/easy/R$drawable;->ic_volume_up_24dp:I

    goto :goto_0

    .line 338
    :cond_1
    sget p1, Lcom/player/easy/R$drawable;->ic_volume_down_24:I

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->exoErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method private final shouldForward(F)Ljava/lang/Boolean;
    .locals 8

    .line 214
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 216
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    .line 217
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    float-to-double v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 227
    :cond_2
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    float-to-double v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v4, p1

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->isDoubleTapping:Z

    return-object v1
.end method

.method private static final textClearRunnable$lambda$0(Lcom/player/easy/player/DoubleTabPlayerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->exoErrorMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public final getDoubleTabListener()Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->doubleTabListener:Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;

    return-object v0
.end method

.method public final getOnHideSystemUi()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->onHideSystemUi:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getScreenIsLocked()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->screenIsLocked:Z

    return v0
.end method

.method public final hideSystemUi()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x1307

    .line 323
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onBrightnessChange(F)V
    .locals 4

    .line 240
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrightnessChange(), value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->currentBrightnessLevel:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x10

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 242
    invoke-static {v1, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 243
    iput p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->currentBrightnessLevel:F

    .line 244
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/data/preference/PreferencesHelper;->customBrightnessValue()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/player/easy/player/DoubleTabPlayerView;->setIconBrightness(F)V

    :cond_0
    return-void
.end method

.method public onEndChangingBrightnessBar()V
    .locals 3

    .line 251
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onEndChangingBrightnessBar()"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForBrightness:Z

    .line 253
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->textClearRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 255
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEndChangingVolumeBar()V
    .locals 3

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForVolume:Z

    .line 279
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->textClearRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 280
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 281
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStartChangingBrightnessBar()V
    .locals 3

    .line 234
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStartChangingBrightnessBar()"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 236
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStartChangingVolumeBar()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->hideController:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->doubleTabGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onVisibilityChanged(I)V
    .locals 4

    .line 312
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    if-nez p1, :cond_0

    .line 313
    const-string v1, "visible"

    goto :goto_0

    :cond_0
    const-string v1, "gone"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged, visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 312
    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->hideSystemUi()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->onHideSystemUi:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onVolumeChange(F)V
    .locals 4

    .line 265
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMinimumVolume()I

    move-result v1

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 269
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/player/easy/player/DoubleTabPlayerView;->setIconVolume(F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 287
    iget-boolean v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForBrightness:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

    .line 380
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->showController()V

    .line 292
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerVolumeGroup:Landroidx/constraintlayout/widget/Group;

    .line 382
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :goto_0
    iput-boolean v2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForBrightness:Z

    return v1

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForVolume:Z

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

    .line 384
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->showController()V

    .line 302
    iget-object v0, p0, Lcom/player/easy/player/DoubleTabPlayerView;->playerBrightnessGroup:Landroidx/constraintlayout/widget/Group;

    .line 386
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_1
    iput-boolean v2, p0, Lcom/player/easy/player/DoubleTabPlayerView;->shouldShowPlayerControlForVolume:Z

    return v1

    .line 307
    :cond_3
    invoke-super {p0}, Landroidx/media3/ui/PlayerView;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setDoubleTabListener(Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->doubleTabListener:Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;

    return-void
.end method

.method public final setOnHideSystemUi(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->onHideSystemUi:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setScreenIsLocked(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->screenIsLocked:Z

    return-void
.end method

.method public final syncVolumeWithVolumeBar()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getCurrentVolume()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->volumeBar:Lcom/player/easy/widget/VolumeBar;

    invoke-virtual {v1, v0}, Lcom/player/easy/widget/VolumeBar;->setVolume(F)V

    return-void
.end method

.method public final volumeDown()V
    .locals 3

    .line 147
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getCurrentVolume()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMinimumVolume()I

    move-result v1

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    int-to-float v0, v0

    .line 148
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 149
    iget-object v1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->volumeBar:Lcom/player/easy/widget/VolumeBar;

    invoke-virtual {v1, v0}, Lcom/player/easy/widget/VolumeBar;->setVolume(F)V

    return-void
.end method

.method public final volumeUp()V
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getCurrentVolume()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMinimumVolume()I

    move-result v1

    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    int-to-float v0, v0

    .line 142
    invoke-direct {p0}, Lcom/player/easy/player/DoubleTabPlayerView;->getMaximumVolume()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 143
    iget-object v1, p0, Lcom/player/easy/player/DoubleTabPlayerView;->volumeBar:Lcom/player/easy/widget/VolumeBar;

    invoke-virtual {v1, v0}, Lcom/player/easy/widget/VolumeBar;->setVolume(F)V

    return-void
.end method
