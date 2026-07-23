.class public final Lcom/facebook/ads/redexgen/X/J6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 42171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42172
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/J6;->A01:J

    .line 42173
    iput p3, p0, Lcom/facebook/ads/redexgen/X/J6;->A00:I

    .line 42174
    return-void
.end method
