.class public final Lcom/facebook/ads/redexgen/X/Hg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z

.field public final A04:[J


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0

    .line 39660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39661
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:I

    .line 39662
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    .line 39663
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Hg;->A04:[J

    .line 39664
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hg;->A02:I

    .line 39665
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:Z

    .line 39666
    return-void
.end method
