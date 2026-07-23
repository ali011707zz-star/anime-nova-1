.class public final Lcom/facebook/ads/redexgen/X/lw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/HA;

.field public A01:Lcom/facebook/ads/redexgen/X/Jb;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3211
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IFBRawCVF0AWJOiiVagp2bzm1iWWQKSj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "auHMqC8YUXWsvqiTg7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x05hwyQceYKgfv4KdHsaZDzMFYGIFABO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EiWauAjA92n8uYBsDF1eTop4V9uY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nHLlm8XHOjaWHtwU5p4BIc0GM3UweWlu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dBwF9hq9j3gGLabp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n4a5QuSOEmxq5i2DA2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zy0ftHIbrTR5qGqkd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lw;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lw;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lx;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lw;->A05:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/4v;
    .locals 1

    .line 95216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95217
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/lw;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/lw;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A04:[Ljava/lang/String;

    const-string v1, "IEdap1c7a0gADNuxefg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lw;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x47t
        0x4ft
        0x4at
        0x43t
        0x42t
        0x6t
        0x52t
        0x49t
        0x6t
        0x42t
        0x43t
        0x52t
        0x43t
        0x54t
        0x4bt
        0x4ft
        0x48t
        0x43t
        0x6t
        0x44t
        0x4ft
        0x52t
        0x55t
        0x52t
        0x54t
        0x43t
        0x47t
        0x4bt
        0x6t
        0x52t
        0x5ft
        0x56t
        0x43t
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 95218
    new-instance v2, Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/JX;-><init>()V

    .line 95219
    .local v0, "header":Lcom/facebook/ads/redexgen/X/JX;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 95220
    .end local v2
    .end local v4
    :cond_0
    return v4

    .line 95221
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 95222
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 95223
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 95224
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/lw;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ly;->A01(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95225
    new-instance v0, Lcom/facebook/ads/redexgen/X/ly;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ly;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    .line 95226
    :goto_0
    return v3

    .line 95227
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/lw;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lt;->A06(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95228
    new-instance v0, Lcom/facebook/ads/redexgen/X/lt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lt;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    goto :goto_0

    .line 95229
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/lw;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A02(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95230
    new-instance v0, Lcom/facebook/ads/redexgen/X/lv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    goto :goto_0

    .line 95231
    :cond_4
    return v4
.end method

.method public static synthetic A04()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 95232
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lw;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lw;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 0

    .line 95233
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Lcom/facebook/ads/redexgen/X/HA;

    .line 95234
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    if-nez v0, :cond_0

    .line 95237
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95238
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 95239
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/lw;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A04:[Ljava/lang/String;

    const-string v1, "ISTJLhLpuA8o4P7J"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 95240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Lcom/facebook/ads/redexgen/X/HA;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v2

    .line 95241
    .local v0, "trackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 95242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Jb;->A08(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 95243
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    .line 95244
    .end local v0    # "trackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jb;->A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95245
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lw;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public final AHb()V
    .locals 0

    .line 95246
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 1

    .line 95247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    if-eqz v0, :cond_0

    .line 95248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jb;->A07(JJ)V

    .line 95249
    :cond_0
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95250
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/3K; {:try_start_0 .. :try_end_0} :catch_0

    .line 95251
    .local v0, "e":Lcom/facebook/ads/redexgen/X/3K;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method
