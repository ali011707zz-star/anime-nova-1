.class public abstract Lcom/facebook/ads/redexgen/X/Xv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2402
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4IRJGuEovS11eWhLlTHcTHgAIcL0Dfrc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lMuOXcilHIakoSNiM9TiHcKlty4yon92"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YIb1Fa9ANLl8YhZPR0dNpX70Iddjh9PH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pnRx8X5Hy3x4IRuF7DDbibtYxh7eaWKw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bsDursaggw8Ai2drbHqfQpiV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xv;->A02()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 73175
    .local v0, "maxLength":I
    .local v1, "truncatedBody":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 73176
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p0, v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73177
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 73178
    .local v3, "index":I
    .local v4, "tokenLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    .line 73179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v6, 0x5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A01:[Ljava/lang/String;

    const-string v1, "q4cROosmp2j6ascm330FkUlu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A00(III)Ljava/lang/String;

    move-result-object v0

    if-gt v7, v6, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73180
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73181
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 73182
    add-int v1, v4, v2

    if-ge v1, v3, :cond_0

    .line 73183
    add-int/2addr v4, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 73184
    :cond_2
    const/4 v1, 0x0

    if-nez v4, :cond_4

    .line 73185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73186
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v3    # "index":I
    .end local v4    # "tokenLength":I
    :cond_3
    :goto_1
    return-object p0

    .line 73187
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ct
        0x17t
        0x17t
        0x17t
    .end array-data
.end method
