.class public final Lcom/facebook/ads/redexgen/X/KH;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46647
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 46648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0s(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/cd;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0F(ILandroid/view/View;)V

    .line 46650
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46651
    return-void
.end method
