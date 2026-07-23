.class public final Lcom/facebook/ads/redexgen/X/jD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nu;->A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jd;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Nt;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Nu;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final synthetic A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Nt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88191
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jD;->A02:Lcom/facebook/ads/redexgen/X/Nu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jD;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/jD;->A04:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jD;->A00:Lcom/facebook/ads/redexgen/X/jd;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/jD;->A01:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 5

    .line 88192
    if-eqz p1, :cond_1

    .line 88193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jD;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jD;->A04:Z

    if-eqz v0, :cond_0

    .line 88194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jD;->A02:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05(Lcom/facebook/ads/redexgen/X/Nu;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jD;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jD;->A00:Lcom/facebook/ads/redexgen/X/jd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jE;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/jE;-><init>(Lcom/facebook/ads/redexgen/X/jD;)V

    .line 88195
    const/4 v0, 0x1

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/dD;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/dA;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    .line 88196
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88197
    :goto_0
    return-void

    .line 88198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jD;->A01:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->ACp()V

    goto :goto_0

    .line 88199
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jD;->A01:Lcom/facebook/ads/redexgen/X/Nt;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Nt;->ACo(Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final ADL()V
    .locals 1

    .line 88200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jD;->A00(Z)V

    .line 88201
    return-void
.end method

.method public final ADT()V
    .locals 1

    .line 88202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jD;->A00(Z)V

    .line 88203
    return-void
.end method
