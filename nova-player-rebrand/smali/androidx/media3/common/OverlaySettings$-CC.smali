.class public abstract synthetic Landroidx/media3/common/OverlaySettings$-CC;
.super Ljava/lang/Object;
.source "OverlaySettings.java"


# direct methods
.method public static $default$getAlphaScale(Landroidx/media3/common/OverlaySettings;)F
    .locals 0

    .line 56
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static $default$getBackgroundFrameAnchor(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;
    .locals 0

    .line 77
    sget-object p0, Landroidx/media3/common/OverlaySettings;->DEFAULT_BACKGROUND_FRAME_ANCHOR:Landroid/util/Pair;

    return-object p0
.end method

.method public static $default$getHdrLuminanceMultiplier(Landroidx/media3/common/OverlaySettings;)F
    .locals 0

    .line 131
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static $default$getOverlayFrameAnchor(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;
    .locals 0

    .line 95
    sget-object p0, Landroidx/media3/common/OverlaySettings;->DEFAULT_OVERLAY_FRAME_ANCHOR:Landroid/util/Pair;

    return-object p0
.end method

.method public static $default$getRotationDegrees(Landroidx/media3/common/OverlaySettings;)F
    .locals 0

    .line 115
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$getScale(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;
    .locals 0

    .line 104
    sget-object p0, Landroidx/media3/common/OverlaySettings;->DEFAULT_SCALE:Landroid/util/Pair;

    return-object p0
.end method
