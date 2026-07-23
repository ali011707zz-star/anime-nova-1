.class public final Lcom/facebook/ads/redexgen/X/mf;
.super Lcom/facebook/ads/redexgen/X/Hu;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3259
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lB4dHhjpy3abWZhQq1wH5EBAR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZuPpDuw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FbPLOQU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "U7rP1AfGJoZ3goBfYNThYKT2IP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TmhX3SF8er8D0wPa9QxyxNkwR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Alay8YZwXgHUhbAemAZh94CmGu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aeAWKwor"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mf;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mf;->A01()V

    const/16 v3, 0x5622

    const v2, 0xac44

    const/16 v1, 0x1588

    const/16 v0, 0x2b11

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mf;->A05:[I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 0

    .line 99164
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hu;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 99165
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mf;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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
    .locals 4

    const/16 v3, 0x53

    sget-object v2, Lcom/facebook/ads/redexgen/X/mf;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/mf;->A04:[Ljava/lang/String;

    const-string v1, "jv2UBL9GlnQlzNWQDlysyfO0pU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rlPmYvRzpLfwn1KnxKXQ0LEEGB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mf;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        0xft
        -0x2t
        0x3t
        0x9t
        -0x46t
        0x0t
        0x9t
        0xct
        0x7t
        -0x5t
        0xet
        -0x46t
        0x8t
        0x9t
        0xet
        -0x46t
        0xdt
        0xft
        0xat
        0xat
        0x9t
        0xct
        0xet
        -0x1t
        -0x2t
        -0x2ct
        -0x46t
        -0x21t
        -0xdt
        -0x1et
        -0x19t
        -0x13t
        -0x53t
        -0x1bt
        -0x4bt
        -0x51t
        -0x51t
        -0x55t
        -0x21t
        -0x16t
        -0x21t
        -0xbt
        -0x58t
        -0x44t
        -0x55t
        -0x50t
        -0x4at
        0x76t
        -0x52t
        0x7et
        0x78t
        0x78t
        0x74t
        -0x4ct
        -0x4dt
        -0x58t
        -0x42t
        0x7et
        -0x6et
        -0x7ft
        -0x7at
        -0x74t
        0x4ct
        -0x76t
        -0x73t
        0x51t
        0x7et
        0x4at
        -0x77t
        0x7et
        -0x6ft
        -0x76t
        -0x48t
        -0x34t
        -0x45t
        -0x40t
        -0x3at
        -0x7at
        -0x3ct
        -0x39t
        -0x44t
        -0x42t
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/mb;
        }
    .end annotation

    .line 99166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A02:Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 99167
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 99168
    .local v0, "header":I
    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    .line 99169
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 99170
    shr-int/lit8 v0, v2, 0x2

    and-int/lit8 v1, v0, 0x3

    .line 99171
    .local v2, "sampleRateIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/mf;->A05:[I

    aget v5, v0, v1

    .line 99172
    .local v3, "sampleRate":I
    new-instance v4, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 99173
    const/16 v2, 0x49

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99174
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99175
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99176
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 99177
    .local v4, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 99178
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mf;->A01:Z

    .line 99179
    .end local v2    # "sampleRateIndex":I
    .end local v3    # "sampleRate":I
    .end local v4    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :goto_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mf;->A02:Z

    .line 99180
    .end local v0    # "header":I
    :goto_1
    return v3

    .line 99181
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 99182
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    if-ne v0, v2, :cond_2

    const/16 v2, 0x1c

    const/16 v1, 0xf

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mf;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 99183
    .local v2, "mimeType":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 99184
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99185
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 99186
    const/16 v0, 0x1f40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99187
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 99188
    .local v3, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 99189
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mf;->A01:Z

    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "format":Lcom/facebook/ads/redexgen/X/qI;
    goto :goto_0

    .line 99190
    :cond_2
    const/16 v2, 0x2b

    const/16 v1, 0xf

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mf;->A00(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 99191
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/16 v0, 0xa

    if-ne v1, v0, :cond_5

    goto :goto_0

    .line 99192
    :cond_4
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    goto :goto_1

    .line 99193
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4v;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 99194
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    move-wide v5, p2

    if-ne v1, v0, :cond_0

    .line 99195
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v8

    .line 99196
    .local v0, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 99197
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 99198
    return v2

    .line 99199
    .end local v0    # "sampleSize":I
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 99200
    .local v0, "packetType":I
    const/4 v3, 0x0

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mf;->A01:Z

    if-nez v0, :cond_1

    .line 99201
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    new-array v5, v0, [B

    .line 99202
    .local v3, "audioSpecificConfig":[B
    array-length v0, v5

    invoke-virtual {p1, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 99203
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Gn;->A03([B)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v7

    .line 99204
    .local v4, "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    new-instance v6, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 99205
    const/16 v4, 0x3a

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/mf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Gm;->A02:Ljava/lang/String;

    .line 99206
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Gm;->A00:I

    .line 99207
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Gm;->A01:I

    .line 99208
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 99209
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 99211
    .local v5, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 99212
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mf;->A01:Z

    .line 99213
    return v3

    .line 99214
    .end local v3    # "audioSpecificConfig":[B
    .end local v4    # "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    .end local v5    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mf;->A00:I

    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    if-ne v4, v2, :cond_3

    .line 99215
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v8

    .line 99216
    .local v1, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 99217
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 99218
    return v2

    .line 99219
    :cond_3
    return v3
.end method
