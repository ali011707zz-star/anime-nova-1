.class public final Lcom/facebook/ads/redexgen/X/K4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0I(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44955
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACt()V
    .locals 2

    .line 44956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2H(Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 44957
    return-void
.end method

.method public final AEm()V
    .locals 2

    .line 44958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A18(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 44959
    return-void
.end method

.method public final AEn()V
    .locals 2

    .line 44960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A18(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 44961
    return-void
.end method
