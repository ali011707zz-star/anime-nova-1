.class public final Lcom/facebook/ads/redexgen/X/Fv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4U;->A0K(Lcom/facebook/ads/redexgen/X/Fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4U;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AKa(I)V
    .locals 1

    .line 36440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0B(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0B(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bj;->A00(I)V

    .line 36442
    :cond_0
    return-void
.end method
