.class public final Lcom/facebook/ads/redexgen/X/XR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportResult"
.end annotation


# instance fields
.field public final A00:Z

.field public final A01:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 72609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72610
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    .line 72611
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 72612
    return-void
.end method
