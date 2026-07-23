.class public final Lcom/facebook/ads/redexgen/X/jy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/80;->AAt(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/N9;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/80;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/76;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/76;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Lcom/facebook/ads/redexgen/X/80;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEA()V
    .locals 2

    .line 89237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Lcom/facebook/ads/redexgen/X/80;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/80;->A02(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/jk;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4Q(Z)V

    .line 89238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Lcom/facebook/ads/redexgen/X/80;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/80;->A02(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/jk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Lcom/facebook/ads/redexgen/X/80;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/80;->A02(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N3;->A03()V

    .line 89240
    :cond_0
    return-void

    .line 89241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
