.class public final Lcom/facebook/ads/redexgen/X/LO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 50243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50244
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LO;->A00:I

    .line 50245
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/LO;->A01:J

    .line 50246
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/LO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50247
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 50248
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 50249
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result p0

    .line 50250
    .local v0, "id":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v1

    .line 50251
    .local v1, "size":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/LO;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/LO;-><init>(IJ)V

    return-object v0
.end method
