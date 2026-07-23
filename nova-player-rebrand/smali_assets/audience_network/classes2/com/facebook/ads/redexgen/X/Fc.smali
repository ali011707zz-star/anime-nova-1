.class public final Lcom/facebook/ads/redexgen/X/Fc;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FY;->A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VA;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Y2;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/e5;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/FY;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FY;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Y2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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

    .line 35944
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fc;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:Lcom/facebook/ads/redexgen/X/e5;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/VA;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 35945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A03(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A04:Ljava/lang/String;

    .line 35946
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    .line 35947
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A00(Lcom/facebook/ads/redexgen/X/FY;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:Lcom/facebook/ads/redexgen/X/e5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35948
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fc;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    .line 35949
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A04(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    .line 35950
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 35951
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 35952
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 35953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    .line 35954
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A02(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 35955
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Lcom/facebook/ads/redexgen/X/FY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A00(Lcom/facebook/ads/redexgen/X/FY;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:Lcom/facebook/ads/redexgen/X/e5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 35957
    :cond_0
    return-void
.end method
