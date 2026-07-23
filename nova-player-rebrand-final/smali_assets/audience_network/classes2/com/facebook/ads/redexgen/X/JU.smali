.class public final Lcom/facebook/ads/redexgen/X/JU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/66;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/ZU;I)V
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

    .line 43022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JU;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFU()V
    .locals 2

    .line 43023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JU;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A01(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Re;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JU;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A01(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Re;

    move-result-object v1

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 43025
    :cond_0
    return-void
.end method
