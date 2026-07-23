.class public final Lcom/facebook/ads/redexgen/X/AW;
.super Lcom/facebook/ads/redexgen/X/qC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/AW;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 634
    new-instance v0, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2v;-><init>()V

    .line 635
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2v;->A0B()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AW;->A00:Lcom/facebook/ads/redexgen/X/AW;

    .line 636
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2v;)V
    .locals 1

    .line 29273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/qC;-><init>(Lcom/facebook/ads/redexgen/X/2v;Lcom/facebook/ads/redexgen/X/2r;)V

    .line 29274
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2v;Lcom/facebook/ads/redexgen/X/2r;)V
    .locals 0

    .line 29275
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/2v;)V

    return-void
.end method
