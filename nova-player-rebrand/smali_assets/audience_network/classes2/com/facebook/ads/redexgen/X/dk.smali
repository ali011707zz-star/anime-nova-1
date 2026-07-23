.class public final Lcom/facebook/ads/redexgen/X/dk;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:I

.field public static A07:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Na;

.field public final A03:Ljava/lang/String;

.field public final A04:Z

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2729
    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/dk;->A06:I

    .line 2730
    const/4 v0, 0x1

    sput v0, Lcom/facebook/ads/redexgen/X/dk;->A07:I

    return-void
.end method

.method public constructor <init>(ZILcom/facebook/ads/redexgen/X/Na;ZILjava/lang/String;)V
    .locals 0

    .line 80344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80345
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/dk;->A05:Z

    .line 80346
    iput p2, p0, Lcom/facebook/ads/redexgen/X/dk;->A00:I

    .line 80347
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dk;->A02:Lcom/facebook/ads/redexgen/X/Na;

    .line 80348
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/dk;->A04:Z

    .line 80349
    iput p5, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:I

    .line 80350
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/dk;->A03:Ljava/lang/String;

    .line 80351
    return-void
.end method
