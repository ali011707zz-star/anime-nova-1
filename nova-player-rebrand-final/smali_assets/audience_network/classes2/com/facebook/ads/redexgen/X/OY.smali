.class public abstract Lcom/facebook/ads/redexgen/X/OY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OY;->A03()V

    return-void
.end method

.method public static A00(Landroid/os/Bundle;Lcom/facebook/ads/RewardData;)Landroid/os/Bundle;
    .locals 3

    .line 55866
    const/16 v2, 0x3e

    const/16 v1, 0x19

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/RewardData;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55867
    const/16 v2, 0x1f

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55868
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55869
    return-object p0
.end method

.method public static A01(Landroid/os/Bundle;)Lcom/facebook/ads/RewardData;
    .locals 6

    .line 55870
    const/16 v2, 0x3e

    const/16 v1, 0x19

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55871
    const/4 v0, 0x0

    return-object v0

    .line 55872
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55873
    .local v0, "id":Ljava/lang/String;
    const/16 v2, 0x1f

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55874
    .local v1, "currency":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 55875
    .local v2, "quantity":I
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_2

    .line 55876
    :goto_0
    if-eqz v4, :cond_1

    move-object v1, v4

    .line 55877
    :cond_1
    new-instance v0, Lcom/facebook/ads/RewardData;

    invoke-direct {v0, v5, v1, v3}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 55878
    :cond_2
    move-object v5, v1

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OY;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x76t
        -0x71t
        -0x6bt
        -0x60t
        -0x6dt
        -0x69t
        -0x60t
        -0x6dt
        -0x7at
        -0x68t
        -0x7et
        -0x6dt
        -0x7bt
        -0x60t
        -0x7bt
        -0x7et
        -0x6bt
        -0x7et
        -0x60t
        -0x6et
        -0x6at
        -0x7et
        -0x71t
        -0x6bt
        -0x76t
        -0x6bt
        -0x66t
        -0x60t
        -0x74t
        -0x7at
        -0x66t
        -0x5ct
        -0x5bt
        -0x5dt
        -0x50t
        -0x5dt
        -0x59t
        -0x50t
        -0x5dt
        -0x6at
        -0x58t
        -0x6et
        -0x5dt
        -0x6bt
        -0x50t
        -0x6bt
        -0x6et
        -0x5bt
        -0x6et
        -0x50t
        -0x6ct
        -0x5at
        -0x5dt
        -0x5dt
        -0x6at
        -0x61t
        -0x6ct
        -0x56t
        -0x50t
        -0x64t
        -0x6at
        -0x56t
        -0x6at
        -0x69t
        -0x6bt
        -0x5et
        -0x6bt
        -0x67t
        -0x5et
        -0x6bt
        -0x78t
        -0x66t
        -0x7ct
        -0x6bt
        -0x79t
        -0x5et
        -0x79t
        -0x7ct
        -0x69t
        -0x7ct
        -0x5et
        -0x74t
        -0x79t
        -0x5et
        -0x72t
        -0x78t
        -0x64t
    .end array-data
.end method
