.class public final Lcom/facebook/ads/redexgen/X/Op;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6g;->A00()Lcom/facebook/ads/redexgen/X/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 56146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A02(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0X()V

    .line 56147
    return-void
.end method

.method public final A03()V
    .locals 3

    .line 56148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A09(Lcom/facebook/ads/redexgen/X/6g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A02(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x1d

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 56150
    :cond_0
    return-void
.end method
