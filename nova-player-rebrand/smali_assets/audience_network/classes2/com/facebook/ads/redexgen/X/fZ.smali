.class public final Lcom/facebook/ads/redexgen/X/fZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/fa;

.field public final A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fa;JZ)V
    .locals 0

    .line 82457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fZ;->A01:Lcom/facebook/ads/redexgen/X/fa;

    .line 82459
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/fZ;->A00:J

    .line 82460
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/fZ;->A02:Z

    .line 82461
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/fa;JZLcom/facebook/ads/redexgen/X/fY;)V
    .locals 0

    .line 82462
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/fZ;-><init>(Lcom/facebook/ads/redexgen/X/fa;JZ)V

    return-void
.end method
