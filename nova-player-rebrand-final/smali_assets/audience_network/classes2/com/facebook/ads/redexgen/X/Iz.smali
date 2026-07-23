.class public final Lcom/facebook/ads/redexgen/X/Iz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 41002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41003
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:I

    .line 41004
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    .line 41005
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 41006
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Iz;)I
    .locals 0

    .line 41007
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Iz;)I
    .locals 0

    .line 41008
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Iz;)J
    .locals 1

    .line 41009
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    return-wide v0
.end method
