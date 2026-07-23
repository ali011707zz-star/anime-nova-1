.class public final Lcom/facebook/ads/redexgen/X/Vr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VZ;->ADT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGh()V
    .locals 1

    .line 69788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:Lcom/facebook/ads/redexgen/X/VZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VZ;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VP;->ACq()V

    .line 69789
    return-void
.end method
