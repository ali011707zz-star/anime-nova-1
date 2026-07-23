.class public abstract Lcom/facebook/ads/redexgen/X/rL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/rM;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/rM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 106270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rL;->A00:Lcom/facebook/ads/redexgen/X/rM;

    if-eqz v0, :cond_0

    .line 106271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rL;->A00:Lcom/facebook/ads/redexgen/X/rM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rM;->onStart()V

    .line 106272
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 106273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rL;->A00:Lcom/facebook/ads/redexgen/X/rM;

    if-eqz v0, :cond_0

    .line 106274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rL;->A00:Lcom/facebook/ads/redexgen/X/rM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rM;->onStop()V

    .line 106275
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/rM;)V
    .locals 0

    .line 106276
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rL;->A00:Lcom/facebook/ads/redexgen/X/rM;

    .line 106277
    return-void
.end method
