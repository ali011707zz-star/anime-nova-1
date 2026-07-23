.class public final Lcom/facebook/ads/redexgen/X/J3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:[I

.field public final A03:[I

.field public final A04:[J

.field public final A05:[J


# direct methods
.method public constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 42127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J3;->A04:[J

    .line 42129
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J3;->A03:[I

    .line 42130
    iput p3, p0, Lcom/facebook/ads/redexgen/X/J3;->A00:I

    .line 42131
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/J3;->A05:[J

    .line 42132
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/J3;->A02:[I

    .line 42133
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/J3;->A01:J

    .line 42134
    return-void
.end method

.method public synthetic constructor <init>([J[II[J[IJLcom/facebook/ads/redexgen/X/J2;)V
    .locals 0

    .line 42135
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/J3;-><init>([J[II[J[IJ)V

    return-void
.end method
