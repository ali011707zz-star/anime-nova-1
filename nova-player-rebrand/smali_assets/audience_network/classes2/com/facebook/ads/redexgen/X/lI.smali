.class public final Lcom/facebook/ads/redexgen/X/lI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Hd;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3184
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fELf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CRtzdmwc22mVTvWtUEGrb2L89Zsi6Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N3iDT79zWT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QE0dTL1WJBlTTMSZUybObct7Yruejf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2s0f3KF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nKh6xiyrNv58iMY1QpFjB2stIkByl4C1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EQbEmjPFrv4Ln5yY3rHDWiHWauO7RbEC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "22fQYQCo1Sa4pTb3FTlk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lI;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93267
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    .line 93268
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A02:J

    .line 93269
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lI;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3

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

    const/16 v0, 0x32

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const-string v1, "lwVQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "W4X85THKeh5ui5hEjPAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/lI;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x49t
        -0x24t
        -0x1at
        -0x2at
        -0x2ct
        -0x1bt
        -0x29t
        -0x24t
        -0x1ft
        -0x26t
        -0x6dt
        -0x24t
        -0x1ft
        -0x17t
        -0x2ct
        -0x21t
        -0x24t
        -0x29t
        -0x6dt
        -0x44t
        -0x49t
        -0x5at
        -0x6dt
        -0x19t
        -0x2ct
        -0x26t
        -0x5bt
        -0x40t
        -0x71t
        -0x52t
        -0x3ft
        -0x43t
        -0x40t
        -0x3ft
        -0x32t
        -0x78t
        -0x69t
        -0x69t
        -0x6dt
        -0x70t
        -0x76t
        -0x78t
        -0x65t
        -0x70t
        -0x6at
        -0x6bt
        0x56t
        -0x70t
        -0x75t
        0x5at
    .end array-data
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 7

    .line 93270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93271
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    if-nez v0, :cond_0

    .line 93272
    return-void

    .line 93273
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    .line 93274
    .local v0, "bytesAvailable":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    const/16 v5, 0xa

    if-ge v0, v5, :cond_4

    .line 93275
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    rsub-int/lit8 v0, v0, 0xa

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 93276
    .local v1, "headerBytesAvailable":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    .line 93277
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    .line 93278
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    .line 93279
    invoke-static {v4, v2, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93280
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    add-int/2addr v0, v6

    if-ne v0, v5, :cond_4

    .line 93281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const-string v1, "8jY5LvW7YbHaTZ44u3JYImlIbCOMqh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "1oUslOQnEnplG8ZTymW4i1r8pTNeUj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x49

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    .line 93283
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x44

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    .line 93284
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x33

    if-eq v0, v1, :cond_3

    .line 93285
    :cond_2
    const/16 v2, 0x1a

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lI;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93286
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    .line 93287
    return-void

    .line 93288
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 93289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A05:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v0

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    .line 93290
    .end local v1    # "headerBytesAvailable":I
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 93291
    .local v1, "bytesToWrite":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93292
    iget v3, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/lI;->A07:[Ljava/lang/String;

    const-string v1, "dnD6Rrkwc9mF5nVn4sILdynL2747n3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    .line 93293
    return-void

    :cond_5
    add-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    return-void
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 5

    .line 93294
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93295
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93296
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 93297
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 93298
    const/16 v2, 0x23

    const/16 v1, 0xf

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93299
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 93300
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93301
    return-void
.end method

.method public final AGp()V
    .locals 7

    .line 93302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    if-eq v1, v0, :cond_1

    .line 93304
    :cond_0
    return-void

    .line 93305
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lI;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 93306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A03:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lI;->A02:J

    iget v4, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93307
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    .line 93308
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 93309
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 93310
    return-void

    .line 93311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    .line 93312
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 93313
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lI;->A02:J

    .line 93314
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:I

    .line 93315
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:I

    .line 93316
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 93317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A04:Z

    .line 93318
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A02:J

    .line 93319
    return-void
.end method
