.class public final Landroidx/media3/extractor/NoOpExtractorOutput;
.super Ljava/lang/Object;
.source "NoOpExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    .line 0
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 0
    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    .line 26
    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p1
.end method
