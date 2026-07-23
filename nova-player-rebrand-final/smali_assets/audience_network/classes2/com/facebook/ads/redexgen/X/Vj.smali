.class public final Lcom/facebook/ads/redexgen/X/Vj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 69627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69628
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A02:I

    .line 69629
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vj;->A00:I

    .line 69630
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    .line 69631
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Vh;)V
    .locals 0

    .line 69632
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Vj;)I
    .locals 0

    .line 69633
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Vj;)I
    .locals 0

    .line 69634
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Vj;)I
    .locals 0

    .line 69635
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    return p0
.end method
