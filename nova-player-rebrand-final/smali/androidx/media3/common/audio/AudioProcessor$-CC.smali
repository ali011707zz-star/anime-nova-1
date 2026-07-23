.class public abstract synthetic Landroidx/media3/common/audio/AudioProcessor$-CC;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# direct methods
.method public static $default$flush(Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 1

    .line 238
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AudioProcessor must implement at least one #flush() overload."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $default$flush(Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    .locals 0

    .line 249
    invoke-interface {p0}, Landroidx/media3/common/audio/AudioProcessor;->flush()V

    return-void
.end method

.method public static $default$getDurationAfterProcessorApplied(Landroidx/media3/common/audio/AudioProcessor;J)J
    .locals 0

    .line 169
    return-wide p1
.end method
