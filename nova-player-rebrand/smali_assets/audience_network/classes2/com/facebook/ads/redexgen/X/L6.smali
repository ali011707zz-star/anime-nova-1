.class public final Lcom/facebook/ads/redexgen/X/L6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4v;

.field public final A07:Lcom/facebook/ads/redexgen/X/53;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 966
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "voRQ6Eoiy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dM5sUr3BWW4nkGo5nRVfbphD0FkiLgeI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t4ngtozvUcRON5qFCPMw9NZHviWOcz8N"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HR4o0SgaegzvmEvMyBsSV3cy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Fxd3YqblXENYapC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iFe6DhKEBr1iW4qwRCto7Lk6hMgexe67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "drzzj9o5hc6Li6ZR2JGiBSJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L6;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L6;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49234
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A07:Lcom/facebook/ads/redexgen/X/53;

    .line 49235
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:J

    .line 49236
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:J

    .line 49237
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    .line 49238
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    .line 49239
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 2

    .line 49240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0i([B)V

    .line 49241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Z

    .line 49242
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49243
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49244
    const-wide/16 v2, 0x4e20

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 49245
    .local v1, "bytesToSearch":I
    const/4 v7, 0x0

    .line 49246
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    int-to-long v0, v7

    const/4 v3, 0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_0

    .line 49247
    int-to-long v0, v7

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 49248
    return v3

    .line 49249
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/L6;->A09:[Ljava/lang/String;

    const-string v1, "JjjcAHcIe3bphcpehmdhx0lOvmd2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 49250
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v4}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 49252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/L6;->A04(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:J

    .line 49253
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Z

    .line 49254
    return v2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49255
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v1

    .line 49256
    .local v0, "inputLength":J
    const-wide/16 v3, 0x4e20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v6, v3

    .line 49257
    .local v3, "bytesToSearch":I
    int-to-long v3, v6

    sub-long/2addr v1, v3

    .line 49258
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v4

    const/4 v3, 0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 49259
    iput-wide v1, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 49260
    return v3

    .line 49261
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 49262
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 49264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/L6;->A05(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:J

    .line 49265
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A05:Z

    .line 49266
    return v2
.end method

.method private A03([BI)I
    .locals 2

    .line 49267
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    return v1
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 7

    .line 49268
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 49269
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v5

    .line 49270
    .local v1, "searchEndPosition":I
    .local v2, "searchPosition":I
    :goto_0
    add-int/lit8 v0, v5, -0x3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v0, :cond_1

    .line 49271
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/L6;->A03([BI)I

    move-result v1

    .line 49272
    .local v3, "nextStartCode":I
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_0

    .line 49273
    add-int/lit8 v0, v6, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 49274
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L6;->A06(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v1

    .line 49275
    .local v6, "scrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49276
    return-wide v1

    .line 49277
    .end local v3    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49278
    .end local v2    # "searchPosition":I
    :cond_1
    return-wide v3
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 9

    .line 49279
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 49280
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    .line 49281
    .local v1, "searchEndPosition":I
    add-int/lit8 v5, v0, -0x4

    .line 49282
    .local v2, "searchPosition":I
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v5, v6, :cond_2

    .line 49283
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/L6;->A03([BI)I

    move-result v1

    .line 49284
    .local v5, "nextStartCode":I
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_1

    .line 49285
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 49286
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L6;->A06(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49287
    .local v6, "scrValue":J
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/L6;->A09:[Ljava/lang/String;

    const-string v1, "fZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    .line 49288
    return-wide v3

    .line 49289
    .end local v5    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 49290
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v7
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 6

    .line 49291
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v5

    .line 49292
    .local v0, "originalPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 49293
    return-wide v3

    .line 49294
    :cond_0
    new-array v2, v0, [B

    .line 49295
    .local v1, "scrBytes":[B
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 49296
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 49297
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/L6;->A0A([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49298
    return-wide v3

    .line 49299
    :cond_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/L6;->A07([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A07([B)J
    .locals 13

    .line 49300
    const/4 v4, 0x0

    aget-byte v0, p0, v4

    int-to-long v2, v0

    const-wide/16 v0, 0x38

    and-long/2addr v2, v0

    const/4 v12, 0x3

    shr-long/2addr v2, v12

    const/16 v0, 0x1e

    shl-long/2addr v2, v0

    aget-byte v0, p0, v4

    int-to-long v4, v0

    const-wide/16 v10, 0x3

    and-long/2addr v4, v10

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v0, 0x14

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v0, p0, v1

    int-to-long v4, v0

    const-wide/16 v6, 0xf8

    and-long/2addr v4, v6

    shr-long/2addr v4, v12

    const/16 v0, 0xf

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aget-byte v0, p0, v1

    int-to-long v4, v0

    and-long/2addr v4, v10

    const/16 v0, 0xd

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aget-byte v0, p0, v12

    int-to-long v4, v0

    and-long/2addr v4, v8

    const/4 v0, 0x5

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    shr-long/2addr v0, v12

    or-long/2addr v2, v0

    return-wide v2
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L6;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x13t
        -0x21t
        0x14t
        0x32t
        0x28t
        0x2dt
        0x26t
        -0x21t
        0x13t
        0x8t
        0xct
        0x4t
        0x1et
        0x14t
        0xdt
        0x12t
        0x4t
        0x13t
        -0x21t
        0x28t
        0x2dt
        0x32t
        0x33t
        0x24t
        0x20t
        0x23t
        -0x13t
        0x12t
        0x37t
        0x3ft
        0x2at
        0x35t
        0x32t
        0x2dt
        -0x17t
        0x2dt
        0x3et
        0x3bt
        0x2at
        0x3dt
        0x32t
        0x38t
        0x37t
        0x3t
        -0x17t
        0x16t
        0x39t
        0xat
        0x3bt
        0x38t
        0x27t
        0x3at
        0x2ft
        0x35t
        0x34t
        0x18t
        0x2bt
        0x27t
        0x2at
        0x2bt
        0x38t
    .end array-data
.end method

.method public static A0A([B)Z
    .locals 3

    .line 49301
    const/4 v2, 0x0

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    .line 49302
    return v2

    .line 49303
    :cond_0
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 49304
    return v2

    .line 49305
    :cond_1
    aget-byte v0, p0, v1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 49306
    return v2

    .line 49307
    :cond_2
    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_3

    .line 49308
    return v2

    .line 49309
    :cond_3
    const/16 v0, 0x8

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49310
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A05:Z

    if-nez v0, :cond_0

    .line 49311
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L6;->A02(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 49312
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 49313
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 49314
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A04:Z

    if-nez v0, :cond_2

    .line 49315
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L6;->A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 49316
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 49317
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 49318
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A07:Lcom/facebook/ads/redexgen/X/53;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v5

    .line 49319
    .local v0, "minScrPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A07:Lcom/facebook/ads/redexgen/X/53;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v3

    .line 49320
    .local v4, "maxScrPositionUs":J
    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    .line 49321
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 49322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    const/16 v3, 0x12

    const/16 v0, 0x7a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/L6;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/16 v0, 0x70

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/L6;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x2d

    const/16 v3, 0x10

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/L6;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49323
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    .line 49324
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0
.end method

.method public final A0C()J
    .locals 2

    .line 49325
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:J

    return-wide v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/53;
    .locals 1

    .line 49326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A07:Lcom/facebook/ads/redexgen/X/53;

    return-object v0
.end method

.method public final A0E()Z
    .locals 1

    .line 49327
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Z

    return v0
.end method
