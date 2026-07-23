.class public final Lcom/facebook/ads/redexgen/X/ic;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/ContextAwareXHEAACDRCTypeUtil;",
        "",
        "<init>",
        "()V",
        "LATE_NIGHT_MODE",
        "",
        "LIMITED_PLAYBACK_RANGE",
        "DRC_EFFECT_OFF",
        "DRC_EFFECT_GENERAL_COMPRESSION",
        "getCustomizedDRCEffectType",
        "customizedDRCEffect",
        "lateNightLowerThreshold",
        "lateNightHigherThreshold",
        "isValidDRCEffectType",
        "",
        "shouldUseLateNightMode",
        "lateNightHourLowerThreshold",
        "lateNightHourUpperThreshold",
        "fbandroid.java.com.facebook.video.heroplayer.exocustom.exocustom"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/ic;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ic;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ic;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ic;->A00:Lcom/facebook/ads/redexgen/X/ic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A00(III)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 87131
    sget-object v0, Lcom/facebook/ads/redexgen/X/ic;->A00:Lcom/facebook/ads/redexgen/X/ic;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ic;->A01(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/in;->A01:Lcom/facebook/ads/redexgen/X/in;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/in;->A00()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87132
    return p0

    .line 87133
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/ic;->A02(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87134
    const/4 v0, 0x1

    .line 87135
    :goto_0
    return v0

    .line 87136
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private final A01(I)Z
    .locals 2

    .line 87137
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final A02(II)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 87138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 87139
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 87140
    .local v1, "hour":I
    if-ge v0, p0, :cond_0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
