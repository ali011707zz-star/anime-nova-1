.class public abstract Lcom/facebook/ads/redexgen/X/Gu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gt;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 764
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xbfghvjfzJvhku5N8OELiq204nVuVPFf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QHdNkhaNqF6P8ZoHbM5E7ac9pSEOFT0I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gTrjGkh7SJSYjcOCOWWCub6Uckq9Yltj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B1r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bt5fTN19iCcMkB3LBJCDNqZ6iO4ZjItL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3vLSrbB7SQdOWYeFWsx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mXdQOoT87saNovPMynKxKkWZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FMZbalTyTizDclIiFtsmYNu0onhdvCq9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gu;->A06()V

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gu;->A02:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4u;I)I
    .locals 2

    .line 38064
    const/4 v1, 0x0

    .line 38065
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 38066
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38067
    return v1

    .line 38068
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38069
    shl-int/2addr v1, p1

    goto :goto_0
.end method

.method public static A01(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 38070
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 38071
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 38072
    .local v1, "position":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38073
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38074
    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gu;->A04(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Gt;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gt;->A03:I

    return v0
.end method

.method public static A02([BI)I
    .locals 4

    .line 38075
    array-length v1, p0

    const/4 v0, 0x7

    if-ge v1, v0, :cond_0

    .line 38076
    const/4 v0, -0x1

    return v0

    .line 38077
    :cond_0
    const/4 v2, 0x2

    .line 38078
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 38079
    .local v2, "frameSize":I
    add-int/2addr v2, v1

    .line 38080
    const v0, 0xffff

    if-ne v3, v0, :cond_1

    .line 38081
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x10

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 38082
    add-int/lit8 v2, v2, 0x3

    .line 38083
    :cond_1
    const v0, 0xac41

    if-ne p1, v0, :cond_2

    .line 38084
    add-int/lit8 v2, v2, 0x2

    .line 38085
    :cond_2
    add-int/2addr v3, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 38086
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const-string v1, "5dLepgbvmcODZNjBgadRz1gh8sb0vEN9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 4

    .line 38087
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38088
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    shr-int/lit8 v0, v0, 0x5

    if-ne v0, v1, :cond_0

    const p0, 0xbb80

    .line 38089
    .local v0, "sampleRate":I
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 38090
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 38091
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gu;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 38092
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 38093
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 38094
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 38095
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 38096
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 38097
    return-object v0

    .line 38098
    :cond_0
    const p0, 0xac44

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Gt;
    .locals 12

    .line 38099
    const/4 v2, 0x0

    .line 38100
    .local v1, "headerSize":I
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 38101
    .local v3, "syncWord":I
    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 38102
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v10

    .line 38103
    .local v2, "frameSize":I
    add-int/2addr v2, v4

    .line 38104
    const v0, 0xffff

    if-ne v10, v0, :cond_0

    .line 38105
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v10

    .line 38106
    add-int/lit8 v2, v2, 0x3

    .line 38107
    :cond_0
    add-int/2addr v10, v2

    .line 38108
    const v0, 0xac41

    if-ne v1, v0, :cond_1

    .line 38109
    add-int/lit8 v10, v10, 0x2

    .line 38110
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 38111
    .local v5, "bitstreamVersion":I
    const/4 v3, 0x3

    if-ne v7, v3, :cond_2

    .line 38112
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/Gu;->A00(Lcom/facebook/ads/redexgen/X/4u;I)I

    move-result v0

    add-int/2addr v7, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const-string v1, "JeV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38113
    .end local v5    # "bitstreamVersion":I
    .local p0, "bitstreamVersion":I
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 38114
    .local p1, "sequenceCounter":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38115
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 38116
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38117
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v4

    const v5, 0xbb80

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const-string v1, "lwIINFZkQEgov7IcPWK4ANnqSDhXt22f"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const v0, 0xac44

    if-eqz v4, :cond_9

    const v9, 0xbb80

    .line 38118
    .local v4, "sampleRate":I
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 38119
    .local p2, "frameRateIndex":I
    const/4 v11, 0x0

    .line 38120
    .local v8, "sampleCount":I
    if-ne v9, v0, :cond_5

    const/16 v0, 0xd

    if-ne v4, v0, :cond_5

    .line 38121
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gu;->A02:[I

    aget v11, v0, v4

    .line 38122
    .end local v8    # "sampleCount":I
    .local p3, "sampleCount":I
    :cond_4
    :goto_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/Gt;

    const/4 v8, 0x2

    const/4 p0, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Gt;-><init>(IIIIILcom/facebook/ads/redexgen/X/Gs;)V

    return-object v6

    .line 38123
    :cond_5
    if-ne v9, v5, :cond_4

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gu;->A02:[I

    array-length v0, v0

    if-ge v4, v0, :cond_4

    .line 38124
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gu;->A02:[I

    aget v11, v0, v4

    .line 38125
    rem-int/lit8 v2, v6, 0x5

    const/16 v1, 0xb

    const/16 v0, 0x8

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 38126
    :pswitch_0
    if-eq v4, v3, :cond_6

    if-eq v4, v0, :cond_6

    if-ne v4, v1, :cond_4

    .line 38127
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 38128
    :pswitch_1
    if-eq v4, v0, :cond_7

    if-ne v4, v1, :cond_4

    .line 38129
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 38130
    :pswitch_2
    if-eq v4, v3, :cond_8

    if-ne v4, v0, :cond_4

    .line 38131
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 38132
    :cond_9
    const v9, 0xac44

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gu;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A01:[Ljava/lang/String;

    const-string v1, "ZZS15YLfqnGzRKQmbGGBAS62S7daT6Pr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wbQ3s0ZhLtikxP7PtpYOpvXFjSSpaatC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x7

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gu;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x79t
        -0x65t
        -0x76t
        -0x71t
        -0x6bt
        0x55t
        -0x79t
        -0x77t
        0x5at
    .end array-data
.end method

.method public static A07(ILcom/facebook/ads/redexgen/X/4v;)V
    .locals 3

    .line 38133
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 38134
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    .line 38135
    .local v0, "data":[B
    const/4 v1, 0x0

    const/16 v0, -0x54

    aput-byte v0, v2, v1

    .line 38136
    const/4 v1, 0x1

    const/16 v0, 0x40

    aput-byte v0, v2, v1

    .line 38137
    const/4 v0, 0x2

    const/4 v1, -0x1

    aput-byte v1, v2, v0

    .line 38138
    const/4 v0, 0x3

    aput-byte v1, v2, v0

    .line 38139
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x4

    aput-byte v1, v2, v0

    .line 38140
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x5

    aput-byte v1, v2, v0

    .line 38141
    and-int/lit16 v0, p0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x6

    aput-byte v1, v2, v0

    .line 38142
    return-void
.end method
