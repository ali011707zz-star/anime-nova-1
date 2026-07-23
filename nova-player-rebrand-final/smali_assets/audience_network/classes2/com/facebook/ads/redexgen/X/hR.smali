.class public final Lcom/facebook/ads/redexgen/X/hR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rj;->A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84522
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/Rj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADv()V
    .locals 2

    .line 84523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/Rj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rj;->A04(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/Re;

    move-result-object v1

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 84524
    return-void
.end method
