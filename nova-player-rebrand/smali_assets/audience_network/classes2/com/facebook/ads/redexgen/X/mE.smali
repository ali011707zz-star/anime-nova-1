.class public final Lcom/facebook/ads/redexgen/X/mE;
.super Lcom/facebook/ads/redexgen/X/Iu;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "INCREASE_VISIBILITY"
    }
    value = "To support OculusMp4Extractor"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerAtom"
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/mE;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/mD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3225
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GA2pmS7X4ROGOgByNCdi18taC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aAh4RNygY6pz4IdlAQ9iIXEvCFWWkzLF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JuodTrkofMpjka010"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J1Lmlws0eqmUUC5GC3jhEdxTYojxk4jf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6Ya7uqSvo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3XyRCMiSsp8rG7f8J4q6xkUhsqnZzFaE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VspF2Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vTSdivoAe22KROlTGGoK4NP8GmV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mE;->A05()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 97428
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Iu;-><init>(I)V

    .line 97429
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/mE;->A00:J

    .line 97430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:Ljava/util/List;

    .line 97431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    .line 97432
    return-void
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mE;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mE;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x7t
        0xbt
        0xat
        0x10t
        0x5t
        0xdt
        0xat
        0x1t
        0x16t
        0x17t
        0x5et
        0x44t
        0x69t
        0x25t
        0x2ct
        0x28t
        0x3ft
        0x2ct
        0x3at
        0x73t
        0x69t
    .end array-data
.end method


# virtual methods
.method public final A06(I)Lcom/facebook/ads/redexgen/X/mE;
    .locals 6

    .line 97433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 97434
    .local v0, "childrenSize":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 97435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const-string v1, "n49CDGF4gSULbNzRfDOXSmTNWTogkE10"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "P3Agw1JJwclCkyu9DcuVtuUqOjxfkaYK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/mE;

    .line 97436
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/mE;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    if-ne v0, p1, :cond_0

    .line 97437
    return-object v3

    .line 97438
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/mE;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97439
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const-string v1, "eWhxbLiQvYVwUHrDqb1spRuVxj0ikF7I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "G0JrlMiW26lgTwAQcPtVzhOkcvjPkvCh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/mD;
    .locals 6

    .line 97440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 97441
    .local v0, "childrenSize":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 97442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/mD;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 97443
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/mD;
    sget-object v2, Lcom/facebook/ads/redexgen/X/mE;->A04:[Ljava/lang/String;

    const-string v1, "r5cbbIuLaeCnR7fWkiITKmUfsEKVcSuB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    if-ne v0, p1, :cond_0

    .line 97444
    return-object v3

    .line 97445
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/mD;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97446
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/mE;)V
    .locals 1

    .line 97447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97448
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/mD;)V
    .locals 1

    .line 97449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97450
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 97451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A02(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0x9

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mE;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A02:Ljava/util/List;

    .line 97452
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mE;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    .line 97453
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97454
    return-object v0
.end method
