.class public final Lcom/facebook/ads/redexgen/X/js;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/jr;->ACx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jr;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89015
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/js;->A00:Lcom/facebook/ads/redexgen/X/jr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGh()V
    .locals 2

    .line 89016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:Lcom/facebook/ads/redexgen/X/jr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:Lcom/facebook/ads/redexgen/X/jr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:Lcom/facebook/ads/redexgen/X/jr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    .line 89018
    return-void
.end method
