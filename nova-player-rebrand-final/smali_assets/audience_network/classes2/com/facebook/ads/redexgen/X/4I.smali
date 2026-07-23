.class public final Lcom/facebook/ads/redexgen/X/4I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:J


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11367
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    .line 11368
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 11369
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:F

    .line 11370
    return-void
.end method


# virtual methods
.method public final A00(F)Lcom/facebook/ads/redexgen/X/4I;
    .locals 0

    .line 11371
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:F

    .line 11372
    return-object p0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/4J;
    .locals 6

    .line 11373
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:F

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:J

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4J;-><init>(IIFJ)V

    return-object v0
.end method
