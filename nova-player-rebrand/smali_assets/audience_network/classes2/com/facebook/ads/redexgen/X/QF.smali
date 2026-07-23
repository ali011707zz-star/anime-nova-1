.class public final Lcom/facebook/ads/redexgen/X/QF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Xq;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xr;II)V
    .locals 1

    .line 59907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59908
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QF;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    .line 59909
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xq;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Xq;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    .line 59910
    return-void
.end method


# virtual methods
.method public final AH8(Ljava/lang/String;)V
    .locals 2

    .line 59911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Xq;->A04(Ljava/lang/String;)V

    .line 59912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A09(Lcom/facebook/ads/redexgen/X/Xq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QF;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xr;->AH8(Ljava/lang/String;)V

    .line 59914
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 59915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A03()V

    .line 59916
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A09(Lcom/facebook/ads/redexgen/X/Xq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QF;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xr;->AH8(Ljava/lang/String;)V

    .line 59919
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QF;->A00:Lcom/facebook/ads/redexgen/X/Xq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xq;->A03()V

    goto :goto_0

    .line 59920
    :cond_1
    return-void
.end method
