.class public abstract Lcom/facebook/ads/redexgen/X/KO;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 897
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KgPme38LEDVaM0D12Uwlfvq6nYMDVVkT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a5g98XiYqimDBheiX8ybcf7PetcT8W7U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dRcctykKkiCtpnpKZqpaePhb1Qg1PkeN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6JMbAfNKE0NkFS9oLsx1Zln6Fen7GSJu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0ohFdoD3UqF2FgjtvUgt7lzB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HqtC3No697vYpZ7G6OCOOOlSljo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ih90XUpH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6OUjWPhHhDm3iVNi78UT7lOYQX351vXz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KO;->A05()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/KM;"
        }
    .end annotation

    .line 46919
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    :goto_0
    if-eqz p0, :cond_1

    .line 46920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KM;->A0H()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/KO;->A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v0

    .line 46921
    .local v0, "style":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KT;->A09()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 46922
    return-object p0

    .line 46923
    :cond_0
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/KM;

    .line 46924
    .end local v0    # "style":Lcom/facebook/ads/redexgen/X/KT;
    goto :goto_0

    .line 46925
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KM;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/KM;"
        }
    .end annotation

    .line 46926
    .local p0, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 46927
    .local v0, "childNodesStack":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlNode;>;"
    invoke-interface {v3, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 46928
    :cond_0
    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 46929
    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/KM;

    .line 46930
    .local v1, "childNode":Lcom/facebook/ads/redexgen/X/KM;
    iget-object p0, v4, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/KM;->A0H()[Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "prCmMBcG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p0, v5, p1}, Lcom/facebook/ads/redexgen/X/KO;->A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v0

    .line 46931
    .local v2, "style":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KT;->A09()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 46932
    return-object v4

    .line 46933
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/KM;->A0C()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 46934
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 46935
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 46936
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KT;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/KT;"
        }
    .end annotation

    .line 46937
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_3

    .line 46938
    if-nez p1, :cond_0

    .line 46939
    const/4 v0, 0x0

    return-object v0

    .line 46940
    :cond_0
    array-length v0, p1

    if-ne v0, v5, :cond_1

    .line 46941
    aget-object v0, p1, v4

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    return-object v0

    .line 46942
    :cond_1
    array-length v0, p1

    if-le v0, v5, :cond_9

    .line 46943
    new-instance v2, Lcom/facebook/ads/redexgen/X/KT;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/KT;-><init>()V

    .line 46944
    .local v1, "chainedStyle":Lcom/facebook/ads/redexgen/X/KT;
    array-length v1, p1

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v0, p1, v4

    .line 46945
    .local v3, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KT;->A0O(Lcom/facebook/ads/redexgen/X/KT;)Lcom/facebook/ads/redexgen/X/KT;

    .line 46946
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46947
    :cond_2
    return-object v2

    .line 46948
    .end local v1    # "chainedStyle":Lcom/facebook/ads/redexgen/X/KT;
    :cond_3
    if-eqz p1, :cond_5

    array-length v0, p1

    if-ne v0, v5, :cond_5

    .line 46949
    aget-object v3, p1, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "FXnyxRIFGSjHG1Q4pZ8iBycDDGv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KT;->A0O(Lcom/facebook/ads/redexgen/X/KT;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v0

    return-object v0

    .line 46950
    :cond_5
    if-eqz p1, :cond_9

    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "6UN5UNrVzg6BSs5KXnnHYvLLh5S"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-le v3, v5, :cond_9

    .line 46951
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_7

    aget-object v0, p1, v4

    .line 46952
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/KT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "LBM9N0gh5w8sQTAl6eCIViVepwnbqV6U"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/KT;->A0O(Lcom/facebook/ads/redexgen/X/KT;)Lcom/facebook/ads/redexgen/X/KT;

    .line 46953
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 46954
    :cond_7
    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46955
    :cond_9
    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "lLmUOaES"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 46956
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46957
    .local v0, "out":Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46958
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46959
    const/16 v2, 0x4d

    const/16 v1, 0xb

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46960
    return-object v0
.end method

.method public static A05()V
    .locals 4

    const/16 v3, 0x58

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "BbbzftLMD2m3WHwPv0bAANWrbX2mWIyE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "7lYjBODxVBmaGubq4OQdXtxLEf46a0ab"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KO;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x75t
        -0x4bt
        -0x4et
        -0x67t
        -0x28t
        -0x1et
        -0x3et
        -0x28t
        -0x1et
        0x40t
        0x58t
        0x56t
        0x5dt
        0x5dt
        0x56t
        0x5bt
        0x54t
        0xdt
        0x5ft
        0x62t
        0x4ft
        0x66t
        0x41t
        0x52t
        0x65t
        0x61t
        0xdt
        0x5bt
        0x5ct
        0x51t
        0x52t
        0xdt
        0x64t
        0x56t
        0x61t
        0x55t
        0x5ct
        0x62t
        0x61t
        0xdt
        0x52t
        0x65t
        0x4et
        0x50t
        0x61t
        0x59t
        0x66t
        0xdt
        0x5ct
        0x5bt
        0x52t
        0xdt
        0x61t
        0x52t
        0x65t
        0x61t
        0xdt
        0x50t
        0x55t
        0x56t
        0x59t
        0x51t
        0x1bt
        -0xat
        0x16t
        0xft
        0xet
        -0xct
        0x7t
        0x10t
        0x6t
        0x7t
        0x14t
        -0x9t
        0x16t
        0xbt
        0xet
        0x49t
        0xet
        -0x9t
        0x4at
        0x66t
        0x1et
        0x30t
        -0x6t
        -0x5t
        0x4bt
        0x19t
    .end array-data
.end method

.method public static A06(Landroid/text/Spannable;IILcom/facebook/ads/redexgen/X/KT;Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Lcom/facebook/ads/redexgen/X/KT;",
            "Lcom/facebook/ads/redexgen/X/KM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;I)V"
        }
    .end annotation

    .line 46961
    .local p6, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0A()I

    move-result v0

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 46962
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0A()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 46963
    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 46964
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46965
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 46966
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46967
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 46968
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46969
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A06()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 46970
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46971
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0Z()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_4

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "DOLHbyxdL1TIGmJ49PhqpcsDL7xIVQFO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    .line 46972
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A05()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 46973
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46974
    :cond_5
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 46975
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0W()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 46976
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46977
    :cond_6
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0D()Lcom/facebook/ads/redexgen/X/KI;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    .line 46978
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0D()Lcom/facebook/ads/redexgen/X/KI;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/KI;

    .line 46979
    .local v0, "textEmphasis":Lcom/facebook/ads/redexgen/X/KI;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A01:I

    if-ne v0, v4, :cond_7

    .line 46980
    const/4 v7, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    goto :goto_0

    .line 46981
    .end local v4
    .end local v5
    :cond_7
    iget v7, v6, Lcom/facebook/ads/redexgen/X/KI;->A01:I

    .line 46982
    .restart local v4
    iget v2, v6, Lcom/facebook/ads/redexgen/X/KI;->A00:I

    goto :goto_2

    .line 46983
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/KO;->A01:[Ljava/lang/String;

    const-string v1, "2MSbzH5cEcM3iPzp1Bk7CXgbIPr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p6, v7, :cond_9

    if-ne p6, v5, :cond_12

    .line 46984
    :cond_9
    const/4 v7, 0x3

    .line 46985
    .local v4, "markShape":I
    :goto_1
    const/4 v2, 0x1

    .line 46986
    .local v5, "markFill":I
    .restart local v5    # "markFill":I
    :goto_2
    iget v1, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:I

    const/4 v0, -0x2

    if-ne v1, v0, :cond_11

    .line 46987
    const/4 v1, 0x1

    .line 46988
    .local v6, "position":I
    .restart local v6    # "position":I
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/pO;

    invoke-direct {v0, v7, v2, v1}, Lcom/facebook/ads/redexgen/X/pO;-><init>(III)V

    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46989
    .end local v0    # "textEmphasis":Lcom/facebook/ads/redexgen/X/KI;
    .end local v4    # "markShape":I
    .end local v5    # "markFill":I
    .end local v6    # "position":I
    :cond_a
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A09()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46990
    .end local v0
    .end local v4
    :goto_4
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46991
    new-instance v0, Lcom/facebook/ads/redexgen/X/pQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pQ;-><init>()V

    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46992
    :cond_b
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A07()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 46993
    :goto_5
    return-void

    .line 46994
    :pswitch_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A03()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 46995
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46996
    goto :goto_5

    .line 46997
    :pswitch_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A03()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 46998
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 46999
    goto :goto_5

    .line 47000
    :pswitch_2
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/KT;->A03()F

    move-result v0

    float-to-int v1, v0

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v1, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 47001
    invoke-static {p0, v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47002
    goto :goto_5

    .line 47003
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/KF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KF;-><init>()V

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 47004
    goto :goto_4

    .line 47005
    :pswitch_4
    invoke-static {p4, p5}, Lcom/facebook/ads/redexgen/X/KO;->A00(Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v7

    .line 47006
    .local v0, "containerNode":Lcom/facebook/ads/redexgen/X/KM;
    if-nez v7, :cond_c

    goto :goto_4

    .line 47007
    :cond_c
    invoke-static {v7, p5}, Lcom/facebook/ads/redexgen/X/KO;->A01(Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v2

    .line 47008
    .local v4, "textNode":Lcom/facebook/ads/redexgen/X/KM;
    if-nez v2, :cond_d

    goto :goto_4

    .line 47009
    :cond_d
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KM;->A0C()I

    move-result v0

    if-ne v0, v5, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KM;->A08:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 47010
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KM;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 47011
    .local v5, "rubyText":Ljava/lang/String;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KM;->A0H()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p5}, Lcom/facebook/ads/redexgen/X/KO;->A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v0

    .line 47012
    .local v6, "textStyle":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KT;->A08()I

    move-result v1

    .line 47013
    .local v7, "rubyPosition":I
    :goto_6
    if-ne v1, v4, :cond_e

    .line 47014
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    .line 47015
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/KM;->A0H()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p5}, Lcom/facebook/ads/redexgen/X/KO;->A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v0

    .line 47016
    .local v2, "containerStyle":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KT;->A08()I

    move-result v1

    .line 47017
    .end local v2    # "containerStyle":Lcom/facebook/ads/redexgen/X/KT;
    :cond_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/pP;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/pP;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 47018
    goto/16 :goto_4

    .line 47019
    :cond_f
    const/4 v1, -0x1

    goto :goto_6

    .line 47020
    .end local v5    # "rubyText":Ljava/lang/String;
    .end local v6    # "textStyle":Lcom/facebook/ads/redexgen/X/KT;
    .end local v7    # "rubyPosition":I
    :cond_10
    const/16 v2, 0x3f

    const/16 v1, 0xe

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x9

    const/16 v1, 0x36

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 47021
    goto/16 :goto_4

    .line 47022
    .end local v6
    :cond_11
    iget v1, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:I

    goto/16 :goto_3

    .line 47023
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A07(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .line 47024
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 47025
    .local v0, "position":I
    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v0, 0x20

    if-ne v1, v0, :cond_0

    .line 47026
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 47027
    :cond_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 47028
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 47029
    :cond_1
    return-void
.end method
