.class public interface abstract Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "HlsMediaChunkExtractor.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# virtual methods
.method public abstract init(Landroidx/media3/extractor/ExtractorOutput;)V
.end method

.method public abstract isPackedAudioExtractor()Z
.end method

.method public abstract isReusable()Z
.end method

.method public abstract onTruncatedSegmentParsed()V
.end method

.method public abstract read(Landroidx/media3/extractor/ExtractorInput;)Z
.end method

.method public abstract recreate()Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
.end method
