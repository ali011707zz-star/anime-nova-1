.class public final Lcom/facebook/ads/redexgen/X/N6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/N1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/N1;
    .locals 2

    .line 52786
    sget-object v0, Lcom/facebook/ads/redexgen/X/N6;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eqz v0, :cond_0

    .line 52787
    sget-object v0, Lcom/facebook/ads/redexgen/X/N6;->A00:Lcom/facebook/ads/redexgen/X/N1;

    return-object v0

    .line 52788
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/N5;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 52789
    const/4 v0, 0x0

    return-object v0

    .line 52790
    :pswitch_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7w;-><init>()V

    return-object v0

    .line 52791
    :pswitch_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/7z;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7z;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    return-object v0

    .line 52792
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ju;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    return-object v0

    .line 52793
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/jz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jz;-><init>()V

    return-object v0

    .line 52794
    :pswitch_4
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52795
    new-instance v0, Lcom/facebook/ads/redexgen/X/80;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/80;-><init>()V

    return-object v0

    .line 52796
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/81;-><init>()V

    return-object v0

    .line 52797
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/81;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
