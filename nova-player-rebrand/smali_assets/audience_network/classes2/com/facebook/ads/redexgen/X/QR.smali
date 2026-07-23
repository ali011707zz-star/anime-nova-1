.class public final Lcom/facebook/ads/redexgen/X/QR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7P;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7P;

.field public final synthetic A01:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7P;Ljava/util/ArrayList;)V
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

    .line 60163
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QR;->A00:Lcom/facebook/ads/redexgen/X/7P;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QR;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 60164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QR;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qa;

    .line 60165
    .local v1, "moveInfo":Lcom/facebook/ads/redexgen/X/Qa;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QR;->A00:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Qa;->A04:Lcom/facebook/ads/redexgen/X/RK;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Qa;->A00:I

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Qa;->A01:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Qa;->A02:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Qa;->A03:I

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/7P;->A0e(Lcom/facebook/ads/redexgen/X/RK;IIII)V

    .line 60166
    .end local v1    # "moveInfo":Lcom/facebook/ads/redexgen/X/Qa;
    goto :goto_0

    .line 60167
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QR;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QR;->A00:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7P;->A05:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QR;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60169
    return-void
.end method
