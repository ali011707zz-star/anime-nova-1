.class public final Lcom/facebook/ads/redexgen/X/HI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/HJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekTable"
.end annotation


# instance fields
.field public final A00:[J

.field public final A01:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 38696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38697
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HI;->A01:[J

    .line 38698
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HI;->A00:[J

    .line 38699
    return-void
.end method
