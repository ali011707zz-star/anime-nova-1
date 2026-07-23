.class public final Lcom/facebook/ads/redexgen/X/RS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RQ;,
        Lcom/facebook/ads/redexgen/X/RR;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/i7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/i7<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            "Lcom/facebook/ads/redexgen/X/RQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/P6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/P6<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1613
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TTkBeT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dgqPpyxawDBTokVKz6usds7DGGljbLlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Om"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lOfLhIubd0jJyTpTkNltmpZf14oHCLV9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yX0qRkYxaN2cv8t3SuJSwpxSeia"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n9D4XHOOTGgVdLWa6Wuko3wZCERnKgc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NKR9b6EIrIhl49GaATLNKeLdYiLud"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RS;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62206
    new-instance v0, Lcom/facebook/ads/redexgen/X/i7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/i7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    .line 62207
    new-instance v0, Lcom/facebook/ads/redexgen/X/P6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/P6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/RK;I)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 7

    .line 62208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A08(Ljava/lang/Object;)I

    move-result v4

    .line 62209
    .local v0, "index":I
    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 62210
    return-object v6

    .line 62211
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/PF;->A0B(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62212
    .local v2, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const-string v1, "6x"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/2addr v5, p2

    if-eqz v5, :cond_5

    .line 62213
    iget v1, v3, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    not-int v0, p2

    and-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62214
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 62215
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    .line 62216
    .local v1, "info":Lcom/facebook/ads/redexgen/X/Qx;
    .restart local v1    # "info":Lcom/facebook/ads/redexgen/X/Qx;
    :goto_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 62217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/PF;->A0A(I)Ljava/lang/Object;

    .line 62218
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/RQ;->A02(Lcom/facebook/ads/redexgen/X/RQ;)V

    .line 62219
    :cond_2
    return-object v1

    .line 62220
    .end local v1    # "info":Lcom/facebook/ads/redexgen/X/Qx;
    :cond_3
    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 62221
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    goto :goto_0

    .line 62222
    .end local v1
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RS;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62223
    :cond_5
    return-object v6
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x1d

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const-string v1, "DMTuNl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/RS;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x76t
        0x70t
        0x77t
        0x23t
        0x73t
        0x71t
        0x6ct
        0x75t
        0x6at
        0x67t
        0x66t
        0x23t
        0x65t
        0x6ft
        0x62t
        0x64t
        0x23t
        0x53t
        0x51t
        0x46t
        0x23t
        0x6ct
        0x71t
        0x23t
        0x53t
        0x4ct
        0x50t
        0x57t
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1

    .line 62224
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RS;->A00(Lcom/facebook/ads/redexgen/X/RK;I)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1

    .line 62225
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RS;->A00(Lcom/facebook/ads/redexgen/X/RK;I)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    return-object v0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1

    .line 62226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/P6;->A08(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    return-object v0
.end method

.method public final A06()V
    .locals 1

    .line 62227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PF;->clear()V

    .line 62228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P6;->A09()V

    .line 62229
    return-void
.end method

.method public final A07()V
    .locals 0

    .line 62230
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RQ;->A01()V

    .line 62231
    return-void
.end method

.method public final A08(JLcom/facebook/ads/redexgen/X/RK;)V
    .locals 1

    .line 62232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/P6;->A0B(JLjava/lang/Object;)V

    .line 62233
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 2

    .line 62234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62235
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-nez v1, :cond_0

    .line 62236
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RQ;->A00()Lcom/facebook/ads/redexgen/X/RQ;

    move-result-object v1

    .line 62237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62238
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62239
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 2

    .line 62240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62241
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-nez v1, :cond_0

    .line 62242
    return-void

    .line 62243
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62244
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 2

    .line 62245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P6;->A06()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 62246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/P6;->A07(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 62247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A01:Lcom/facebook/ads/redexgen/X/P6;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/P6;->A0A(I)V

    .line 62248
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62249
    .local v0, "info":Lcom/facebook/ads/redexgen/X/RQ;
    if-eqz v0, :cond_1

    .line 62250
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RQ;->A02(Lcom/facebook/ads/redexgen/X/RQ;)V

    .line 62251
    :cond_1
    return-void

    .line 62252
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 0

    .line 62253
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RS;->A0A(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 62254
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 2

    .line 62255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62256
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-nez v1, :cond_0

    .line 62257
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RQ;->A00()Lcom/facebook/ads/redexgen/X/RQ;

    move-result-object v1

    .line 62258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62259
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62260
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    .line 62261
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 2

    .line 62262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62263
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-nez v1, :cond_0

    .line 62264
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RQ;->A00()Lcom/facebook/ads/redexgen/X/RQ;

    move-result-object v1

    .line 62265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62266
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    .line 62267
    iget v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62268
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 2

    .line 62269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62270
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-nez v1, :cond_0

    .line 62271
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RQ;->A00()Lcom/facebook/ads/redexgen/X/RQ;

    move-result-object v1

    .line 62272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62273
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    .line 62274
    iget v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    .line 62275
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/RR;)V
    .locals 7

    .line 62276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PF;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v6, :cond_8

    .line 62277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/PF;->A09(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/RK;

    .line 62278
    .local v1, "viewHolder":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/PF;->A0A(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62279
    .local v2, "record":Lcom/facebook/ads/redexgen/X/RQ;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    .line 62280
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/RR;->AKZ(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 62281
    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/RQ;->A02(Lcom/facebook/ads/redexgen/X/RQ;)V

    .line 62282
    .end local v1    # "viewHolder":Lcom/facebook/ads/redexgen/X/RK;
    .end local v2    # "record":Lcom/facebook/ads/redexgen/X/RQ;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 62283
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 62284
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    if-nez v0, :cond_2

    .line 62285
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/RR;->AKZ(Lcom/facebook/ads/redexgen/X/RK;)V

    goto :goto_1

    .line 62286
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/RR;->AHB(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    goto :goto_1

    .line 62287
    :cond_3
    iget v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    const/16 v0, 0xe

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 62288
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/RR;->AH9(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    goto :goto_1

    .line 62289
    :cond_4
    iget v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    const/16 v0, 0xc

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    .line 62290
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/RR;->AHD(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    goto :goto_1

    .line 62291
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 62292
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    const/4 v0, 0x0

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/RR;->AHB(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    goto :goto_1

    .line 62293
    :cond_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 62294
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/Qx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A03:[Ljava/lang/String;

    const-string v1, "pRTOxDzzIVV0VuKMKqyuKOShfW9n8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {p1, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/RR;->AH9(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62295
    .end local v0    # "index":I
    :cond_8
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/RK;)Z
    .locals 2

    .line 62296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62297
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/RK;)Z
    .locals 1

    .line 62298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RQ;

    .line 62299
    .local v0, "record":Lcom/facebook/ads/redexgen/X/RQ;
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
