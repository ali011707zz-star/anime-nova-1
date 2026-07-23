.class public final Lcom/facebook/ads/redexgen/X/Fe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4T;->A0K(Lcom/facebook/ads/redexgen/X/Fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4T;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fe;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AKa(I)V
    .locals 1

    .line 35966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fe;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0C(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fe;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0C(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bj;->A00(I)V

    .line 35968
    :cond_0
    return-void
.end method
