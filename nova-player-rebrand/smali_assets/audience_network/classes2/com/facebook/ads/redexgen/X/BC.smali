.class public final Lcom/facebook/ads/redexgen/X/BC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamInfo"
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/BC;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/52;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/52<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 653
    new-instance v0, Lcom/facebook/ads/redexgen/X/BC;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/BC;-><init>(JJJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BC;->A04:Lcom/facebook/ads/redexgen/X/BC;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    .line 30320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30321
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BC;->A00:J

    .line 30322
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/BC;->A01:J

    .line 30323
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/BC;->A02:J

    .line 30324
    new-instance v0, Lcom/facebook/ads/redexgen/X/52;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/52;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A03:Lcom/facebook/ads/redexgen/X/52;

    .line 30325
    return-void
.end method
