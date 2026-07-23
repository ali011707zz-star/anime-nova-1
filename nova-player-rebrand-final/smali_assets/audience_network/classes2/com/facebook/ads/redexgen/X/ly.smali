.class public final Lcom/facebook/ads/redexgen/X/ly;
.super Lcom/facebook/ads/redexgen/X/Jb;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/lz;
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/HJ;

.field public A01:Lcom/facebook/ads/redexgen/X/lz;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3212
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WZkrugZ9k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "x4SWtznAL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HpTT9hwXiF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GejxPsVIqdMqn4uNSueU2CvK5QdcE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kY6PJZpIMUpeuimCFjYxSQzMMPc04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AyPx1MENxNPCbM7HZGi1kOnAmMtkHxm9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mMmHuZ9NaaUgibHMJoRcA4q0AdWca5ys"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hii3DdXYVzyt8ReiNrO7wglp0i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ly;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95255
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 4

    .line 95256
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v3, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v3, v1

    .line 95257
    .local v0, "blockSizeKey":I
    const/4 v0, 0x6

    if-eq v3, v0, :cond_0

    const/4 v0, 0x7

    if-ne v3, v0, :cond_1

    .line 95258
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/ly;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 95259
    sget-object v2, Lcom/facebook/ads/redexgen/X/ly;->A02:[Ljava/lang/String;

    const-string v1, "Cisj8wK8S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "koTyuZ08X"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0S()J

    .line 95260
    :cond_1
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/HF;->A00(Lcom/facebook/ads/redexgen/X/4v;I)I

    move-result v1

    .line 95261
    .local v1, "result":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95262
    return v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 4

    .line 95263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 95264
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_0

    .line 95265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v3

    const-wide/32 v1, 0x464c4143

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95266
    :goto_0
    return v0

    .line 95267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02([B)Z
    .locals 3

    .line 95268
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 2

    .line 95269
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ly;->A02([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95270
    const-wide/16 v0, -0x1

    return-wide v0

    .line 95271
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ly;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0B(Z)V
    .locals 1

    .line 95272
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jb;->A0B(Z)V

    .line 95273
    if-eqz p1, :cond_0

    .line 95274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A00:Lcom/facebook/ads/redexgen/X/HJ;

    .line 95275
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A01:Lcom/facebook/ads/redexgen/X/lz;

    .line 95276
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/Ja;)Z
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 95277
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 95278
    .local v0, "data":[B
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ly;->A00:Lcom/facebook/ads/redexgen/X/HJ;

    .line 95279
    .local v1, "streamMetadata":Lcom/facebook/ads/redexgen/X/HJ;
    const/4 v3, 0x1

    if-nez v5, :cond_0

    .line 95280
    const/16 v0, 0x11

    new-instance v2, Lcom/facebook/ads/redexgen/X/HJ;

    invoke-direct {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/HJ;-><init>([BI)V

    .line 95281
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/ly;->A00:Lcom/facebook/ads/redexgen/X/HJ;

    .line 95282
    const/16 v1, 0x9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-static {v6, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 95283
    .local v3, "metadata":[B
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HJ;->A08([BLcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 95284
    return v3

    .line 95285
    .end local v3    # "metadata":[B
    :cond_0
    const/4 v4, 0x0

    aget-byte v0, v6, v4

    and-int/lit8 v1, v0, 0x7f

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 95286
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HH;->A03(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v2

    .line 95287
    .local v3, "seekTable":Lcom/facebook/ads/redexgen/X/HI;
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/HJ;->A09(Lcom/facebook/ads/redexgen/X/HI;)Lcom/facebook/ads/redexgen/X/HJ;

    move-result-object v1

    .line 95288
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ly;->A00:Lcom/facebook/ads/redexgen/X/HJ;

    .line 95289
    new-instance v0, Lcom/facebook/ads/redexgen/X/lz;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lz;-><init>(Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/HI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A01:Lcom/facebook/ads/redexgen/X/lz;

    .line 95290
    return v3

    .line 95291
    .end local v3    # "seekTable":Lcom/facebook/ads/redexgen/X/HI;
    :cond_1
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/ly;->A02([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A01:Lcom/facebook/ads/redexgen/X/lz;

    if-eqz v0, :cond_2

    .line 95293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A01:Lcom/facebook/ads/redexgen/X/lz;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/lz;->A00(J)V

    .line 95294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ly;->A01:Lcom/facebook/ads/redexgen/X/lz;

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A01:Lcom/facebook/ads/redexgen/X/JY;

    .line 95295
    :cond_2
    iget-object v3, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ly;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ly;->A02:[Ljava/lang/String;

    const-string v1, "zwTfeKiQLRobCpiZaAgtU0oyP8s29"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wrCWS6iAkk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95296
    return v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95297
    :cond_4
    return v3
.end method
