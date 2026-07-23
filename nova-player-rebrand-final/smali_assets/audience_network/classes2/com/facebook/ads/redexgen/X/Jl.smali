.class public final Lcom/facebook/ads/redexgen/X/Jl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 44011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44012
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jl;->A01:I

    .line 44013
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Jl;->A02:Z

    .line 44014
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Jl;->A00:I

    .line 44015
    return-void
.end method
