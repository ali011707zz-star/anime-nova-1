.class public final Lcom/facebook/ads/redexgen/X/Ii;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MasterElement"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 40410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40411
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:I

    .line 40412
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:J

    .line 40413
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/Ig;)V
    .locals 0

    .line 40414
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(IJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ii;)I
    .locals 0

    .line 40415
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ii;)J
    .locals 1

    .line 40416
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:J

    return-wide v0
.end method
