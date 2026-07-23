.class public final Lcom/facebook/ads/redexgen/X/l7;
.super Lcom/facebook/ads/redexgen/X/H2;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/l8;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/53;JJII)V
    .locals 18

    .line 92591
    new-instance v3, Lcom/facebook/ads/redexgen/X/mz;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/mz;-><init>()V

    new-instance v4, Lcom/facebook/ads/redexgen/X/l8;

    move/from16 v0, p7

    move/from16 v1, p6

    move-object/from16 v2, p1

    invoke-direct {v4, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/l8;-><init>(ILcom/facebook/ads/redexgen/X/53;I)V

    const-wide/16 v0, 0x1

    move-wide/from16 v5, p2

    add-long v9, v5, v0

    const-wide/16 v15, 0xbc

    const/16 v17, 0x3ac

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v13, p4

    invoke-direct/range {v2 .. v17}, Lcom/facebook/ads/redexgen/X/H2;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;JJJJJJI)V

    .line 92592
    return-void
.end method
