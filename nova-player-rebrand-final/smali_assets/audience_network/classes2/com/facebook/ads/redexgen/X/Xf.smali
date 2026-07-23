.class public final Lcom/facebook/ads/redexgen/X/Xf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/rS<",
        "Lcom/facebook/ads/redexgen/X/Uw;",
        "Lcom/facebook/ads/redexgen/X/V1;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XM;)V
    .locals 0

    .line 72922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xf;->A00:Lcom/facebook/ads/redexgen/X/XM;

    .line 72924
    return-void
.end method


# virtual methods
.method public final A6R(Lcom/facebook/ads/redexgen/X/rN;Lcom/facebook/ads/redexgen/X/rD;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "Lcom/facebook/ads/redexgen/X/Uw;",
            "Lcom/facebook/ads/redexgen/X/V1;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/rD;",
            ")V"
        }
    .end annotation

    .line 72925
    .local p1, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/Uu;->A00:[I

    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/rD;->A9U(Lcom/facebook/ads/redexgen/X/rN;)Lcom/facebook/ads/redexgen/X/rE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/rE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 72926
    :goto_0
    return-void

    .line 72927
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xf;->A00:Lcom/facebook/ads/redexgen/X/XM;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/XM;->A02(Lcom/facebook/ads/redexgen/X/rN;Lcom/facebook/ads/redexgen/X/rD;)V

    .line 72928
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
