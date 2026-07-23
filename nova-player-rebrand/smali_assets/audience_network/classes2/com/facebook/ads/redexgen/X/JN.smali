.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/66;->AAm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/66;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42900
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 42901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A06(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 42902
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    .line 42903
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 42904
    return-void
.end method
