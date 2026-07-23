.class public final Lcom/facebook/ads/redexgen/X/LJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:[Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 976
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5V45xVrzlJXesqnrbjrZeT76qkPwv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "706Txtts1K7q5FoHp33PEv9HaNMSsjAK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qupHUySH2p9zJgxISfihn0myWA92wmd9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5DvGIEuDVuIxxSW2dLmZtZYg2a6kN8VU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "n2fidlshYBQzN55WQs4Vi6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kTscsm2f8c9DflsdA4bvXVbGUagx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mbeoGjxKtAefmgmFA563kx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LJ;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;)V"
        }
    .end annotation

    .line 49664
    .local p1, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Ljava/util/List;

    .line 49666
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    .line 49667
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/LJ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/LJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A03:[Ljava/lang/String;

    const-string v1, "BUpOOmvQBkZMcHt4Z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

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

.method public static A01()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x72t
        -0x4dt
        -0x45t
        -0x5at
        -0x4ft
        -0x52t
        -0x57t
        0x65t
        -0x58t
        -0x4ft
        -0x4ct
        -0x48t
        -0x56t
        -0x57t
        0x65t
        -0x58t
        -0x5at
        -0x4bt
        -0x47t
        -0x52t
        -0x4ct
        -0x4dt
        0x65t
        -0x4et
        -0x52t
        -0x4et
        -0x56t
        0x65t
        -0x47t
        -0x42t
        -0x4bt
        -0x56t
        0x65t
        -0x4bt
        -0x49t
        -0x4ct
        -0x45t
        -0x52t
        -0x57t
        -0x56t
        -0x57t
        0x7ft
        0x65t
        -0x26t
        -0x17t
        -0x17t
        -0x1bt
        -0x1et
        -0x24t
        -0x26t
        -0x13t
        -0x1et
        -0x18t
        -0x19t
        -0x58t
        -0x24t
        -0x22t
        -0x26t
        -0x5at
        -0x51t
        -0x57t
        -0x4ft
        -0x74t
        -0x65t
        -0x65t
        -0x69t
        -0x6ct
        -0x72t
        -0x74t
        -0x61t
        -0x6ct
        -0x66t
        -0x67t
        0x5at
        -0x72t
        -0x70t
        -0x74t
        0x58t
        0x62t
        0x5bt
        0x63t
    .end array-data
.end method


# virtual methods
.method public final A02(JLcom/facebook/ads/redexgen/X/4v;)V
    .locals 6

    .line 49668
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 49669
    return-void

    .line 49670
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 49671
    .local v0, "userDataStartCode":I
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v5

    .line 49672
    .local v1, "userDataIdentifier":I
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 49673
    .local v2, "userDataTypeCode":I
    const/16 v0, 0x1b2

    if-ne v1, v0, :cond_2

    const v3, 0x47413934

    sget-object v1, Lcom/facebook/ads/redexgen/X/LJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A03:[Ljava/lang/String;

    const-string v1, "5ag0VzOfRdhx9UNauvnxAz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "f0o3UWjxlhBFesYxHlhgg4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_2

    const/4 v0, 0x3

    if-ne v4, v0, :cond_2

    .line 49674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/H3;->A04(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 49675
    :cond_2
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 9

    .line 49676
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 49677
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 49678
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v2

    .line 49679
    .local v1, "output":Lcom/facebook/ads/redexgen/X/Hd;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/qI;

    .line 49680
    .local v2, "channelFormat":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 49681
    .local v3, "channelMimeType":Ljava/lang/String;
    const/16 v5, 0x2b

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49682
    const/16 v5, 0x3e

    const/16 v1, 0x13

    const/16 v0, 0x25

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x3f

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49683
    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 49684
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 49685
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 49686
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0H:I

    .line 49687
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0n(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    .line 49688
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A03:I

    .line 49689
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0Z(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    .line 49690
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 49691
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 49692
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 49693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    aput-object v2, v0, v3

    .line 49694
    .end local v1    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    .end local v2    # "channelFormat":Lcom/facebook/ads/redexgen/X/qI;
    .end local v3    # "channelMimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 49695
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 49696
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
