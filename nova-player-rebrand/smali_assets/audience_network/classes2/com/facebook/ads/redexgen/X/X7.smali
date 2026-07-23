.class public final Lcom/facebook/ads/redexgen/X/X7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final A00:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 72079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72080
    iput p1, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:F

    .line 72081
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .line 72082
    float-to-double v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:F

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method
