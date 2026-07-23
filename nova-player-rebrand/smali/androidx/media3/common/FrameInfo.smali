.class public Landroidx/media3/common/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public final format:Landroidx/media3/common/Format;

.field public final offsetToAddUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;J)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "format colorInfo must be set"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    if-lez v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "format width must be positive, but is: %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 46
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    const-string v2, "format height must be positive, but is: %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 48
    iput-object p1, p0, Landroidx/media3/common/FrameInfo;->format:Landroidx/media3/common/Format;

    .line 49
    iput-wide p2, p0, Landroidx/media3/common/FrameInfo;->offsetToAddUs:J

    return-void
.end method
