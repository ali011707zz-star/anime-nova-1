.class public final Lcom/facebook/ads/redexgen/X/JI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataReference"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 42725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42726
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JI;->A00:I

    .line 42727
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/JI;->A02:J

    .line 42728
    iput p4, p0, Lcom/facebook/ads/redexgen/X/JI;->A01:I

    .line 42729
    return-void
.end method
