.class public final Lcom/facebook/ads/redexgen/X/Iw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsdsData"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 40988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40989
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Iw;->A02:Ljava/lang/String;

    .line 40990
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Iw;->A03:[B

    .line 40991
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Iw;->A00:J

    .line 40992
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Iw;->A01:J

    .line 40993
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Iw;)J
    .locals 1

    .line 40994
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iw;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Iw;)J
    .locals 1

    .line 40995
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iw;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Iw;)Ljava/lang/String;
    .locals 0

    .line 40996
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Iw;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Iw;)[B
    .locals 0

    .line 40997
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Iw;->A03:[B

    return-object p0
.end method
