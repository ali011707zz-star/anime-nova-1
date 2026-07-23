.class public final Lcom/facebook/ads/redexgen/X/h1;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/h0;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/h0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h1;->A00:Lcom/facebook/ads/redexgen/X/h0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 83671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h1;->A00:Lcom/facebook/ads/redexgen/X/h0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h0;->A00:Lcom/facebook/ads/redexgen/X/SN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SN;->A01(Lcom/facebook/ads/redexgen/X/SN;)Lcom/facebook/ads/redexgen/X/SM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SM;->ACy()V

    .line 83672
    return-void
.end method
