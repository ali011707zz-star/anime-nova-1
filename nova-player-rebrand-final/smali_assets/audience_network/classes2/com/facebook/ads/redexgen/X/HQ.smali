.class public final Lcom/facebook/ads/redexgen/X/HQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/HS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 39010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39011
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:I

    .line 39012
    iput p2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 39013
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:Z

    .line 39014
    return-void
.end method
