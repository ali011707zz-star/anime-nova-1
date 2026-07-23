.class public final Lcom/facebook/ads/redexgen/X/Hs;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IZZLcom/facebook/ads/redexgen/X/dm;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39990
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 39991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0H(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/cd;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0F(ILandroid/view/View;)V

    .line 39992
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39993
    return-void
.end method
