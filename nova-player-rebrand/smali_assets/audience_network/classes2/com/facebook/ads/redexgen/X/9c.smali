.class public final Lcom/facebook/ads/redexgen/X/9c;
.super Lcom/facebook/ads/redexgen/X/mZ;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/nio/charset/CharsetDecoder;

.field public final A01:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 558
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lh0eiN4oYILfPl4jy3dJZhwMArdhxg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZZdJzt9nksvE8tVcjKh5yb5LHp4DKBwy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dbw1S4FpTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Q8KOrM0jMS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "E5bBazuIHkpw9TIkFnjV805WNgqTNchu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VvZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9c;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9c;->A02()V

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x20

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9c;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25002
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mZ;-><init>()V

    .line 25003
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Ljava/nio/charset/CharsetDecoder;

    .line 25004
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Ljava/nio/charset/CharsetDecoder;

    .line 25005
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 25006
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25008
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25009
    return-object v1

    .line 25010
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25011
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25012
    throw v1

    .line 25013
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25014
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25015
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25017
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25018
    return-object v1

    .line 25019
    :catchall_1
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25020
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25021
    throw v1

    .line 25022
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    :catch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 25023
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25024
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x22

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A03:[Ljava/lang/String;

    const-string v1, "K4Z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/9c;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x48t
        0x4et
        0x4bt
        0x5ft
        0x49t
        0x5dt
        0x47t
        0x48t
        0x4et
        0x4at
        0x5ft
        0x49t
        0x47t
        0x5bt
        0xbt
        0xct
        0xat
        0x1dt
        0x19t
        0x15t
        0xct
        0x11t
        0xct
        0x14t
        0x1dt
        0x11t
        0x16t
        0x10t
        0x7t
        0x3t
        0xft
        0x17t
        0x10t
        0xet
    .end array-data
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/9e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 11

    .line 25025
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9c;->A01(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 25026
    .local v0, "icyString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v5, v0, [B

    .line 25027
    .local v1, "icyBytes":[B
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25028
    const/4 v10, 0x0

    const/4 v7, 0x1

    if-nez v8, :cond_0

    .line 25029
    new-array v2, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {v0, v5, v1, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v10

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    .line 25030
    :cond_0
    const/4 v6, 0x0

    .line 25031
    .local v4, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 25032
    .local v5, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 25033
    .local v6, "index":I
    sget-object v9, Lcom/facebook/ads/redexgen/X/9c;->A04:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 25034
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25035
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 25036
    .local v8, "key":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 25037
    .local v9, "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 25038
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 25039
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 25040
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_0

    .line 25041
    :pswitch_0
    move-object v4, v9

    .line 25042
    goto :goto_2

    .line 25043
    :pswitch_1
    move-object v6, v9

    .line 25044
    goto :goto_2

    .line 25045
    :sswitch_0
    const/16 v3, 0xe

    const/16 v2, 0xb

    const/16 v1, 0x4d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9c;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const/16 v3, 0x19

    const/16 v2, 0x9

    const/16 v1, 0x57

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9c;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 25046
    :cond_4
    new-array v1, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {v0, v5, v6, v4}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v10

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12cfba11 -> :sswitch_1
        0x622482d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
