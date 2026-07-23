.class public final Lcom/facebook/ads/redexgen/X/mi;
.super Lcom/facebook/ads/redexgen/X/H2;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/mj;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;IJJ)V
    .locals 18

    .line 99369
    move-object/from16 v2, p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/facebook/ads/redexgen/X/mk;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/mk;-><init>(Lcom/facebook/ads/redexgen/X/HJ;)V

    const/4 v0, 0x0

    new-instance v4, Lcom/facebook/ads/redexgen/X/mj;

    move/from16 v1, p2

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mj;-><init>(Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/Ho;)V

    .line 99370
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/HJ;->A06()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/HJ;->A09:J

    .line 99371
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/HJ;->A05()J

    move-result-wide v15

    iget v1, v2, Lcom/facebook/ads/redexgen/X/HJ;->A06:I

    .line 99372
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 99373
    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v13, p5

    move-wide/from16 v11, p3

    invoke-direct/range {v2 .. v17}, Lcom/facebook/ads/redexgen/X/H2;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;JJJJJJI)V

    .line 99374
    return-void
.end method
