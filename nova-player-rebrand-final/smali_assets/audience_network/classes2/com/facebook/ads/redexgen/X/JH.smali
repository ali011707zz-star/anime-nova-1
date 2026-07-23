.class public abstract Lcom/facebook/ads/redexgen/X/JH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JG;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 823
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wBzTr9isyWuzk0Was82fzP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sjHXZ8xDB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rmj8ZpQPq6N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "k0JnkexrU5JvppKLiAvWnmQe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wOTrIZh22Rcriy8Kptm38zvp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MO9vm10BV89BFpJ5cx5aSl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "G2cEiJ7mV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JH;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JH;->A03()V

    return-void
.end method

.method public static A00([B)Lcom/facebook/ads/redexgen/X/JG;
    .locals 9

    .line 42697
    new-instance v7, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    .line 42698
    .local v0, "atomData":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    const/16 v0, 0x20

    const/4 p0, 0x0

    if-ge v1, v0, :cond_0

    .line 42699
    return-object p0

    .line 42700
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42701
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 42702
    .local v2, "atomSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-eq v1, v0, :cond_1

    .line 42703
    return-object p0

    .line 42704
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 42705
    .local v4, "atomType":I
    const v0, 0x70737368    # 3.013775E29f

    if-eq v1, v0, :cond_2

    .line 42706
    return-object p0

    .line 42707
    :cond_2
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v6

    .line 42708
    .local v5, "atomVersion":I
    const/4 v2, 0x1

    if-le v6, v2, :cond_3

    .line 42709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x1a

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 42710
    return-object p0

    .line 42711
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0P()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0P()J

    move-result-wide v0

    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 42712
    .local v7, "uuid":Ljava/util/UUID;
    if-ne v6, v2, :cond_4

    .line 42713
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    .line 42714
    .local v6, "keyIdCount":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42715
    .end local v6    # "keyIdCount":I
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/JH;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42716
    .local v6, "dataSize":I
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/JH;->A01:[Ljava/lang/String;

    const-string v1, "Op4nBnIC0DPoqkcvuw04qL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-eq v4, v0, :cond_6

    .line 42717
    return-object p0

    .line 42718
    :cond_6
    new-array v1, v4, [B

    .line 42719
    .local v3, "data":[B
    invoke-virtual {v7, v1, v8, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42720
    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, v3, v6, v1}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Ljava/util/UUID;I[B)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JH;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02([B)Ljava/util/UUID;
    .locals 0

    .line 42721
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JH;->A00([B)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object p0

    .line 42722
    .local p0, "parsedAtom":Lcom/facebook/ads/redexgen/X/JG;
    if-nez p0, :cond_0

    .line 42723
    const/4 p0, 0x0

    return-object p0

    .line 42724
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/redexgen/X/JG;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x26

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/JH;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JH;->A01:[Ljava/lang/String;

    const-string v1, "tjOAGVDnT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ur6F1gHbb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/JH;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x21t
        -0x21t
        -0x2ct
        -0x53t
        -0x20t
        -0x25t
        -0x27t
        -0x3ft
        -0x20t
        -0x2bt
        -0x28t
        -0x14t
        0x5t
        0xat
        0xct
        0x7t
        0x7t
        0x6t
        0x9t
        0xbt
        -0x4t
        -0x5t
        -0x49t
        0x7t
        0xat
        0xat
        -0x1t
        -0x49t
        0xdt
        -0x4t
        0x9t
        0xat
        0x0t
        0x6t
        0x5t
        -0x2ft
        -0x49t
    .end array-data
.end method
