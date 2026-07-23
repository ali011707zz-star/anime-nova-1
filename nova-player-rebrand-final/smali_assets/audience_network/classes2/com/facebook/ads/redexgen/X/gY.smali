.class public final Lcom/facebook/ads/redexgen/X/gY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/gX;
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 83356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83357
    iput p1, p0, Lcom/facebook/ads/redexgen/X/gY;->A00:I

    .line 83358
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/gW;)V
    .locals 0

    .line 83359
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gY;-><init>(I)V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/gX;
    .locals 2

    .line 83360
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/gX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/gX;-><init>(Lcom/facebook/ads/redexgen/X/gW;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 83361
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gY;->A00:I

    return v0
.end method
