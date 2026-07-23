.class public final Lcom/facebook/ads/redexgen/X/k1;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/81;->A0C(ILcom/facebook/ads/redexgen/X/Tx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/81;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/k1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/81;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89369
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k1;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/k1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/k1;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4et
        0x4dt
        0x42t
        0x42t
        0x49t
        0x5et
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 89370
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k1;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A05(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A05(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 89372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4Q(Z)V

    .line 89373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 89374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89375
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v3

    .line 89376
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/k1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 89377
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89378
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89379
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89380
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A05(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89381
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 89382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v2

    .line 89383
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A04(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 89384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 89386
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 89387
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89388
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89389
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    .line 89390
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 89391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 89392
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 89393
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    goto :goto_1

    .line 89394
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
