.class public final Lcom/facebook/ads/redexgen/X/J9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Z


# direct methods
.method public constructor <init>(JZI)V
    .locals 0

    .line 42256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42257
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/J9;->A01:J

    .line 42258
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/J9;->A02:Z

    .line 42259
    iput p4, p0, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    .line 42260
    return-void
.end method
