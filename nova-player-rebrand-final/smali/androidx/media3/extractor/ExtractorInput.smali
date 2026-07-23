.class public interface abstract Landroidx/media3/extractor/ExtractorInput;
.super Ljava/lang/Object;
.source "ExtractorInput.java"

# interfaces
.implements Landroidx/media3/common/DataReader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# virtual methods
.method public abstract advancePeekPosition(I)V
.end method

.method public abstract advancePeekPosition(IZ)Z
.end method

.method public abstract getLength()J
.end method

.method public abstract getPeekPosition()J
.end method

.method public abstract getPosition()J
.end method

.method public abstract peek([BII)I
.end method

.method public abstract peekFully([BII)V
.end method

.method public abstract peekFully([BIIZ)Z
.end method

.method public abstract read([BII)I
.end method

.method public abstract readFully([BII)V
.end method

.method public abstract readFully([BIIZ)Z
.end method

.method public abstract resetPeekPosition()V
.end method

.method public abstract setRetryPosition(JLjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation
.end method

.method public abstract skip(I)I
.end method

.method public abstract skipFully(I)V
.end method

.method public abstract skipFully(IZ)Z
.end method
