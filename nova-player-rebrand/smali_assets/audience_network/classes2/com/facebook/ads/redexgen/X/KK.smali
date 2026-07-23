.class public final Lcom/facebook/ads/redexgen/X/KK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameAndTickRate"
.end annotation


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(FII)V
    .locals 0

    .line 46700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46701
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KK;->A00:F

    .line 46702
    iput p2, p0, Lcom/facebook/ads/redexgen/X/KK;->A01:I

    .line 46703
    iput p3, p0, Lcom/facebook/ads/redexgen/X/KK;->A02:I

    .line 46704
    return-void
.end method
