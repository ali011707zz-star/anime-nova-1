.class public abstract synthetic Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/view/Choreographer$FrameData;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
