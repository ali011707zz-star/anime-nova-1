.class public final Lcom/facebook/ads/redexgen/X/KX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4v;

.field public final A01:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 902
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WgUeKuj9wfEgVxNwMhsYWmskS6gvsk4u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lY3t8mYoNwyGRU5cssOmtzsYdTPyfvrC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tzc0Un4Rz02llsU2wRoiLNj111WzmA0w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wjCansXDTCdJlU5xzgIWdtLXD8W6m4ff"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dSf2E5RYsrIqqVu4QtCEIfuVexQKgaAl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hprG2SUWJwqzwErLsBPmt0UTVTrRmWBo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Dvzgny"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YcbZLjapWumuyxPaIgpkq7v611"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KX;->A07()V

    const/16 v2, 0x31

    const/16 v1, 0x13

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A05:Ljava/util/regex/Pattern;

    .line 903
    const/16 v2, 0x44

    const/16 v1, 0x20

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A04:Ljava/util/regex/Pattern;

    .line 904
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47269
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 47270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    .line 47271
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;I)C
    .locals 0

    .line 47272
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object p0

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4v;)Ljava/lang/String;
    .locals 4

    .line 47273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    .line 47274
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v3

    .line 47275
    .local v1, "limit":I
    const/4 v0, 0x0

    .line 47276
    .local v2, "cueTargetEndFound":Z
    :goto_0
    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 47277
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    .end local v0    # "position":I
    .local p0, "position":I
    aget-byte v0, v0, v1

    int-to-char v1, v0

    .line 47278
    .local v0, "c":C
    const/16 v0, 0x29

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 47279
    .end local v0    # "c":C
    :goto_1
    move v1, v2

    goto :goto_0

    .line 47280
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 47281
    .end local p0    # "position":I
    .local v0, "position":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "T"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 47282
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47283
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .line 47284
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v3

    .line 47285
    .local v1, "limit":I
    const/4 v4, 0x0

    .line 47286
    .local v2, "identifierEndFound":Z
    :goto_0
    if-ge v2, v3, :cond_5

    if-nez v4, :cond_5

    .line 47287
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v2

    int-to-char v1, v0

    .line 47288
    .local v3, "c":C
    const/16 v0, 0x41

    if-lt v1, v0, :cond_0

    const/16 v0, 0x5a

    if-le v1, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt v1, v0, :cond_1

    const/16 v0, 0x7a

    if-le v1, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt v1, v0, :cond_2

    const/16 v0, 0x39

    if-le v1, v0, :cond_3

    :cond_2
    const/16 v0, 0x23

    if-eq v1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_3

    const/16 v0, 0x5f

    if-ne v1, v0, :cond_4

    .line 47289
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 47290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47291
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 47292
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 47293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 47294
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A09(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 47295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 47296
    const/4 v0, 0x0

    return-object v0

    .line 47297
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A03(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 47298
    .local v0, "identifier":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47299
    return-object v3

    .line 47300
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .line 47301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 47302
    .local v0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 47303
    .local v1, "expressionEndFound":Z
    :goto_0
    if-nez v5, :cond_3

    .line 47304
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 47305
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 47306
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 47307
    const/4 v0, 0x0

    return-object v0

    .line 47308
    :cond_0
    const/16 v2, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47309
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 47310
    const/4 v5, 0x1

    goto :goto_0

    .line 47311
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47312
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "H7IbVoVWHhMCEaN9uIz63JDuRBiIUDdu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .line 47313
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A09(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 47314
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v6, 0x0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 47315
    return-object v6

    .line 47316
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v3

    .line 47317
    .local v0, "cueSelector":Ljava/lang/String;
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47318
    return-object v6

    .line 47319
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 47320
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 47321
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 47322
    return-object v6

    .line 47323
    :cond_2
    const/16 v2, 0xfb

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47324
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 47325
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47326
    :cond_3
    const/4 v5, 0x0

    .line 47327
    .local v4, "target":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47328
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A02(Lcom/facebook/ads/redexgen/X/4v;)Ljava/lang/String;

    move-result-object v5

    .line 47329
    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 47330
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "kXJ9Slail85MSzeGoJKC016PF6DECpEt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x61

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 47331
    return-object v6

    .line 47332
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xfd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x8t
        0x5at
        0x53t
        0x17t
        0x39t
        0x79t
        0x22t
        0x22t
        0x7bt
        0x6dt
        0x7dt
        0x6at
        0x60t
        0x47t
        0x5ft
        0x48t
        0x45t
        0x40t
        0x4dt
        0x9t
        0x4ft
        0x46t
        0x47t
        0x5dt
        0x4t
        0x5at
        0x40t
        0x53t
        0x4ct
        0x13t
        0x9t
        0xet
        0x5ft
        0x6dt
        0x6at
        0x7et
        0x7ct
        0x7ct
        0x4bt
        0x7bt
        0x7bt
        0x58t
        0x69t
        0x7at
        0x7bt
        0x6dt
        0x7at
        0x24t
        0x56t
        0x15t
        0x12t
        0x3ft
        0x26t
        0x20t
        0x2at
        0x2ct
        0x74t
        0x6bt
        0x61t
        0x12t
        0x17t
        0x6bt
        0x14t
        0x63t
        0x60t
        0x6bt
        0x15t
        0x14t
        0x2ct
        0x5at
        0x5at
        0x4dt
        0x48t
        0x29t
        0x42t
        0x5ft
        0x4bt
        0x2ft
        0x58t
        0x2et
        0x5ct
        0x5bt
        0x4dt
        0x29t
        0x42t
        0x5ft
        0x4bt
        0x2ft
        0x59t
        0x5bt
        0x5at
        0x2t
        0xat
        0xet
        0x17t
        0x1ft
        0xet
        0x57t
        0x5bt
        0x56t
        0x27t
        0x2at
        0x2at
        0x13t
        0x10t
        0x12t
        0x1at
        0x16t
        0x3t
        0x1et
        0x4t
        0x1ft
        0x15t
        0x5ct
        0x12t
        0x1et
        0x1dt
        0x1et
        0x3t
        0x5dt
        0x50t
        0x53t
        0x5bt
        0x34t
        0x38t
        0x3bt
        0x38t
        0x25t
        0x6t
        0xbt
        0x5t
        0xbt
        0x16t
        0x11t
        0x74t
        0x7ct
        0x33t
        0x3at
        0x3bt
        0x21t
        0x78t
        0x33t
        0x34t
        0x38t
        0x3ct
        0x39t
        0x2ct
        0x64t
        0x6dt
        0x6ct
        0x76t
        0x2ft
        0x71t
        0x6bt
        0x78t
        0x67t
        0x6ft
        0x66t
        0x67t
        0x7dt
        0x24t
        0x7at
        0x7dt
        0x70t
        0x65t
        0x6ct
        0x28t
        0x21t
        0x20t
        0x3at
        0x63t
        0x39t
        0x2bt
        0x27t
        0x29t
        0x26t
        0x3at
        0x65t
        0x78t
        0x6dt
        0x60t
        0x65t
        0x6ft
        0x12t
        0xbt
        0x18t
        0xft
        0x77t
        0x7ft
        0x7ct
        0x7bt
        0x6ct
        0x77t
        0x23t
        0x7et
        0x61t
        0x7dt
        0x67t
        0x7at
        0x67t
        0x61t
        0x60t
        0x2at
        0x3bt
        0x26t
        0x2at
        0x73t
        0x3dt
        0x31t
        0x33t
        0x3ct
        0x37t
        0x30t
        0x3bt
        0x73t
        0x2bt
        0x2et
        0x2ct
        0x37t
        0x39t
        0x36t
        0x2at
        0x45t
        0x54t
        0x49t
        0x45t
        0x1ct
        0x55t
        0x54t
        0x52t
        0x5et
        0x43t
        0x50t
        0x45t
        0x58t
        0x5et
        0x5ft
        0x75t
        0x6et
        0x64t
        0x65t
        0x72t
        0x12t
        0x9t
        0x3t
        0x2t
        0x15t
        0xbt
        0xet
        0x9t
        0x2t
        0x25t
        0x73t
    .end array-data
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 47333
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 47334
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47335
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 4

    .line 47336
    const/4 v0, 0x1

    .line 47337
    .local v0, "skipping":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v0, :cond_3

    .line 47338
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A0E(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "0TKGD6osFOak97huLTwvjNDJFBkvRURl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47339
    :cond_3
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/Kb;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 47340
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A09(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 47341
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/KX;->A03(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 47342
    .local v0, "property":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47343
    return-void

    .line 47344
    :cond_0
    const/4 v3, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "0USPULEwqSqheHB8AwvifNHGUwFlc4Dk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K61Ol0RKHiZGAookV7xLX0vZAqBJUPJk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x32

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47345
    return-void

    .line 47346
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KX;->A09(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 47347
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/KX;->A05(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 47348
    .local v2, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47349
    .end local v1
    .end local v3
    :cond_2
    return-void

    .line 47350
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v5

    .line 47351
    .local v1, "position":I
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 47352
    .local v3, "token":Ljava/lang/String;
    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47353
    :goto_0
    const/16 v2, 0x7b

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47354
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/47;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0C(I)Lcom/facebook/ads/redexgen/X/Kb;

    .line 47355
    :cond_4
    :goto_1
    return-void

    .line 47356
    :cond_5
    const/16 v2, 0x67

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47357
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/47;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0B(I)Lcom/facebook/ads/redexgen/X/Kb;

    goto :goto_1

    .line 47358
    :cond_6
    const/16 v2, 0xbd

    const/16 v1, 0xd

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 47359
    const/16 v2, 0xb7

    const/4 v1, 0x4

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47360
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0E(I)Lcom/facebook/ads/redexgen/X/Kb;

    goto :goto_1

    .line 47361
    :cond_7
    const/16 v2, 0xed

    const/4 v1, 0x5

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47362
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0E(I)Lcom/facebook/ads/redexgen/X/Kb;

    goto :goto_1

    .line 47363
    :cond_8
    const/16 v6, 0xca

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "r"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x14

    const/16 v0, 0x2f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47364
    const/16 v2, 0x64

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v2, 0x80

    const/4 v1, 0x6

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_2
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0H(Z)Lcom/facebook/ads/redexgen/X/Kb;

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 47365
    :cond_b
    const/16 v2, 0xde

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "yV6z32KBYC5kRTQJBEYXfmL3n0QpULhq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ddMdMWLPn2YWu0ZxAW3O28brDgrMgVms"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_c

    .line 47366
    const/16 v2, 0xf2

    const/16 v1, 0x9

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47367
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0J(Z)Lcom/facebook/ads/redexgen/X/Kb;

    goto/16 :goto_1

    .line 47368
    :cond_c
    const/16 v2, 0x88

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47369
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Kb;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kb;

    goto/16 :goto_1

    .line 47370
    :cond_d
    const/16 v2, 0xa6

    const/16 v1, 0xb

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47371
    const/16 v2, 0x77

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47372
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0G(Z)Lcom/facebook/ads/redexgen/X/Kb;

    goto/16 :goto_1

    .line 47373
    :cond_e
    const/16 v2, 0x9c

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47374
    const/16 v2, 0xb1

    const/4 v1, 0x6

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47375
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0I(Z)Lcom/facebook/ads/redexgen/X/Kb;

    goto/16 :goto_1

    .line 47376
    :cond_f
    const/16 v2, 0x93

    const/16 v1, 0x9

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47377
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/KX;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kb;)V

    goto/16 :goto_1

    .line 47378
    :cond_10
    const/16 v2, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47379
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47380
    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Kb;Ljava/lang/String;)V
    .locals 7

    .line 47381
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47382
    return-void

    .line 47383
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 47384
    .local v0, "voiceStartIndex":I
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eq v2, v6, :cond_2

    .line 47385
    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 47386
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47387
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0N(Ljava/lang/String;)V

    .line 47388
    :cond_1
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 47389
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const/16 v2, 0x2f

    const/4 v1, 0x2

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 47390
    .local v4, "classDivision":[Ljava/lang/String;
    aget-object v2, v3, v5

    .line 47391
    .local v5, "tagAndIdDivision":Ljava/lang/String;
    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 47392
    .local v6, "idPrefixIndex":I
    if-eq v1, v6, :cond_4

    .line 47393
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0M(Ljava/lang/String;)V

    .line 47394
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0L(Ljava/lang/String;)V

    .line 47395
    :goto_0
    array-length v0, v3

    if-le v0, v4, :cond_3

    .line 47396
    array-length v0, v3

    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1J([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0O([Ljava/lang/String;)V

    .line 47397
    :cond_3
    return-void

    .line 47398
    :cond_4
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Kb;->A0M(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kb;)V
    .locals 6

    .line 47399
    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A04:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 47400
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x14

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0xf

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47402
    return-void

    .line 47403
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 47404
    .local v2, "unit":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47405
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 47406
    :sswitch_0
    const/16 v2, 0xbb

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x86

    const/4 v1, 0x2

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 47407
    :pswitch_0
    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KX;->A03:[Ljava/lang/String;

    const-string v1, "l0BGY6Ka6m0f3MeGwvnWH7AIpst7Q8cB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Kb;->A0D(I)Lcom/facebook/ads/redexgen/X/Kb;

    .line 47408
    goto :goto_1

    .line 47409
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47410
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Kb;->A0D(I)Lcom/facebook/ads/redexgen/X/Kb;

    .line 47411
    goto :goto_1

    .line 47412
    :pswitch_2
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Kb;->A0D(I)Lcom/facebook/ads/redexgen/X/Kb;

    .line 47413
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A0A(F)Lcom/facebook/ads/redexgen/X/Kb;

    .line 47414
    return-void

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 7

    .line 47415
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 47416
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    .line 47417
    .local v1, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 47418
    .local v2, "data":[B
    add-int/lit8 v0, v3, 0x2

    if-gt v0, v1, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v0    # "position":I
    .local v3, "position":I
    aget-byte v0, v6, v3

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    .end local v3    # "position":I
    .restart local v0    # "position":I
    aget-byte v0, v6, v2

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    .line 47419
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_1

    .line 47420
    add-int/lit8 v2, v4, 0x1

    .end local v0    # "position":I
    .restart local v3    # "position":I
    aget-byte v0, v6, v4

    int-to-char v0, v0

    .line 47421
    .local v0, "skippedChar":C
    if-ne v0, v3, :cond_0

    .line 47422
    aget-byte v0, v6, v2

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 47423
    add-int/lit8 v1, v2, 0x1

    .line 47424
    move v4, v1

    goto :goto_0

    .line 47425
    .end local v0    # "skippedChar":C
    :cond_0
    move v4, v2

    goto :goto_0

    .line 47426
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 47427
    const/4 v0, 0x1

    return v0

    .line 47428
    .end local v3    # "position":I
    .restart local v0    # "skippedChar":C
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 1

    .line 47429
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/4v;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 47430
    const/4 v0, 0x0

    return v0

    .line 47431
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 47432
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final A0F(Lcom/facebook/ads/redexgen/X/4v;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;"
        }
    .end annotation

    .line 47433
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47434
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 47435
    .local v0, "initialInputPosition":I
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KX;->A08(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 47436
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 47437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 47438
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47439
    .local v2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A06(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .local v4, "selector":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 47440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfb

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47441
    return-object v6

    .line 47442
    :cond_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/Kb;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    .line 47443
    .local v3, "style":Lcom/facebook/ads/redexgen/X/Kb;
    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/KX;->A0B(Lcom/facebook/ads/redexgen/X/Kb;Ljava/lang/String;)V

    .line 47444
    const/4 v7, 0x0

    .line 47445
    .local v5, "token":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47446
    .local v6, "blockEndFound":Z
    :cond_2
    :goto_1
    const/16 v3, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_5

    .line 47447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 47448
    .local p0, "position":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 47449
    if-eqz v7, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 47450
    :goto_2
    if-nez v2, :cond_2

    .line 47451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 47452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0A(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/Kb;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 47453
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 47454
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47455
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47456
    :cond_6
    return-object v6
.end method
