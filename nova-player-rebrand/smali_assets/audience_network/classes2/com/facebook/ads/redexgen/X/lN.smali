.class public final Lcom/facebook/ads/redexgen/X/lN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/LC;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lN;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/LC;",
            ">;)V"
        }
    .end annotation

    .line 93957
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lN;->A04:Ljava/util/List;

    .line 93959
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A05:[Lcom/facebook/ads/redexgen/X/Hd;

    .line 93960
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A02:J

    .line 93961
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lN;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

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
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lN;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x10t
        0x10t
        0xct
        0x9t
        0x3t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        -0x31t
        0x4t
        0x16t
        0x2t
        0x13t
        0x15t
        0x2t
        0x13t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4v;I)Z
    .locals 2

    .line 93962
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93963
    return v1

    .line 93964
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 93965
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    .line 93966
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A00:I

    .line 93967
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    return v0
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 6

    .line 93968
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    if-eqz v0, :cond_3

    .line 93969
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lN;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A02(Lcom/facebook/ads/redexgen/X/4v;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93970
    return-void

    .line 93971
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lN;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/lN;->A02(Lcom/facebook/ads/redexgen/X/4v;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93972
    return-void

    .line 93973
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 93974
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    .line 93975
    .local v2, "bytesAvailable":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lN;->A05:[Lcom/facebook/ads/redexgen/X/Hd;

    array-length v1, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v0, v2, v5

    .line 93976
    .local v5, "output":Lcom/facebook/ads/redexgen/X/Hd;
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93977
    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93978
    .end local v5    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93979
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A01:I

    .line 93980
    .end local v0    # "dataPosition":I
    .end local v2    # "bytesAvailable":I
    :cond_3
    return-void
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 7

    .line 93981
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A05:[Lcom/facebook/ads/redexgen/X/Hd;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 93982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A04:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/LC;

    .line 93983
    .local v1, "subtitleInfo":Lcom/facebook/ads/redexgen/X/LC;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93984
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v3

    .line 93985
    .local v2, "output":Lcom/facebook/ads/redexgen/X/Hd;
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 93986
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v5

    .line 93987
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LC;->A02:[B

    .line 93988
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LC;->A01:Ljava/lang/String;

    .line 93989
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 93991
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A05:[Lcom/facebook/ads/redexgen/X/Hd;

    aput-object v3, v0, v4

    .line 93993
    .end local v1    # "subtitleInfo":Lcom/facebook/ads/redexgen/X/LC;
    .end local v2    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93994
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final AGp()V
    .locals 11

    .line 93995
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    if-eqz v0, :cond_1

    .line 93996
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lN;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 93997
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lN;->A05:[Lcom/facebook/ads/redexgen/X/Hd;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    .line 93998
    .local v3, "output":Lcom/facebook/ads/redexgen/X/Hd;
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/lN;->A02:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/lN;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93999
    .end local v3    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94000
    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    .line 94001
    :cond_1
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 94002
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 94003
    return-void

    .line 94004
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    .line 94005
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 94006
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lN;->A02:J

    .line 94007
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A01:I

    .line 94008
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A00:I

    .line 94009
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 94010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A03:Z

    .line 94011
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lN;->A02:J

    .line 94012
    return-void
.end method
