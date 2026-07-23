.class public final Lcom/facebook/ads/redexgen/X/lD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4v;

.field public final A01:Lcom/facebook/ads/redexgen/X/53;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3180
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "icMuAGNUwG3qooMsLkIelsXOgqR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wZwGdqwzUfLFhHeDnVqZXfrekI2t19Nm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6NjHclQwJEhKen4shQzzT38fKShvFJl3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cwvHChui6ScrilPVLNLxDwwq1RZibmTM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KGSyfhH5I6lVnEy0NkdKQy5Ija"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JgLMaajFBM7mBqcCk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W9ygPHkeZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lD;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/53;)V
    .locals 1

    .line 92825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92826
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lD;->A01:Lcom/facebook/ads/redexgen/X/53;

    .line 92827
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 92828
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/L5;)V
    .locals 0

    .line 92829
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lD;-><init>(Lcom/facebook/ads/redexgen/X/53;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;JJ)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 9

    .line 92830
    const/4 v5, -0x1

    .line 92831
    .local v3, "startOfLastPacketPosition":I
    const/4 v2, -0x1

    .line 92832
    .local v4, "endOfLastPacketPosition":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 92833
    .local v5, "lastScrTimeUsInRange":J
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v8, 0x4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v0, v8, :cond_6

    .line 92834
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lC;->A01([BI)I

    move-result v1

    .line 92835
    .local v7, "nextStartCode":I
    const/16 v0, 0x1ba

    if-eq v1, v0, :cond_0

    .line 92836
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92837
    goto :goto_0

    .line 92838
    :cond_0
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92839
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L6;->A06(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v1

    .line 92840
    .local p2, "scrValue":J
    cmp-long v0, v1, v6

    if-eqz v0, :cond_3

    .line 92841
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lD;->A01:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v1

    .line 92842
    .local p4, "scrTimeUs":J
    cmp-long v0, v1, p2

    if-lez v0, :cond_1

    .line 92843
    cmp-long v0, v3, v6

    if-nez v0, :cond_4

    .line 92844
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/ads/redexgen/X/Gz;->A04(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 92845
    :cond_1
    const-wide/32 v5, 0x186a0

    sget-object v3, Lcom/facebook/ads/redexgen/X/lD;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/16 v0, 0x1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x71

    if-eq v3, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/lD;->A02:[Ljava/lang/String;

    const-string v3, "JRu5yfiOOmZm3e1j9KGmxzziCqUEhgmX"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v3, "rPvZuTIICj36zhJU166yjphfEhohU7nm"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    add-long/2addr v5, v1

    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    .line 92846
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p4

    .line 92847
    .local p0, "startOfPacketInStream":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gz;->A03(J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 92848
    .end local p0    # "startOfPacketInStream":J
    :cond_2
    move-wide v3, v1

    .line 92849
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v5

    .line 92850
    :cond_3
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/lD;->A01(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 92851
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .line 92852
    .end local v7    # "nextStartCode":I
    .end local p2    # "scrValue":J
    goto :goto_0

    .line 92853
    :cond_4
    int-to-long v0, v5

    add-long/2addr v0, p4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gz;->A03(J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92854
    :cond_6
    cmp-long v0, v3, v6

    if-eqz v0, :cond_7

    .line 92855
    int-to-long v0, v2

    add-long/2addr v0, p4

    .line 92856
    .local p0, "endOfLastPacketPositionInStream":J
    invoke-static {v3, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Gz;->A05(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 92857
    .end local p0    # "endOfLastPacketPositionInStream":J
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gz;->A03:Lcom/facebook/ads/redexgen/X/Gz;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 5

    .line 92858
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v4

    .line 92859
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    .line 92860
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92861
    return-void

    .line 92862
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92863
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    .line 92864
    .local v1, "packStuffingLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 92865
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92866
    return-void

    .line 92867
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92868
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 92869
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92870
    return-void

    .line 92871
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lC;->A01([BI)I

    move-result v1

    .line 92872
    .local v2, "nextStartCode":I
    const/16 v0, 0x1bb

    if-ne v1, v0, :cond_4

    .line 92873
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92874
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 92875
    .local v4, "systemHeaderLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 92876
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92877
    return-void

    .line 92878
    :cond_3
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92879
    .end local v4    # "systemHeaderLength":I
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 92880
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lC;->A01([BI)I

    move-result v1

    .line 92881
    const/16 v0, 0x1ba

    if-eq v1, v0, :cond_5

    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_6

    .line 92882
    :cond_5
    :goto_1
    return-void

    .line 92883
    :cond_6
    ushr-int/lit8 v1, v1, 0x8

    const/4 v0, 0x1

    if-eq v1, v0, :cond_7

    goto :goto_1

    .line 92884
    :cond_7
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92885
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v0, 0x2

    if-ge v1, v0, :cond_8

    .line 92886
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92887
    return-void

    .line 92888
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v2

    .line 92889
    .local v4, "pesPacketLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 92890
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92891
    .end local v4    # "pesPacketLength":I
    goto :goto_0
.end method


# virtual methods
.method public final AFs()V
    .locals 2

    .line 92892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0i([B)V

    .line 92893
    return-void
.end method

.method public final AIw(Lcom/facebook/ads/redexgen/X/ms;J)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92894
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v4

    .line 92895
    .local p0, "inputPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v0, 0x4e20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 92896
    .local p2, "bytesToSearch":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 92897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/lD;->A00(Lcom/facebook/ads/redexgen/X/4v;JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0
.end method
