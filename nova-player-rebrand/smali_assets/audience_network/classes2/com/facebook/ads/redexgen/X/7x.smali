.class public final Lcom/facebook/ads/redexgen/X/7x;
.super Lcom/facebook/ads/redexgen/X/j4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7w;->A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7w;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/jT;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/7l;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7w;ZLcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/jT;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 21890
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/7l;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/jT;

    iput p6, p0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/j4;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 21891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21892
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 21893
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7w;->A0D:Lcom/facebook/ads/redexgen/X/Sx;

    .line 21894
    if-eqz p1, :cond_0

    .line 21895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A01()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A03:Lcom/facebook/ads/redexgen/X/7l;

    .line 21897
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A28()Ljava/lang/String;

    move-result-object v0

    .line 21898
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->AJE(Ljava/lang/String;Ljava/lang/String;)V

    .line 21899
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A25()I

    move-result v0

    const/4 v4, 0x1

    if-ne v1, v0, :cond_1

    .line 21900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    .line 21902
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7x;->A01:Lcom/facebook/ads/redexgen/X/7w;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7x;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7x;->A02:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    add-int/2addr v0, v4

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A0B(Lcom/facebook/ads/redexgen/X/7w;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V

    .line 21903
    return-void
.end method
