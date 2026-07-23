.class public final Lcom/facebook/ads/redexgen/X/In;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ij;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/In;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ij;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/In;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/In;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x20t
        -0x27t
        -0x1ft
        -0x1at
        -0x23t
        -0x24t
        -0x29t
        -0x27t
        -0x24t
        -0x29t
        -0x1ft
        -0x1at
        -0x24t
        -0x23t
        -0x10t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 5

    .line 40457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 40459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40460
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    .line 40461
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 40462
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40463
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 40464
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v4

    .line 40465
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A17(Lcom/facebook/ads/redexgen/X/Ij;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 40467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/ZU;

    .line 40468
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 40469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40470
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 40471
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 40472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 40473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1B(Lcom/facebook/ads/redexgen/X/Ij;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40475
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 40477
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40478
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1C(Lcom/facebook/ads/redexgen/X/Ij;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 40480
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
