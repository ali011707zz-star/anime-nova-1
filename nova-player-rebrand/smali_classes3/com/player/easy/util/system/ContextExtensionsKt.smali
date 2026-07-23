.class public final Lcom/player/easy/util/system/ContextExtensionsKt;
.super Ljava/lang/Object;
.source "ContextExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0003\u001a/\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u001b\u0008\u0002\u0010\u0015\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u0018\u001a/\u0010\u0019\u001a\u00020\u001a*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u001b\u0008\u0002\u0010\u0015\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u0018\u001a\u0016\u0010\u001b\u001a\u00060\u001cR\u00020\n*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0014\u001a4\u0010\u001e\u001a\u00020\u001f*\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020!2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00170\u0016\u001a4\u0010\u001e\u001a\u00020\u001f*\u00020\u00022\u0008\u0010#\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\"\u001a\u00020!2\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00170\u0016\u001a\u001c\u0010$\u001a\u00020\u0017*\u00020\u00022\u0006\u0010%\u001a\u00020\u00142\u0008\u0008\u0002\u0010&\u001a\u00020!\u001a\u000c\u0010\'\u001a\u0004\u0018\u00010\u0014*\u00020\u0002\u001a\n\u0010(\u001a\u00020)*\u00020\u0002\u001a\u0014\u0010*\u001a\u00020!*\u00020\u00022\u0008\u0008\u0001\u0010+\u001a\u00020!\u001a \u0010,\u001a\u00020!*\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010-\u001a\u00020.H\u0007\u001a\u0012\u00109\u001a\u00020)*\u00020\u00022\u0006\u0010:\u001a\u00020;\u001a\u0012\u0010<\u001a\u00020\u0017*\u00020\u00022\u0006\u0010=\u001a\u00020\u0014\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0015\u0010\t\u001a\u00020\n*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"\u0015\u0010/\u001a\u00020!*\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\"\u0015\u00102\u001a\u00020!*\u00020.8F\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\"\u0015\u00105\u001a\u000206*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108\u00a8\u0006>"
    }
    d2 = {
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "Landroid/content/Context;",
        "getNotificationManager",
        "(Landroid/content/Context;)Landroid/app/NotificationManager;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "getConnectivityManager",
        "(Landroid/content/Context;)Landroid/net/ConnectivityManager;",
        "powerManager",
        "Landroid/os/PowerManager;",
        "getPowerManager",
        "(Landroid/content/Context;)Landroid/os/PowerManager;",
        "displayCompat",
        "Landroid/view/Display;",
        "getDisplayCompat",
        "(Landroid/content/Context;)Landroid/view/Display;",
        "notificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "channelId",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "notification",
        "Landroid/app/Notification;",
        "acquireWakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "tag",
        "toast",
        "Landroid/widget/Toast;",
        "resource",
        "",
        "duration",
        "text",
        "showErrorToast",
        "msg",
        "length",
        "getTextFromClipboard",
        "isConnectedToNetwork",
        "",
        "getCompatColor",
        "colorRes",
        "getResourceColor",
        "alphaFactor",
        "",
        "dpToPx",
        "getDpToPx",
        "(I)I",
        "dp",
        "getDp",
        "(F)I",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "(Landroid/content/Context;)Landroid/media/AudioManager;",
        "addToClipboard",
        "str",
        "",
        "openInBrowser",
        "url",
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
        "SMAP\nContextExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextExtensions.kt\ncom/player/easy/util/system/ContextExtensionsKt\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,183:1\n31#2:184\n31#2:185\n31#2:186\n31#2:187\n31#2:188\n31#2:209\n96#3:189\n105#3,19:190\n29#4:210\n29#4:211\n*S KotlinDebug\n*F\n+ 1 ContextExtensions.kt\ncom/player/easy/util/system/ContextExtensionsKt\n*L\n37#1:184\n40#1:185\n43#1:186\n46#1:187\n110#1:188\n148#1:209\n133#1:189\n134#1:190,19\n173#1:210\n176#1:211\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$812YZ0DVxAQPX78cOCPKWz99HLM(Landroid/widget/Toast;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$lambda$0(Landroid/widget/Toast;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bEo9zGO1Wi37mJ2tHwEw1gH0GDg(Landroid/widget/Toast;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$lambda$1(Landroid/widget/Toast;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":WakeLock"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 71
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final addToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/ClipboardManager;

    .line 153
    const-string v0, "label"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 157
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, p0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-class v0, Landroid/media/AudioManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public static final getCompatColor(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static final getDisplayCompat(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    const-class v0, Landroid/view/WindowManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 46
    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getDp(F)I
    .locals 2

    .line 145
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final getDpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 142
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const-class v0, Landroid/os/PowerManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public static final getResourceColor(Landroid/content/Context;IF)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "obtainStyledAttributes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 130
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    shr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float/2addr p0, p2

    .line 133
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 134
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static synthetic getResourceColor$default(Landroid/content/Context;IFILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 127
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getResourceColor(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static final getTextFromClipboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 110
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/content/ClipboardManager;

    .line 111
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isConnectedToNetwork(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final notification(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic notification$default(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/app/Notification;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->notification(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static final notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$Builder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget p0, Lcom/player/easy/R$attr;->colorPrimary:I

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const-string p1, "setColor(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 54
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static synthetic notificationBuilder$default(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final openInBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 168
    new-instance v1, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    .line 169
    sget v2, Lcom/player/easy/R$attr;->colorPrimary:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v2, v5, v3, v4}, Lcom/player/easy/util/system/ContextExtensionsKt;->getResourceColor$default(Landroid/content/Context;IFILjava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDefaultColorSchemeParams(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    invoke-virtual {v0, p0, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 176
    :catch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 211
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 176
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public static final showErrorToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget v0, Lcom/player/easy/R$string;->an_error_occurred:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "format(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    return-void
.end method

.method public static synthetic showErrorToast$default(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 105
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->showErrorToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final toast(Landroid/content/Context;IILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/Toast;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/Toast;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/Toast;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/Toast;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 99
    const-string p1, ""

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 100
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 99
    const-string p1, "also(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 83
    new-instance p3, Lcom/player/easy/util/system/ContextExtensionsKt$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/player/easy/util/system/ContextExtensionsKt$$ExternalSyntheticLambda1;-><init>()V

    .line 80
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast(Landroid/content/Context;IILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 97
    new-instance p3, Lcom/player/easy/util/system/ContextExtensionsKt$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/player/easy/util/system/ContextExtensionsKt$$ExternalSyntheticLambda0;-><init>()V

    .line 94
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method private static final toast$lambda$0(Landroid/widget/Toast;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final toast$lambda$1(Landroid/widget/Toast;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
