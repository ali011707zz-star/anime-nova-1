.class public final Lcom/facebook/ads/redexgen/X/CK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/hc;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/common/clock/IntervalClock;",
        "Lcom/facebook/common/time/MonotonicClock;",
        "<init>",
        "()V",
        "nowNanos",
        "",
        "now",
        "fbandroid.java.com.facebook.common.clock.clock"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/CK;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CK;->A00:Lcom/facebook/ads/redexgen/X/CK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACf()J
    .locals 2

    .line 32018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
