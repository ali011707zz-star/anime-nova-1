.class public abstract Lcom/facebook/ads/redexgen/X/HS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HR;,
        Lcom/facebook/ads/redexgen/X/HP;,
        Lcom/facebook/ads/redexgen/X/HQ;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[I

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[F

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 789
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "unNLyNh5FR3GyMG68d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fnHIAbwwkFQ1ZGNlnsc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DMpYp1jOlcNpO4pJgPWh22Zerf91QM8t"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RZoQ8h3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "L8G6Aqwau6BJqNFKfla"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ElXYWWCxJdBggdMs0Hio0yCYqdZAyfAp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A3sl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vST53OIiICW6hrmD3wtDRemD3zmWyZSx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HS;->A0C()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A03:[B

    .line 790
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A04:[F

    .line 791
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A05:Ljava/lang/Object;

    .line 792
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static A00([BI)I
    .locals 1

    .line 39031
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static A01([BI)I
    .locals 1

    .line 39032
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static A02([BI)I
    .locals 8

    .line 39033
    sget-object v7, Lcom/facebook/ads/redexgen/X/HS;->A05:Ljava/lang/Object;

    monitor-enter v7

    .line 39034
    const/4 v2, 0x0

    .line 39035
    .local v1, "position":I
    const/4 v6, 0x0

    .line 39036
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 39037
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/facebook/ads/redexgen/X/HS;->A03([BII)I

    move-result v2

    .line 39038
    if-ge v2, p1, :cond_0

    .line 39039
    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 39040
    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 39041
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    .line 39042
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    add-int/lit8 v0, v6, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v2, v1, v6

    .line 39043
    add-int/lit8 v2, v2, 0x3

    move v6, v0

    goto :goto_0

    .line 39044
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int/2addr p1, v6

    .line 39045
    .local v3, "unescapedLength":I
    const/4 v5, 0x0

    .line 39046
    .local v4, "escapedPosition":I
    const/4 v4, 0x0

    .line 39047
    .local v5, "unescapedPosition":I
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 39048
    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A01:[I

    aget v2, v0, v3

    .line 39049
    .local v7, "nextEscapePosition":I
    sub-int/2addr v2, v5

    .line 39050
    .local p0, "copyLength":I
    invoke-static {p0, v5, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39051
    add-int/2addr v4, v2

    .line 39052
    add-int/lit8 v1, v4, 0x1

    .end local v5    # "unescapedPosition":I
    .local p1, "unescapedPosition":I
    const/4 v0, 0x0

    aput-byte v0, p0, v4

    .line 39053
    add-int/lit8 v4, v1, 0x1

    .end local p1    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v0, p0, v1

    .line 39054
    add-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    .line 39055
    .end local v7    # "nextEscapePosition":I
    .end local p0    # "copyLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39056
    .end local v6    # "i":I
    :cond_3
    sub-int v0, p1, v4

    .line 39057
    .local v6, "remainingLength":I
    invoke-static {p0, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39058
    monitor-exit v7

    return p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39059
    .end local v1    # "position":I
    .end local v4    # "escapedPosition":I
    :catchall_0
    move-exception v0

    .end local v1
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 39060
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    .line 39061
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 39062
    return p1

    .line 39063
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 39064
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static A04([BII[Z)I
    .locals 8

    .line 39065
    sub-int v5, p2, p1

    .line 39066
    .local v0, "length":I
    const/4 v7, 0x0

    const/4 v4, 0x1

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 39067
    if-nez v5, :cond_1

    .line 39068
    return p2

    .line 39069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39070
    :cond_1
    aget-boolean v0, p3, v7

    if-eqz v0, :cond_2

    .line 39071
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 39072
    add-int/lit8 v0, p1, -0x3

    return v0

    .line 39073
    :cond_2
    if-le v5, v4, :cond_3

    aget-boolean v0, p3, v4

    if-eqz v0, :cond_3

    aget-byte v0, p0, p1

    if-ne v0, v4, :cond_3

    .line 39074
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 39075
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 39076
    :cond_3
    const/4 v3, 0x2

    if-le v5, v3, :cond_5

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "PQW9C7kUOKDoPPw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_5

    .line 39077
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 39078
    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39079
    :cond_5
    add-int/lit8 v2, p2, -0x1

    .line 39080
    .local v4, "limit":I
    add-int/lit8 v1, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 39081
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_6

    .line 39082
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 39083
    :cond_6
    add-int/lit8 v0, v1, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    aget-byte v0, p0, v1

    if-ne v0, v4, :cond_7

    .line 39084
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 39085
    add-int/lit8 v0, v1, -0x2

    return v0

    .line 39086
    :cond_7
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 39087
    .end local v5    # "i":I
    :cond_8
    if-le v5, v3, :cond_e

    .line 39088
    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x2

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "tLizWOaN0OsagnuSy28"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZOtg0UvXTXpiFnpoxfp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v6, :cond_d

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_d

    const/4 v0, 0x1

    .line 39089
    :goto_3
    aput-boolean v0, p3, v7

    .line 39090
    if-le v5, v4, :cond_b

    .line 39091
    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 39092
    :goto_4
    aput-boolean v0, p3, v4

    .line 39093
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_9

    const/4 v7, 0x1

    :cond_9
    aput-boolean v7, p3, v3

    .line 39094
    return p2

    .line 39095
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 39096
    :cond_b
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 39097
    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    .line 39098
    :cond_e
    if-ne v5, v3, :cond_11

    .line 39099
    aget-boolean v6, p3, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "TtHOfwpayoR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_10

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 39100
    :cond_11
    aget-boolean v0, p3, v4

    if-eqz v0, :cond_13

    add-int/lit8 v6, p2, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "UGNUjS5TseBxte9hZy6MdiMKKivw8YU8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gAwFNStsKHXv5jMh5dTnIzvsHbrqE6D6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_13

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "MYPYXnk67e7ylj87wlpJJbRJ3uYkeY13"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_13

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05([BII)Lcom/facebook/ads/redexgen/X/HP;
    .locals 1

    .line 39101
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/HS;->A06([BII)Lcom/facebook/ads/redexgen/X/HP;

    move-result-object v0

    return-object v0
.end method

.method public static A06([BII)Lcom/facebook/ads/redexgen/X/HP;
    .locals 21

    .line 39102
    new-instance v3, Lcom/facebook/ads/redexgen/X/HU;

    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;-><init>([BII)V

    .line 39103
    .local v0, "data":Lcom/facebook/ads/redexgen/X/HU;
    const/16 p0, -0x1

    .line 39104
    .local v4, "colorSpace":I
    const/16 p1, -0x1

    .line 39105
    .local v5, "colorRange":I
    const/16 p2, -0x1

    .line 39106
    .local v6, "colorTransfer":I
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39107
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v5

    .line 39108
    .local v8, "maxSubLayersMinus1":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39109
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v11

    .line 39110
    .local p3, "generalProfileSpace":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v12

    .line 39111
    .local p4, "generalTierFlag":Z
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v13

    .line 39112
    .local p5, "generalProfileIdc":I
    const/4 v14, 0x0

    .line 39113
    .local v10, "generalProfileCompatibilityFlags":I
    const/4 v8, 0x0

    .end local v10    # "generalProfileCompatibilityFlags":I
    .local v11, "i":I
    .local p6, "generalProfileCompatibilityFlags":I
    :goto_0
    const/16 v6, 0x20

    const/4 v2, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1b

    sget-object v9, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "xkwe1O9uU2dqAY7xWUY4fbTlKQKyvcwL"

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const-string v1, "HeYhRuPqM40BhEn67WYdTTzYcbU6v3bu"

    const/4 v0, 0x7

    aput-object v1, v9, v0

    if-ge v8, v6, :cond_1

    .line 39114
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39115
    shl-int/2addr v2, v8

    or-int/2addr v14, v2

    .line 39116
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 39117
    .end local v11    # "i":I
    :cond_1
    const/4 v0, 0x6

    new-array v15, v0, [I

    .line 39118
    .local v15, "constraintBytes":[I
    const/4 v6, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v15

    const/16 v1, 0x8

    if-ge v6, v0, :cond_2

    .line 39119
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v0

    aput v0, v15, v6

    .line 39120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 39121
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v16

    .line 39122
    .local p7, "generalLevelIdc":I
    const/4 v6, 0x0

    .line 39123
    .local v10, "toSkip":I
    const/4 v0, 0x0

    .end local v10    # "toSkip":I
    .restart local v11    # "i":I
    .local v14, "toSkip":I
    :goto_2
    if-ge v0, v5, :cond_5

    .line 39124
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 39125
    add-int/lit8 v6, v6, 0x59

    .line 39126
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 39127
    add-int/lit8 v6, v6, 0x8

    .line 39128
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39129
    .end local v11    # "i":I
    :cond_5
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39130
    if-lez v5, :cond_6

    .line 39131
    rsub-int/lit8 v0, v5, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39132
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v17

    .line 39133
    .local p8, "seqParameterSetId":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v0

    .line 39134
    .local v11, "chromaFormatIdc":I
    if-ne v0, v7, :cond_7

    .line 39135
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39136
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v18

    .line 39137
    .local v10, "frameWidth":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v19

    .line 39138
    .local v16, "frameHeight":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 39139
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v10

    .line 39140
    .local v17, "confWinLeftOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v9

    .line 39141
    .local v18, "confWinRightOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v8

    .line 39142
    .local v19, "confWinTopOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v7

    .line 39143
    .local v20, "confWinBottomOffset":I
    if-eq v0, v2, :cond_8

    if-ne v0, v4, :cond_d

    :cond_8
    const/4 v6, 0x2

    .line 39144
    .local p0, "subWidthC":I
    :goto_3
    if-ne v0, v2, :cond_c

    const/4 v0, 0x2

    .line 39145
    .local p1, "subHeightC":I
    :goto_4
    add-int/2addr v10, v9

    mul-int/2addr v10, v6

    sub-int v18, v18, v10

    .line 39146
    add-int/2addr v8, v7

    mul-int/2addr v8, v0

    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v2, v6, v0

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_b

    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v2, "Hn3sdMz19WVmWCBK"

    const/4 v0, 0x6

    aput-object v2, v6, v0

    sub-int v19, v19, v8

    .line 39147
    .end local v10    # "frameWidth":I
    .local p9, "frameWidth":I
    :cond_9
    :goto_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39148
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39149
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v6

    .line 39150
    .local p10, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .local v10, "i":I
    :goto_6
    if-gt v0, v5, :cond_e

    .line 39151
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39152
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39153
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39154
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move v0, v5

    goto :goto_6

    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v2, "Jz4JSkPN0248kFDgiRzzjLGO7q"

    const/4 v0, 0x3

    aput-object v2, v6, v0

    sub-int v19, v19, v8

    goto :goto_5

    .line 39155
    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    .line 39156
    :cond_d
    const/4 v6, 0x1

    goto :goto_3

    .line 39157
    .end local v10    # "i":I
    :cond_e
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39158
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39159
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39160
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39161
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39162
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39163
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    .line 39164
    .local p11, "scalingListEnabled":Z
    if-eqz v0, :cond_f

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39165
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/HS;->A0D(Lcom/facebook/ads/redexgen/X/HU;)V

    .line 39166
    :cond_f
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39167
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39168
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39169
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39170
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39171
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39172
    :cond_10
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/HS;->A0E(Lcom/facebook/ads/redexgen/X/HU;)V

    .line 39173
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39174
    const/4 v0, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 39175
    add-int/lit8 v2, v6, 0x4

    .line 39176
    .local v12, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39177
    .end local v12    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 39178
    .end local v10    # "i":I
    :cond_11
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39179
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39180
    .local v7, "pixelWidthHeightRatio":F
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v2, 0xa

    if-eq v4, v2, :cond_1b

    sget-object v5, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v4, "CMlgeA8zQVByZrA2VMXzsS0jeMyo18qQ"

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v4, "QAK33uwHUZwexufQvU3o8DPmyRQmvUMz"

    const/4 v2, 0x7

    aput-object v4, v5, v2

    if-eqz v6, :cond_16

    .line 39181
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 39182
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v2

    .line 39183
    .local v10, "aspectRatioIdc":I
    const/16 v1, 0xff

    if-ne v2, v1, :cond_19

    .line 39184
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v2

    .line 39185
    .local v9, "sarWidth":I
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v1

    .line 39186
    .local v12, "sarHeight":I
    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    .line 39187
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 39188
    .end local v10    # "aspectRatioIdc":I
    :cond_12
    :goto_8
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 39189
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39190
    :cond_13
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 39191
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39192
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v4

    .line 39193
    .local v1, "fullRangeFlag":Z
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 39194
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v1

    .line 39195
    .local v10, "colorPrimaries":I
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v5

    .line 39196
    .local v12, "transferCharacteristics":I
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 39197
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result p0

    .line 39198
    if-eqz v4, :cond_18

    const/16 p1, 0x1

    :goto_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_17

    .line 39199
    sget-object v4, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v2, "HGrGkdvIc2AkT14Ejxxa4aXBUNVha"

    const/4 v1, 0x0

    aput-object v2, v4, v1

    invoke-static {v5}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result p2

    .line 39200
    .end local v1    # "fullRangeFlag":Z
    .end local v10    # "colorPrimaries":I
    .end local v12    # "transferCharacteristics":I
    :cond_14
    :goto_a
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 39201
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39202
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39203
    :cond_15
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39204
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 39205
    mul-int/lit8 v19, v19, 0x2

    .line 39206
    .end local v16    # "frameHeight":I
    .local v1, "frameHeight":I
    :cond_16
    new-instance v10, Lcom/facebook/ads/redexgen/X/HP;

    .end local v11    # "chromaFormatIdc":I
    .local p12, "chromaFormatIdc":I
    .end local v14    # "toSkip":I
    .local p13, "toSkip":I
    .end local v15    # "constraintBytes":[I
    .local p14, "constraintBytes":[I
    move/from16 v20, v0

    invoke-direct/range {v10 .. v23}, Lcom/facebook/ads/redexgen/X/HP;-><init>(IZII[IIIIIFIII)V

    return-object v10

    .line 39207
    :cond_17
    invoke-static {v5}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result p2

    goto :goto_a

    .line 39208
    :cond_18
    const/16 p1, 0x2

    goto :goto_9

    .line 39209
    :cond_19
    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A04:[F

    array-length v1, v1

    if-ge v2, v1, :cond_1a

    .line 39210
    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A04:[F

    aget v0, v0, v2

    .end local v7    # "pixelWidthHeightRatio":F
    .local v1, "pixelWidthHeightRatio":F
    goto :goto_8

    .line 39211
    .end local v1    # "pixelWidthHeightRatio":F
    .restart local v7    # "pixelWidthHeightRatio":F
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb

    const/16 v4, 0x23

    const/16 v1, 0x7e

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v2, 0xb

    const/16 v1, 0x3f

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07([BII)Lcom/facebook/ads/redexgen/X/HQ;
    .locals 1

    .line 39212
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/HS;->A08([BII)Lcom/facebook/ads/redexgen/X/HQ;

    move-result-object v0

    return-object v0
.end method

.method public static A08([BII)Lcom/facebook/ads/redexgen/X/HQ;
    .locals 1

    .line 39213
    new-instance v0, Lcom/facebook/ads/redexgen/X/HU;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/HU;-><init>([BII)V

    .line 39214
    .local v0, "data":Lcom/facebook/ads/redexgen/X/HU;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result p2

    .line 39215
    .local p0, "picParameterSetId":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result p1

    .line 39216
    .local p1, "seqParameterSetId":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39217
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result p0

    .line 39218
    .local p2, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {v0, p2, p1, p0}, Lcom/facebook/ads/redexgen/X/HQ;-><init>(IIZ)V

    return-object v0
.end method

.method public static A09([BII)Lcom/facebook/ads/redexgen/X/HR;
    .locals 1

    .line 39219
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/HS;->A0A([BII)Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v0

    return-object v0
.end method

.method public static A0A([BII)Lcom/facebook/ads/redexgen/X/HR;
    .locals 23

    .line 39220
    new-instance v3, Lcom/facebook/ads/redexgen/X/HU;

    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;-><init>([BII)V

    .line 39221
    .local v0, "data":Lcom/facebook/ads/redexgen/X/HU;
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v12

    .line 39222
    .local v15, "profileIdc":I
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v13

    .line 39223
    .local v20, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v14

    .line 39224
    .local v21, "levelIdc":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v15

    .line 39225
    .local v22, "seqParameterSetId":I
    const/4 v2, 0x1

    .line 39226
    .local v5, "chromaFormatIdc":I
    const/16 v20, 0x0

    .line 39227
    .local v6, "separateColorPlaneFlag":Z
    const/16 v0, 0x64

    const/4 v1, 0x3

    const/16 v9, 0x10

    if-eq v12, v0, :cond_0

    const/16 v0, 0x6e

    if-eq v12, v0, :cond_0

    const/16 v0, 0x7a

    if-eq v12, v0, :cond_0

    const/16 v0, 0xf4

    if-eq v12, v0, :cond_0

    const/16 v0, 0x2c

    if-eq v12, v0, :cond_0

    const/16 v0, 0x53

    if-eq v12, v0, :cond_0

    const/16 v0, 0x56

    if-eq v12, v0, :cond_0

    const/16 v0, 0x76

    if-eq v12, v0, :cond_0

    const/16 v0, 0x80

    if-eq v12, v0, :cond_0

    const/16 v0, 0x8a

    if-ne v12, v0, :cond_5

    .line 39228
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v2

    .line 39229
    if-ne v2, v1, :cond_1

    .line 39230
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v20

    .line 39231
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39232
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39233
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39234
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0xa

    if-eq v4, v0, :cond_11

    .line 39235
    .local v7, "seqScalingMatrixPresentFlag":Z
    sget-object v5, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v4, "qzm7RlaVhvQtMB0zhtauZ"

    const/4 v0, 0x0

    aput-object v4, v5, v0

    if-eqz v6, :cond_5

    .line 39236
    if-eq v2, v1, :cond_4

    const/16 v5, 0x8

    .line 39237
    .local v10, "limit":I
    :goto_0
    const/4 v4, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 39238
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    .line 39239
    .local v12, "seqScalingListPresentFlag":Z
    if-eqz v0, :cond_2

    .line 39240
    const/4 v0, 0x6

    if-ge v4, v0, :cond_3

    const/16 v0, 0x10

    :goto_2
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A0F(Lcom/facebook/ads/redexgen/X/HU;I)V

    .line 39241
    .end local v12    # "seqScalingListPresentFlag":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39242
    :cond_3
    const/16 v0, 0x40

    goto :goto_2

    .line 39243
    :cond_4
    const/16 v5, 0xc

    goto :goto_0

    .line 39244
    .end local v5    # "chromaFormatIdc":I
    .end local v6    # "separateColorPlaneFlag":Z
    .local v14, "chromaFormatIdc":I
    .local p0, "separateColorPlaneFlag":Z
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v0

    add-int/lit8 v22, v0, 0x4

    .line 39245
    .local p1, "frameNumLength":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v10

    .line 39246
    .local v13, "picOrderCntType":I
    const/16 p1, 0x0

    .line 39247
    .local v5, "picOrderCntLsbLength":I
    const/16 p2, 0x0

    .line 39248
    .local v6, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v0, 0x1

    if-nez v10, :cond_10

    .line 39249
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v4

    add-int/lit8 p1, v4, 0x4

    sget-object v5, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, v5, v4

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x59

    if-eq v5, v4, :cond_f

    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v5, "2NWfLRVEjhOO9"

    const/4 v4, 0x3

    aput-object v5, v6, v4

    .line 39250
    .end local v6    # "deltaPicOrderAlwaysZeroFlag":Z
    .end local v17
    .local v4, "picOrderCntLsbLength":I
    .local p2, "deltaPicOrderAlwaysZeroFlag":Z
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v16

    .line 39251
    .local p3, "maxNumRefFrames":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39252
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    .line 39253
    .local p4, "picWidthInMbs":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 39254
    .local p5, "picHeightInMapUnits":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v21

    .line 39255
    .local p6, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v4, v21, 0x2

    mul-int/2addr v4, v5

    .line 39256
    .local p7, "frameHeightInMbs":I
    if-nez v21, :cond_7

    .line 39257
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39258
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39259
    mul-int/lit8 v17, v6, 0x10

    .line 39260
    .local v5, "frameWidth":I
    mul-int/lit8 v18, v4, 0x10

    .line 39261
    .local v6, "frameHeight":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v4

    .line 39262
    .local p8, "frameCroppingFlag":Z
    if-eqz v4, :cond_8

    .line 39263
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v8

    .line 39264
    .local v10, "frameCropLeftOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v7

    .line 39265
    .local v11, "frameCropRightOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v6

    .line 39266
    .local v12, "frameCropTopOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v5

    .line 39267
    .local v17, "frameCropBottomOffset":I
    if-nez v2, :cond_c

    .line 39268
    const/4 v4, 0x1

    .line 39269
    .local v7, "cropUnitX":I
    rsub-int/lit8 v1, v21, 0x2

    .line 39270
    .local v8, "cropUnitY":I
    .end local v18
    .local v7, "cropUnitX":I
    .local v8, "cropUnitY":I
    :goto_4
    add-int/2addr v8, v7

    mul-int/2addr v8, v4

    sub-int v17, v17, v8

    .line 39271
    add-int/2addr v6, v5

    mul-int/2addr v6, v1

    sub-int v18, v18, v6

    .line 39272
    .end local v5    # "frameWidth":I
    .end local v6    # "frameHeight":I
    .local p9, "frameWidth":I
    .local p10, "frameHeight":I
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39273
    .local v5, "pixelWidthHeightRatio":F
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    .line 39274
    .local p11, "vuiParametersPresentFlag":Z
    if-eqz v0, :cond_9

    .line 39275
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    .line 39276
    .local v6, "aspectRatioInfoPresentFlag":Z
    if-eqz v0, :cond_9

    .line 39277
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v2

    .line 39278
    .local v7, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v2, v0, :cond_a

    .line 39279
    invoke-virtual {v3, v9}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v0

    .line 39280
    .local v8, "sarWidth":I
    invoke-virtual {v3, v9}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v2

    .line 39281
    .local v9, "sarHeight":I
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 39282
    int-to-float v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    .line 39283
    .end local v5    # "pixelWidthHeightRatio":F
    .local p12, "pixelWidthHeightRatio":F
    :cond_9
    :goto_5
    new-instance v11, Lcom/facebook/ads/redexgen/X/HR;

    .end local v13    # "picOrderCntType":I
    .local p14, "picOrderCntType":I
    .end local v14    # "chromaFormatIdc":I
    .local p15, "chromaFormatIdc":I
    .end local v15    # "profileIdc":I
    .local p16, "profileIdc":I
    move/from16 v19, v1

    move/from16 p0, v10

    invoke-direct/range {v11 .. v25}, Lcom/facebook/ads/redexgen/X/HR;-><init>(IIIIIIIFZZIIIZ)V

    return-object v11

    .line 39284
    :cond_a
    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A04:[F

    array-length v0, v0

    if-ge v2, v0, :cond_b

    .line 39285
    sget-object v0, Lcom/facebook/ads/redexgen/X/HS;->A04:[F

    aget v1, v0, v2

    goto :goto_5

    .line 39286
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    const/16 v3, 0x23

    const/16 v0, 0x7e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0xb

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 39287
    .end local v7    # "aspectRatioIdc":I
    .end local v8    # "sarWidth":I
    :cond_c
    if-ne v2, v1, :cond_e

    const/4 v4, 0x1

    .line 39288
    .local v8, "subWidthC":I
    :goto_6
    if-ne v2, v0, :cond_d

    const/4 v0, 0x2

    .line 39289
    .local v7, "subHeightC":I
    .local v18, "cropUnitX":I
    :cond_d
    rsub-int/lit8 v1, v21, 0x2

    mul-int/2addr v1, v0

    goto :goto_4

    .line 39290
    :cond_e
    const/4 v4, 0x2

    goto :goto_6

    :cond_f
    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v5, "fn7YpbzvxXlInri96XbQTTrdseuocXrx"

    const/4 v4, 0x5

    aput-object v5, v6, v4

    goto/16 :goto_3

    .line 39291
    :cond_10
    if-ne v10, v0, :cond_13

    .line 39292
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result p2

    .line 39293
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    .line 39294
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    .line 39295
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v4

    int-to-long v7, v4

    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v6, v4

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_12

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39296
    .local v10, "numRefFramesInPicOrderCntCycle":J
    :cond_12
    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v5, "sL3yo27N596gnAOXUx3X3jVDrWZXEmHs"

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const-string v5, "EWRRgQnwInix360952oSCS5kmFFjSZxj"

    const/4 v4, 0x7

    aput-object v5, v6, v4

    const/4 v6, 0x0

    .local v12, "i":I
    .end local v5
    .local v17, "picOrderCntLsbLength":I
    :goto_7
    int-to-long v4, v6

    cmp-long v11, v4, v7

    if-gez v11, :cond_6

    .line 39297
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39298
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 39299
    .end local v10    # "numRefFramesInPicOrderCntCycle":J
    .end local v12    # "i":I
    .end local v17    # "picOrderCntLsbLength":I
    .restart local v5    # "pixelWidthHeightRatio":F
    :cond_13
    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v6, v4

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v5    # "pixelWidthHeightRatio":F
    .restart local v17    # "picOrderCntLsbLength":I
    :cond_14
    sget-object v6, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v5, "4FZcyZVF6YdFmLSwekyzJ"

    const/4 v4, 0x3

    aput-object v5, v6, v4

    goto/16 :goto_3
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HS;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x7t
        0xct
        0x17t
        0x0t
        0x19t
        0x14t
        0x1ft
        0x0t
        0x1ft
        0x14t
        0x17t
        0x3ft
        0x58t
        0x4ft
        0x62t
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x4ft
        0x4et
        0xat
        0x4bt
        0x5dt
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x49t
        0x5ct
        0x4bt
        0x5et
        0x53t
        0x59t
        0x49t
        0x53t
        0x4et
        0x4dt
        0xat
        0x60t
        0x4bt
        0x56t
        0x5ft
        0x4ft
        0x24t
        0xat
        0x42t
        0x35t
        0x30t
        0x31t
        0x3bt
        -0x5t
        0x2dt
        0x42t
        0x2ft
        0x17t
        0xat
        0x5t
        0x6t
        0x10t
        -0x30t
        0x9t
        0x6t
        0x17t
        0x4t
    .end array-data
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/HU;)V
    .locals 6

    .line 39300
    const/4 v5, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_5

    .line 39301
    const/4 v3, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    .line 39302
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 39303
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 39304
    .end local v3
    .end local v5
    :cond_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    add-int/2addr v3, v2

    goto :goto_1

    .line 39305
    :cond_2
    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v4

    shl-int v1, v2, v0

    const/16 v0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39306
    .local v3, "coefNum":I
    if-le v5, v2, :cond_3

    .line 39307
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    .line 39308
    :cond_3
    const/4 v0, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 39309
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    .line 39310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39311
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39312
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/HU;)V
    .locals 18

    .line 39313
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v4

    .line 39314
    .local v0, "numShortTermRefPicSets":I
    const/4 v11, -0x1

    .line 39315
    .local v1, "previousNumNegativePics":I
    const/4 v10, -0x1

    .line 39316
    .local v2, "previousNumPositivePics":I
    const/4 v0, 0x0

    new-array v13, v0, [I

    .line 39317
    .local v4, "previousDeltaPocS0":[I
    new-array v9, v0, [I

    .line 39318
    .local v5, "previousDeltaPocS1":[I
    const/4 v3, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v3, v4, :cond_16

    .line 39319
    const/4 v2, 0x1

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 39320
    .local v8, "interRefPicSetPredictionFlag":Z
    :goto_1
    if-eqz v0, :cond_e

    .line 39321
    add-int v14, v11, v10

    .line 39322
    .local v9, "previousNumDeltaPocs":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    .line 39323
    .local v10, "deltaRpsSign":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v1

    add-int/2addr v1, v2

    .line 39324
    .local v11, "absDeltaRps":I
    mul-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v17, v0, 0x1

    mul-int v17, v17, v1

    .line 39325
    .local v12, "deltaRps":I
    add-int/lit8 v0, v14, 0x1

    new-array v12, v0, [Z

    .line 39326
    .local v13, "useDeltaFlags":[Z
    const/4 v1, 0x0

    .local v14, "j":I
    :goto_2
    if-gt v1, v14, :cond_1

    .line 39327
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39328
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    aput-boolean v0, v12, v1

    .line 39329
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39330
    :cond_0
    aput-boolean v2, v12, v1

    goto :goto_3

    .line 39331
    .end local v14    # "j":I
    :cond_1
    const/4 v8, 0x0

    .line 39332
    .local v7, "i":I
    add-int/lit8 v0, v14, 0x1

    new-array v6, v0, [I

    .line 39333
    .local v14, "deltaPocS0":[I
    add-int/lit8 v0, v14, 0x1

    new-array v7, v0, [I

    .line 39334
    .local v15, "deltaPocS1":[I
    add-int/lit8 v2, v10, -0x1

    .local v16, "j":I
    :goto_4
    if-ltz v2, :cond_3

    .line 39335
    aget v1, v9, v2

    add-int v1, v1, v17

    .line 39336
    .local v17, "dPoc":I
    if-gez v1, :cond_2

    add-int v0, v11, v2

    aget-boolean v0, v12, v0

    if-eqz v0, :cond_2

    .line 39337
    add-int/lit8 v0, v8, 0x1

    .end local v7    # "i":I
    .local p0, "i":I
    aput v1, v6, v8

    move v8, v0

    .line 39338
    .end local v17    # "dPoc":I
    .end local p0    # "i":I
    .restart local v7    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 39339
    .end local v16    # "j":I
    :cond_3
    if-gez v17, :cond_4

    aget-boolean v0, v12, v14

    if-eqz v0, :cond_4

    .line 39340
    add-int/lit8 v0, v8, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    aput v17, v6, v8

    move v8, v0

    .line 39341
    .end local v16    # "i":I
    .restart local v7    # "i":I
    :cond_4
    const/4 v5, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v5, v11, :cond_8

    .line 39342
    aget v16, v13, v5

    add-int v16, v16, v17

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_15

    .line 39343
    .restart local v17    # "dPoc":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "0xLwbNcICqBOIGnxvrVU0VkzUAjp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gez v16, :cond_5

    aget-boolean v15, v12, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "OJAEm2QqqrF2kr0XAoMunq3AjjwiYhOO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "NvnxbUpcm9NzKSDUaYgmh21cCcr7HCKV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v15, :cond_5

    .line 39344
    :goto_6
    add-int/lit8 v15, v8, 0x1

    .end local v7    # "i":I
    .restart local p0    # "i":I
    aput v16, v6, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "ZxDUqDztknTqk0noe7cSqrpf0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move v8, v15

    .line 39345
    .end local v17    # "dPoc":I
    .end local p0    # "i":I
    .restart local v7    # "i":I
    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move v8, v15

    goto :goto_7

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "O1Oy4mT2J3IqGA0cLz7TSW3zbNH41BLw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bMAFoAVZGrulVErqDQ8z4qjQetYlIImf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v15, :cond_5

    goto :goto_6

    .line 39346
    .end local v3    # "j":I
    .local v3, "numNegativePics":I
    :cond_8
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 39347
    const/4 v5, 0x0

    .line 39348
    add-int/lit8 v2, v11, -0x1

    .local v17, "j":I
    :goto_8
    if-ltz v2, :cond_a

    .line 39349
    aget v1, v13, v2

    add-int v1, v1, v17

    .line 39350
    .local p0, "dPoc":I
    if-lez v1, :cond_9

    aget-boolean v0, v12, v2

    if-eqz v0, :cond_9

    .line 39351
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .local p1, "i":I
    aput v1, v7, v5

    move v5, v0

    .line 39352
    .end local p0    # "dPoc":I
    .end local p1
    .restart local v7    # "i":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 39353
    .end local v17    # "j":I
    :cond_a
    if-lez v17, :cond_b

    aget-boolean v13, v12, v14

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "tgnVuwGZauQZxVLXvW8ZTDaij"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v13, :cond_b

    .line 39354
    :goto_9
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .local v17, "i":I
    aput v17, v7, v5

    move v5, v0

    .line 39355
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_b
    const/4 v2, 0x0

    .local v0, "j":I
    .local v17, "numShortTermRefPicSets":I
    :goto_a
    if-ge v2, v10, :cond_10

    .line 39356
    aget v1, v9, v2

    add-int v1, v1, v17

    .line 39357
    .restart local p0    # "dPoc":I
    if-lez v1, :cond_c

    add-int v0, v11, v2

    aget-boolean v0, v12, v0

    if-eqz v0, :cond_c

    .line 39358
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .restart local p1
    aput v1, v7, v5

    move v5, v0

    .line 39359
    .end local p0    # "dPoc":I
    .end local p1
    .restart local v7    # "i":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v13, :cond_b

    goto :goto_9

    .line 39360
    .end local v3    # "numNegativePics":I
    .end local v7    # "i":I
    .end local v14    # "deltaPocS0":[I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    .end local v0    # "numShortTermRefPicSets":I
    .restart local v17    # "numShortTermRefPicSets":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v8

    .line 39361
    .restart local v3    # "numNegativePics":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v5

    .line 39362
    .local v0, "numPositivePics":I
    new-array v6, v8, [I

    .line 39363
    .restart local v14    # "deltaPocS0":[I
    const/4 v1, 0x0

    .local v9, "i":I
    :goto_b
    if-ge v1, v8, :cond_f

    .line 39364
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v0

    add-int/2addr v0, v2

    aput v0, v6, v1

    .line 39365
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39366
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 39367
    .end local v9    # "i":I
    :cond_f
    new-array v9, v5, [I

    .line 39368
    .local v9, "deltaPocS1":[I
    const/4 v1, 0x0

    .local v10, "i":I
    :goto_c
    if-ge v1, v5, :cond_11

    .line 39369
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v0

    add-int/2addr v0, v2

    aput v0, v9, v1

    .line 39370
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39371
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 39372
    .end local v0    # "numPositivePics":I
    :cond_10
    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_12

    .line 39373
    .local v0, "numPositivePics":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "VNLYj4nIEG05kgLFUbTjhWBq9LKgRHZO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 39374
    .end local v9    # "deltaPocS1":[I
    .end local v10    # "i":I
    .end local v11    # "absDeltaRps":I
    .end local v12    # "deltaRps":I
    .end local v13    # "useDeltaFlags":[Z
    .end local v15    # "deltaPocS1":[I
    .local v7, "deltaPocS1":[I
    .end local v9
    .end local v10
    .restart local v7    # "deltaPocS1":[I
    :cond_11
    :goto_d
    move v11, v8

    .line 39375
    move v10, v5

    .line 39376
    move-object v13, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_13

    .line 39377
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "MHTDjP3q9jqJvcAulQ6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VeGKMo1LwbXx0TG7y0g"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 39378
    .end local v0    # "numPositivePics":I
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v8    # "interRefPicSetPredictionFlag":Z
    .end local v14    # "deltaPocS0":[I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39379
    .local v0, "numPositivePics":I
    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/HS;->A02:[Ljava/lang/String;

    const-string v1, "zCcqrsPkSftUPRel4Z8ZE6iGY8rnHFMe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "knHf2kXaFD2hm93xyPTTBZZ0wItiA7C5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 39380
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .local v7, "deltaPocS1":[I
    goto :goto_d

    .line 39381
    .end local v0    # "numPositivePics":I
    .end local v3
    .end local v7    # "deltaPocS1":[I
    .end local v8
    .end local v14
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39382
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39383
    .end local v6    # "stRpsIdx":I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_16
    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/HU;I)V
    .locals 3

    .line 39384
    const/16 v2, 0x8

    .line 39385
    .local v0, "lastScale":I
    const/16 v0, 0x8

    .line 39386
    .local v1, "nextScale":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 39387
    if-eqz v0, :cond_0

    .line 39388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    move-result v0

    .line 39389
    .local p0, "deltaScale":I
    add-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 39390
    .end local p0    # "deltaScale":I
    :cond_0
    if-nez v0, :cond_1

    .line 39391
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39392
    :cond_1
    move v2, v0

    goto :goto_1

    .line 39393
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static A0G(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 39394
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 39395
    .local v0, "length":I
    const/4 v4, 0x0

    .line 39396
    .local v1, "consecutiveZeros":I
    const/4 v3, 0x0

    .line 39397
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v5, :cond_3

    .line 39398
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 39399
    .local v3, "value":I
    const/4 v0, 0x3

    if-ne v4, v0, :cond_0

    .line 39400
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 39401
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 39402
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v3, -0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39403
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 39404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39405
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 39406
    return-void

    .line 39407
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v2, :cond_1

    .line 39408
    add-int/lit8 v4, v4, 0x1

    .line 39409
    :cond_1
    if-eqz v2, :cond_2

    .line 39410
    const/4 v4, 0x0

    .line 39411
    .end local v3    # "value":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 39412
    goto :goto_0

    .line 39413
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 39414
    return-void
.end method

.method public static A0H([Z)V
    .locals 2

    .line 39415
    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    .line 39416
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 39417
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 39418
    return-void
.end method

.method public static A0I(Ljava/lang/String;B)Z
    .locals 4

    .line 39419
    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x1f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 39420
    :cond_0
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x7e

    shr-int/2addr v1, v3

    const/16 v0, 0x27

    if-ne v1, v0, :cond_2

    .line 39421
    :cond_1
    :goto_0
    return v3

    .line 39422
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
