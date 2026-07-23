.class public final Lcom/facebook/ads/redexgen/X/gX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/gY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83352
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gX;->A00:I

    .line 83353
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/gW;)V
    .locals 0

    .line 83354
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gX;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/gY;
    .locals 3

    .line 83355
    iget v2, p0, Lcom/facebook/ads/redexgen/X/gX;->A00:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/gY;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/gY;-><init>(ILcom/facebook/ads/redexgen/X/gW;)V

    return-object v0
.end method
