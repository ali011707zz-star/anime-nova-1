.class public final Lcom/facebook/ads/redexgen/X/pL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/45;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5P(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/pJ;
    .locals 2

    .line 104123
    nop

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/pJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pJ;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final A6J()J
    .locals 2

    .line 104124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AKe()J
    .locals 2

    .line 104125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
