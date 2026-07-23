.class public abstract synthetic Landroidx/media3/extractor/TrackOutput$-CC;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# direct methods
.method public static $default$durationUs(Landroidx/media3/extractor/TrackOutput;J)V
    .locals 0

    .line 154
    return-void
.end method

.method public static $default$sampleData(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/DataReader;IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result p0

    return p0
.end method

.method public static $default$sampleData(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method
