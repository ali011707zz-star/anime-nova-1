.class public abstract Lcom/facebook/ads/redexgen/X/OT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/CacheFlag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1482
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pY9ZXifxArCVjHBuW1cFi0dQljuE9Tf0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pWwXLaHMc2CIhW3XIuObF4bvoKv8BfMZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mjts0HvkPGtREm0amxRZnnNRJAuUZdvm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "abSMUJDaje8PZVdniKXVA7EheIgEU2Ky"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XlFlgNr5vQZ1tyGpSUziV1wK28nmqCDp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l72ITgVAaer6oLi3ZuEszNZ4Tz579Dik"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "01uixCM2ew1GUtPlkStbY4R3MiHKurQG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OuIJxNEFpIwLjLPuYqUOL946mVcVFOoz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OT;->A03()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OT;->A03:Ljava/util/HashMap;

    .line 1483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OT;->A02:Ljava/util/HashMap;

    .line 1484
    sget-object v3, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OT;->A04(Lcom/facebook/ads/CacheFlag;Ljava/lang/String;)V

    .line 1485
    sget-object v3, Lcom/facebook/ads/CacheFlag;->ICON:Lcom/facebook/ads/CacheFlag;

    const/4 v2, 0x1

    const/4 v1, 0x4

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OT;->A04(Lcom/facebook/ads/CacheFlag;Ljava/lang/String;)V

    .line 1486
    sget-object v3, Lcom/facebook/ads/CacheFlag;->IMAGE:Lcom/facebook/ads/CacheFlag;

    const/4 v2, 0x5

    const/4 v1, 0x5

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OT;->A04(Lcom/facebook/ads/CacheFlag;Ljava/lang/String;)V

    .line 1487
    sget-object v3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    const/16 v2, 0x15

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OT;->A04(Lcom/facebook/ads/CacheFlag;Ljava/lang/String;)V

    .line 1488
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OT;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 55728
    .local p0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    if-nez p0, :cond_1

    .line 55729
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const-string v1, "mQm3e3EDrMVtI1xQTgCv9nJkqidgOUz3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 55730
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55731
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/CacheFlag;

    .line 55732
    .local v2, "e":Lcom/facebook/ads/CacheFlag;
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55733
    .local v3, "mappedValue":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 55734
    const/16 v2, 0xe

    const/4 v1, 0x7

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 55735
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55736
    .end local v2    # "e":Lcom/facebook/ads/CacheFlag;
    .end local v3    # "mappedValue":Ljava/lang/String;
    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const-string v1, "m2WAASCqguA1bRajQOE6ItOClvFsunSk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v2
    .end local v3
    goto :goto_0

    .line 55737
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 55738
    if-nez p0, :cond_0

    .line 55739
    const/4 v0, 0x0

    return-object v0

    .line 55740
    :cond_0
    const-class v0, Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 55741
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55742
    .local v1, "flagNames":[Ljava/lang/String;
    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 55743
    .local v4, "e":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A02:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/CacheFlag;

    .line 55744
    .local v5, "cacheFlag":Lcom/facebook/ads/CacheFlag;
    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 55745
    .end local v4    # "e":Ljava/lang/String;
    .end local v5    # "cacheFlag":Lcom/facebook/ads/CacheFlag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55746
    :cond_1
    return-object v5
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x1a

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OT;->A01:[Ljava/lang/String;

    const-string v1, "Bq2StgQbD5mLPjUE1dw95ch9p648bptk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/OT;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        0xat
        0x4t
        0x10t
        0xft
        -0x22t
        -0x1et
        -0x2at
        -0x24t
        -0x26t
        -0x2at
        -0x29t
        -0x2at
        -0x33t
        -0x2ft
        -0x36t
        -0x39t
        -0x36t
        -0x35t
        -0x2dt
        -0x36t
        -0x2dt
        -0x3at
        -0x3ft
        -0x3et
        -0x34t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/CacheFlag;Ljava/lang/String;)V
    .locals 1

    .line 55747
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55748
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A02:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55749
    return-void
.end method
