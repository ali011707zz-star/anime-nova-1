.class public final Lcom/facebook/ads/redexgen/X/CF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/hc;


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/CF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 675
    new-instance v0, Lcom/facebook/ads/redexgen/X/CF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CF;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CF;->A00:Lcom/facebook/ads/redexgen/X/CF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/CF;
    .locals 1

    .line 31992
    sget-object v0, Lcom/facebook/ads/redexgen/X/CF;->A00:Lcom/facebook/ads/redexgen/X/CF;

    return-object v0
.end method


# virtual methods
.method public final ACf()J
    .locals 2

    .line 31993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
