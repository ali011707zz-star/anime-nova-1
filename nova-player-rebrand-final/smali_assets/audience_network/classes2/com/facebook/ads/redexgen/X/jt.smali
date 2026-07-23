.class public final Lcom/facebook/ads/redexgen/X/jt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7w;->A0F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7w;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89019
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 3

    .line 89020
    if-eqz p1, :cond_0

    .line 89021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    .line 89023
    :goto_0
    return-void

    .line 89024
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:Lcom/facebook/ads/redexgen/X/7w;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final ADL()V
    .locals 1

    .line 89025
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A00(Z)V

    .line 89026
    return-void
.end method

.method public final ADT()V
    .locals 1

    .line 89027
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A00(Z)V

    .line 89028
    return-void
.end method
