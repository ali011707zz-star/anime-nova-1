.class public final Lcom/facebook/ads/redexgen/X/1W;
.super Lcom/facebook/ads/redexgen/X/8M;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jp;,
        Lcom/facebook/ads/redexgen/X/Jq;,
        Lcom/facebook/ads/redexgen/X/Jo;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Jp;

.field public A03:Lcom/facebook/ads/redexgen/X/Jq;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/4u;

.field public final A08:Lcom/facebook/ads/redexgen/X/4v;

.field public final A09:Z

.field public final A0A:[Lcom/facebook/ads/redexgen/X/Jp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 99
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "StgEnyZrIiHukKZI2mjNBpxMfWWHoY2N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pPiD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4nUZoZtFS8Fi7y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "soUNpDdTYgeZzoXYzwhXpymROnExsdJX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jQfRXI2O9AZyEok5vhLK2LNFq5CUiSFO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NRbI1hfkyM6vnftXJILRzJXuHgspnZLF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iSpRtaxsShIsoCeM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1W;->A09()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6161
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8M;-><init>()V

    .line 6162
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    .line 6163
    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4u;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    .line 6164
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 6165
    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:I

    .line 6166
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 6167
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/46;->A06(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A09:Z

    .line 6168
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/Jp;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    .line 6169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 6170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jp;-><init>()V

    aput-object v0, v1, v2

    .line 6171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6172
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6173
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    .line 6174
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "zpnW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 6175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6176
    .local v0, "displayCueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;>;"
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "prFtgZEgycD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v4, v5, :cond_2

    .line 6177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A05()Lcom/facebook/ads/redexgen/X/Jo;

    move-result-object v0

    .line 6179
    .local v2, "cueInfo":Lcom/facebook/ads/redexgen/X/Jo;
    if-eqz v0, :cond_1

    .line 6180
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6181
    .end local v2    # "cueInfo":Lcom/facebook/ads/redexgen/X/Jo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6182
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jo;->A01()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6183
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6184
    .local v1, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 6185
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jo;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Jo;->A01:Lcom/facebook/ads/redexgen/X/pT;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6187
    .end local v2    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 6188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    if-nez v0, :cond_0

    .line 6189
    return-void

    .line 6190
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A07()V

    .line 6191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    .line 6192
    return-void
.end method

.method private A03()V
    .locals 9

    .line 6193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 6194
    .local v0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 6195
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 6196
    .local p1, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v5

    .line 6197
    .local p2, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v6

    .line 6198
    .local p3, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 6199
    .local p4, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 6200
    .local p5, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Jp;->A0C(IIIZZII)V

    .line 6201
    return-void
.end method

.method private A04()V
    .locals 6

    .line 6202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 6203
    .local v0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 6204
    .local v2, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 6205
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6206
    .local v4, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v4

    .line 6207
    .local v5, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 6208
    .local p0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 6209
    .local p1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 6210
    .local p2, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6211
    .local p3, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v3

    .line 6212
    .local p4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 6214
    .local p5, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 6215
    .local p6, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6216
    .local v1, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A00(III)I

    move-result v1

    .line 6217
    .local p7, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Jp;->A0B(III)V

    .line 6218
    return-void
.end method

.method private A05()V
    .locals 3

    .line 6219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 6221
    .local v0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6222
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 6223
    .local v1, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jp;->A0A(II)V

    .line 6224
    return-void
.end method

.method private A06()V
    .locals 12

    .line 6225
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v5

    .line 6226
    .local v1, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 6227
    .local v3, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 6228
    .local v4, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6229
    .local v5, "fillB":I
    invoke-static {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Jp;->A01(IIII)I

    move-result v5

    .line 6230
    .local p2, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 6231
    .local v6, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 6232
    .local p3, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 6233
    .local p1, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6234
    .local p0, "borderB":I
    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A00(III)I

    move-result v6

    .line 6235
    .local p4, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6236
    or-int/lit8 v8, v8, 0x4

    .line 6237
    .end local v6    # "borderType":I
    .local p5, "borderType":I
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v7

    .line 6238
    .local p6, "wordWrapToggle":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v9

    .line 6239
    .local p7, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v10

    .line 6240
    .local p8, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v11

    .line 6241
    .local v2, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6242
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    .end local p0    # "borderB":I
    .local p9, "borderB":I
    .end local p1
    .local p10, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Jp;->A0D(IIZIIII)V

    .line 6243
    return-void
.end method

.method private A07()V
    .locals 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    .line 6244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A01:I

    const/4 v5, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x1

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-eq v6, v3, :cond_0

    .line 6245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xad

    const/16 v1, 0x27

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x17

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x30

    const/4 v1, 0x2

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 6246
    :cond_0
    const/4 v13, 0x0

    .line 6247
    .local v0, "cuesNeedUpdate":Z
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jq;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0E([BI)V

    .line 6248
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v0

    if-lez v0, :cond_3

    .line 6249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 6250
    .local v1, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 6251
    .local v4, "blockSize":I
    const/4 v2, 0x7

    if-ne v7, v2, :cond_2

    .line 6252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 6254
    if-ge v7, v2, :cond_2

    .line 6255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18f

    const/16 v1, 0x21

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6256
    :cond_2
    if-nez v6, :cond_5

    .line 6257
    if-eqz v7, :cond_3

    .line 6258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d8

    const/16 v1, 0x1b

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0x15

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6259
    :cond_3
    if-eqz v13, :cond_4

    .line 6260
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    .line 6261
    :cond_4
    return-void

    .line 6262
    :cond_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_6

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "MRR8KxsQlbp3Ig"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_7

    .line 6263
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_13

    goto :goto_1

    .line 6264
    :cond_7
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "3dsCRaEhFxrSmzAmtZA59dB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v3

    mul-int/lit8 v0, v6, 0x8

    add-int/2addr v3, v0

    .line 6265
    .local v5, "endBlockPosition":I
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 6266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v12

    .line 6267
    .local v6, "command":I
    const/16 v0, 0x10

    const/16 v10, 0xff

    const/16 v9, 0x9f

    const/16 v8, 0x7f

    const/16 v7, 0x1f

    if-eq v12, v0, :cond_c

    .line 6268
    if-gt v12, v7, :cond_8

    .line 6269
    invoke-direct {p0, v12}, Lcom/facebook/ads/redexgen/X/1W;->A0A(I)V

    goto :goto_2

    .line 6270
    :cond_8
    if-gt v12, v8, :cond_9

    .line 6271
    invoke-direct {p0, v12}, Lcom/facebook/ads/redexgen/X/1W;->A0F(I)V

    .line 6272
    const/4 v13, 0x1

    goto :goto_2

    .line 6273
    :cond_9
    if-gt v12, v9, :cond_a

    .line 6274
    invoke-direct {p0, v12}, Lcom/facebook/ads/redexgen/X/1W;->A0B(I)V

    .line 6275
    const/4 v13, 0x1

    goto :goto_2

    .line 6276
    :cond_a
    if-gt v12, v10, :cond_b

    .line 6277
    invoke-direct {p0, v12}, Lcom/facebook/ads/redexgen/X/1W;->A0G(I)V

    .line 6278
    const/4 v13, 0x1

    goto :goto_2

    .line 6279
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15f

    const/16 v1, 0x16

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6280
    :cond_c
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_d

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "9u6P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6, v11}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6281
    if-gt v0, v7, :cond_e

    .line 6282
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1W;->A0C(I)V

    goto :goto_2

    .line 6283
    :cond_e
    if-gt v0, v8, :cond_f

    .line 6284
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1W;->A0H(I)V

    .line 6285
    const/4 v13, 0x1

    goto :goto_2

    .line 6286
    :cond_f
    if-gt v0, v9, :cond_10

    .line 6287
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1W;->A0D(I)V

    goto/16 :goto_2

    .line 6288
    :cond_10
    if-gt v0, v10, :cond_11

    .line 6289
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1W;->A0I(I)V

    .line 6290
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 6291
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x175

    const/16 v2, 0x1a

    const/16 v1, 0x1f

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "SHH7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v3

    mul-int/lit8 v0, v6, 0x6

    add-int/2addr v3, v0

    goto/16 :goto_2

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "hkixqgWbeZd8Awyy7Q6N0KpGxYgVXqbw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 6292
    goto/16 :goto_0
.end method

.method private A08()V
    .locals 2

    .line 6293
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 6294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A08()V

    .line 6295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6296
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1f3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1W;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0xbt
        0x56t
        0x48t
        0x54t
        0x58t
        0x48t
        0x51t
        0x46t
        0x48t
        0x3t
        0x51t
        0x58t
        0x50t
        0x45t
        0x48t
        0x55t
        0x3t
        0x16t
        0x59t
        0x6bt
        0x68t
        0x68t
        0x5bt
        0x64t
        0x6at
        0x33t
        -0x5t
        -0xet
        0x49t
        0x3at
        0x37t
        0x40t
        -0xet
        0x34t
        0x3et
        0x41t
        0x35t
        0x3dt
        0x25t
        0x3bt
        0x4ct
        0x37t
        -0xet
        0x3bt
        0x45t
        -0xet
        0x2t
        0x20t
        0x32t
        0x4t
        -0x8t
        0x3at
        0x4dt
        0x4ct
        -0x8t
        0x3bt
        0x4dt
        0x4at
        0x4at
        0x3dt
        0x46t
        0x4ct
        -0x8t
        0x41t
        0x46t
        0x3ct
        0x3dt
        0x50t
        -0x8t
        0x41t
        0x4bt
        -0x8t
        0x8t
        0x2at
        0x26t
        -0x4t
        -0xbt
        -0x3t
        0x9t
        0x2at
        0x28t
        0x34t
        0x29t
        0x2at
        0x37t
        0x13t
        0x45t
        0x42t
        0x42t
        0x35t
        0x3et
        0x44t
        0x3ct
        0x49t
        -0x10t
        0x45t
        0x3et
        0x43t
        0x45t
        0x40t
        0x40t
        0x3ft
        0x42t
        0x44t
        0x35t
        0x34t
        -0x10t
        0x13t
        0x1ft
        0x1dt
        0x1dt
        0x11t
        0x1et
        0x14t
        0x2ft
        0x15t
        0x28t
        0x24t
        0x1t
        -0x10t
        0x13t
        0x3ft
        0x3dt
        0x3dt
        0x31t
        0x3et
        0x34t
        0xat
        -0x10t
        -0x2at
        0x8t
        0x5t
        0x5t
        -0x8t
        0x1t
        0x7t
        -0x1t
        0xct
        -0x4dt
        0x8t
        0x1t
        0x6t
        0x8t
        0x3t
        0x3t
        0x2t
        0x5t
        0x7t
        -0x8t
        -0x9t
        -0x4dt
        -0x2at
        -0x1et
        -0x20t
        -0x20t
        -0x2ct
        -0x1ft
        -0x29t
        -0xet
        -0x1dt
        -0x3ct
        -0x37t
        -0x4dt
        -0x2at
        0x2t
        0x0t
        0x0t
        -0xct
        0x1t
        -0x9t
        -0x33t
        -0x4dt
        -0x34t
        -0x4t
        -0x2t
        -0x35t
        -0x15t
        -0x28t
        -0x17t
        -0x15t
        -0xdt
        -0x13t
        -0x4t
        -0x58t
        -0x13t
        -0xat
        -0x14t
        -0x13t
        -0x14t
        -0x58t
        -0x8t
        -0x6t
        -0x13t
        -0xbt
        -0x17t
        -0x4t
        -0x3t
        -0x6t
        -0x13t
        -0xct
        0x1t
        -0x3dt
        -0x58t
        -0x5t
        -0xft
        0x2t
        -0x13t
        -0x58t
        -0xft
        -0x5t
        -0x58t
        0x16t
        0x3ft
        0x34t
        0x40t
        0x46t
        0x3ft
        0x45t
        0x36t
        0x43t
        0x36t
        0x35t
        -0xft
        0x15t
        0x25t
        0x27t
        0x14t
        0x14t
        0x30t
        0x21t
        0x12t
        0x14t
        0x1ct
        0x16t
        0x25t
        0x30t
        0x15t
        0x12t
        0x25t
        0x12t
        -0xft
        0x33t
        0x36t
        0x37t
        0x40t
        0x43t
        0x36t
        -0xft
        0x15t
        0x25t
        0x27t
        0x14t
        0x14t
        0x30t
        0x21t
        0x12t
        0x14t
        0x1ct
        0x16t
        0x25t
        0x30t
        0x24t
        0x25t
        0x12t
        0x23t
        0x25t
        0x8t
        0x2dt
        0x35t
        0x20t
        0x2bt
        0x28t
        0x23t
        -0x21t
        0x2t
        -0x11t
        -0x21t
        0x22t
        0x2et
        0x2ct
        0x2ct
        0x20t
        0x2dt
        0x23t
        -0x7t
        -0x21t
        0x31t
        0x56t
        0x5et
        0x49t
        0x54t
        0x51t
        0x4ct
        0x8t
        0x2bt
        0x19t
        0x8t
        0x4bt
        0x57t
        0x55t
        0x55t
        0x49t
        0x56t
        0x4ct
        0x22t
        0x8t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        -0x9t
        -0x1et
        -0x30t
        0x13t
        0x18t
        0x11t
        0x22t
        0x11t
        0x13t
        0x24t
        0x15t
        0x22t
        -0x16t
        -0x30t
        -0x37t
        -0x12t
        -0xat
        -0x1ft
        -0x14t
        -0x17t
        -0x1ct
        -0x60t
        -0x39t
        -0x4dt
        -0x60t
        -0x1dt
        -0x18t
        -0x1ft
        -0xet
        -0x1ft
        -0x1dt
        -0xct
        -0x1bt
        -0xet
        -0x46t
        -0x60t
        -0x35t
        -0x10t
        -0x8t
        -0x1dt
        -0x12t
        -0x15t
        -0x1at
        -0x5et
        -0x1ct
        -0x1dt
        -0xbt
        -0x19t
        -0x5et
        -0x1bt
        -0xft
        -0x11t
        -0x11t
        -0x1dt
        -0x10t
        -0x1at
        -0x44t
        -0x5et
        -0x1ct
        0x9t
        0x11t
        -0x4t
        0x7t
        0x4t
        -0x1t
        -0x45t
        0x0t
        0x13t
        0xft
        0x0t
        0x9t
        -0x1t
        0x0t
        -0x1t
        -0x45t
        -0x2t
        0xat
        0x8t
        0x8t
        -0x4t
        0x9t
        -0x1t
        -0x2bt
        -0x45t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        0x15t
        0x28t
        0x24t
        0x15t
        0x1et
        0x14t
        0x15t
        0x14t
        -0x30t
        0x23t
        0x15t
        0x22t
        0x26t
        0x19t
        0x13t
        0x15t
        -0x30t
        0x1et
        0x25t
        0x1dt
        0x12t
        0x15t
        0x22t
        -0x16t
        -0x30t
        0x2at
        0x3ct
        0x48t
        0x4ct
        0x3ct
        0x45t
        0x3at
        0x3ct
        -0x9t
        0x45t
        0x4ct
        0x44t
        0x39t
        0x3ct
        0x49t
        -0x9t
        0x3bt
        0x40t
        0x4at
        0x3at
        0x46t
        0x45t
        0x4bt
        0x40t
        0x45t
        0x4ct
        0x40t
        0x4bt
        0x50t
        0x5t
        -0x9t
        0x47t
        0x49t
        0x3ct
        0x4dt
        0x40t
        0x46t
        0x4ct
        0x4at
        0x14t
        0x42t
        0x34t
        0x41t
        0x45t
        0x38t
        0x32t
        0x34t
        0x1dt
        0x44t
        0x3ct
        0x31t
        0x34t
        0x41t
        -0x11t
        0x38t
        0x42t
        -0x11t
        0x3dt
        0x3et
        0x3dt
        -0x4t
        0x49t
        0x34t
        0x41t
        0x3et
        -0x11t
        -0x9t
    .end array-data
.end method

.method private A0A(I)V
    .locals 5

    .line 6297
    sparse-switch p1, :sswitch_data_0

    .line 6298
    const/16 v3, 0x11

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-lt p1, v3, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 6299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x56

    const/16 v1, 0x2c

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6301
    :goto_0
    :sswitch_0
    return-void

    .line 6302
    :cond_0
    const/16 v3, 0x18

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "tIivKyJ4yVQrhz6naHsNX4hATBwVD1SZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lt p1, v3, :cond_2

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 6303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x82

    const/16 v1, 0x2b

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6304
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6305
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10b

    const/16 v1, 0x14

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6306
    :sswitch_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v3, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    .line 6307
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6308
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "FGYJlLquXUr7pMFj0Rb0j1D1hbYlwPR1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6309
    goto/16 :goto_0

    .line 6310
    :sswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A08()V

    .line 6311
    goto/16 :goto_0

    .line 6312
    :sswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A06()V

    .line 6313
    goto/16 :goto_0

    .line 6314
    :sswitch_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    .line 6315
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private A0B(I)V
    .locals 6

    .line 6316
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    .line 6317
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11f

    const/16 v1, 0x14

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6318
    .end local v0
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 6319
    :pswitch_2
    add-int/lit16 v1, p1, -0x98

    .line 6320
    .local v0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/1W;->A0E(I)V

    .line 6321
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    if-eq v0, v1, :cond_0

    .line 6322
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 6323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    goto :goto_0

    .line 6324
    .end local v0    # "window":I
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6326
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A06()V

    .line 6327
    goto :goto_0

    .line 6328
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0G()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6330
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A05()V

    .line 6331
    goto :goto_0

    .line 6332
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0G()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6334
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A04()V

    .line 6335
    goto :goto_0

    .line 6336
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0G()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "3SE5mdYm5uC9wCg4PrUGVOVOhS7UyufG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 6337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6338
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A03()V

    .line 6339
    goto :goto_0

    .line 6340
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A08()V

    .line 6341
    goto :goto_0

    .line 6342
    :pswitch_8
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_6

    .line 6343
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6344
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "LOcI8geri01bbfSL3Un4ebrkDtb9fUkR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6345
    goto/16 :goto_0

    .line 6346
    :pswitch_9
    const/4 v2, 0x1

    .local v0, "i":I
    :goto_2
    if-gt v2, v3, :cond_0

    .line 6347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A08()V

    .line 6349
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6350
    :pswitch_a
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_3
    if-gt v2, v3, :cond_0

    .line 6351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6352
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 6353
    .local v3, "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/Jp;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jp;->A0I()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0E(Z)V

    .line 6354
    .end local v3    # "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/Jp;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6355
    :pswitch_b
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_4
    if-gt v2, v3, :cond_0

    .line 6356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A0E(Z)V

    .line 6358
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6359
    :pswitch_c
    const/4 v2, 0x1

    .restart local v0    # "i":I
    :goto_5
    if-gt v2, v3, :cond_0

    .line 6360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6361
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Jp;->A0E(Z)V

    .line 6362
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6363
    :pswitch_d
    const/4 v4, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-gt v4, v3, :cond_0

    .line 6364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "wmiXxVCO1pDCphTe66oY7BPOwyAFxX93"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_b

    .line 6365
    :goto_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    rsub-int/lit8 v0, v4, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jp;->A07()V

    .line 6366
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "RojSNoyJye4svFAgcf8I6qfTjBFYUXnP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_b

    goto :goto_7

    .line 6367
    :pswitch_e
    add-int/lit8 v1, p1, -0x80

    .line 6368
    .local v0, "window":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    if-eq v0, v1, :cond_0

    .line 6369
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 6370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private A0C(I)V
    .locals 2

    .line 6371
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 6372
    :cond_0
    :goto_0
    return-void

    .line 6373
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 6374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6375
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 6376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6377
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 6378
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0
.end method

.method private A0D(I)V
    .locals 2

    .line 6379
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 6380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6381
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 6382
    :cond_1
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_2

    .line 6383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    .line 6384
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 6385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6386
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 6387
    .local v0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0
.end method

.method private A0E(I)V
    .locals 18

    .line 6388
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    aget-object v5, v0, p1

    .line 6389
    .local v1, "cueInfoBuilder":Lcom/facebook/ads/redexgen/X/Jp;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6390
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v6

    .line 6391
    .local v15, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v7

    .line 6392
    .local v16, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v8

    .line 6393
    .local v17, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v9

    .line 6394
    .local p0, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v10

    .line 6395
    .local p1, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v11

    .line 6396
    .local p2, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v12

    .line 6397
    .local p3, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v15

    .line 6398
    .local p4, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v13

    .line 6399
    .local p5, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6400
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v14

    .line 6401
    .local p6, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 6402
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v16

    .line 6403
    .local p7, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1W;->A07:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v17

    .line 6404
    .local p8, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/Jp;->A0F(ZZZIZIIIIIII)V

    .line 6405
    return-void
.end method

.method private A0F(I)V
    .locals 2

    .line 6406
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 6407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6408
    :goto_0
    return-void

    .line 6409
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    goto :goto_0
.end method

.method private A0G(I)V
    .locals 2

    .line 6410
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6411
    return-void
.end method

.method private A0H(I)V
    .locals 4

    .line 6412
    sparse-switch p1, :sswitch_data_0

    .line 6413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x133

    const/16 v1, 0x16

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6414
    :goto_0
    return-void

    .line 6415
    :sswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x250c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6416
    goto :goto_0

    .line 6417
    :sswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2518

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6418
    goto :goto_0

    .line 6419
    :sswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2500

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6420
    goto :goto_0

    .line 6421
    :sswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2514

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6422
    goto :goto_0

    .line 6423
    :sswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6424
    goto :goto_0

    .line 6425
    :sswitch_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "AONnD2CR0STnJG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "K"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x2502

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6426
    goto :goto_0

    .line 6427
    :sswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6428
    goto :goto_0

    .line 6429
    :sswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6430
    goto :goto_0

    .line 6431
    :sswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6432
    goto :goto_0

    .line 6433
    :sswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6434
    goto :goto_0

    .line 6435
    :sswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6436
    goto :goto_0

    .line 6437
    :sswitch_b
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    .line 6438
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6439
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "g2xlw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x2120

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6440
    goto/16 :goto_0

    .line 6441
    :sswitch_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6442
    goto/16 :goto_0

    .line 6443
    :sswitch_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x161

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6444
    goto/16 :goto_0

    .line 6445
    :sswitch_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2122

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6446
    goto/16 :goto_0

    .line 6447
    :sswitch_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6448
    goto/16 :goto_0

    .line 6449
    :sswitch_10
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x201d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6450
    goto/16 :goto_0

    .line 6451
    :sswitch_11
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x201c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6452
    goto/16 :goto_0

    .line 6453
    :sswitch_12
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "dnPp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x2019

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6454
    goto/16 :goto_0

    .line 6455
    :sswitch_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6456
    goto/16 :goto_0

    .line 6457
    :sswitch_14
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6458
    goto/16 :goto_0

    .line 6459
    :sswitch_15
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6460
    goto/16 :goto_0

    .line 6461
    :sswitch_16
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6462
    goto/16 :goto_0

    .line 6463
    :sswitch_17
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6464
    goto/16 :goto_0

    .line 6465
    :sswitch_18
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6466
    goto/16 :goto_0

    .line 6467
    :sswitch_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6468
    goto/16 :goto_0

    .line 6469
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_19
        0x21 -> :sswitch_18
        0x25 -> :sswitch_17
        0x2a -> :sswitch_16
        0x2c -> :sswitch_15
        0x30 -> :sswitch_14
        0x31 -> :sswitch_13
        0x32 -> :sswitch_12
        0x33 -> :sswitch_11
        0x34 -> :sswitch_10
        0x35 -> :sswitch_f
        0x39 -> :sswitch_e
        0x3a -> :sswitch_d
        0x3c -> :sswitch_c
        0x3d -> :sswitch_b
        0x3f -> :sswitch_a
        0x76 -> :sswitch_9
        0x77 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
        0x7b -> :sswitch_4
        0x7c -> :sswitch_3
        0x7d -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private A0I(I)V
    .locals 4

    .line 6470
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 6471
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    .line 6472
    :goto_0
    return-void

    .line 6473
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x149

    const/16 v1, 0x16

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jp;->A09(C)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0W()Lcom/facebook/ads/redexgen/X/8S;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 6475
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0W()Lcom/facebook/ads/redexgen/X/8S;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 6476
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0X()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/lh;
    .locals 2

    .line 6477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Ljava/util/List;

    .line 6478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lh;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0a(Lcom/facebook/ads/redexgen/X/8S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 6479
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/8M;->A0a(Lcom/facebook/ads/redexgen/X/8S;)V

    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/8S;)V
    .locals 12

    .line 6480
    move-object v4, p0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6481
    .local v2, "subtitleData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 6482
    .local v3, "inputBufferData":[B
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 6483
    :cond_0
    :goto_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "2zTM8NXP9KhrrfnQUZAXf9x7h4oPwvMb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v6, 0x3

    if-lt v0, v6, :cond_c

    .line 6484
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "a4C0oLfpRPdUSfve8yJk6dKzwRXOoh8W"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 6485
    .local v4, "ccTypeAndValid":I
    and-int/lit8 v3, v0, 0x3

    .line 6486
    .local v6, "ccType":I
    and-int/lit8 v2, v0, 0x4

    const/4 v8, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x1

    if-ne v2, v1, :cond_2

    const/4 v9, 0x1

    .line 6487
    .local v7, "ccValid":Z
    :goto_1
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    int-to-byte v7, v2

    .line 6488
    .local v11, "ccData1":B
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    int-to-byte v5, v2

    .line 6489
    .local p0, "ccData2":B
    const/4 v11, 0x2

    if-eq v3, v11, :cond_3

    if-eq v3, v6, :cond_3

    goto :goto_0

    .line 6490
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 6491
    :cond_3
    if-nez v9, :cond_4

    goto :goto_0

    .line 6492
    :cond_4
    const/16 v10, 0x49

    const/16 v9, 0xd

    const/16 v2, 0x49

    invoke-static {v10, v9, v2}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v9

    if-ne v3, v6, :cond_7

    .line 6493
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A02()V

    .line 6494
    and-int/lit16 v2, v7, 0xc0

    shr-int/lit8 v3, v2, 0x6

    .line 6495
    .local v5, "sequenceNumber":I
    iget v6, v4, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    const/4 v2, -0x1

    if-eq v6, v2, :cond_5

    iget v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    add-int/2addr v2, v0

    rem-int/2addr v2, v1

    if-eq v3, v2, :cond_5

    .line 6496
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A08()V

    .line 6497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b0

    const/16 v1, 0x28

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6498
    :cond_5
    iput v3, v4, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 6499
    and-int/lit8 v1, v7, 0x3f

    .line 6500
    .local v8, "packetSize":I
    if-nez v1, :cond_6

    .line 6501
    const/16 v1, 0x40

    .line 6502
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jq;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jq;-><init>(II)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    .line 6503
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Jq;->A03:[B

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    aput-byte v5, v3, v1

    .line 6504
    .end local v5    # "sequenceNumber":I
    .end local v8    # "packetSize":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jq;->A01:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_0

    .line 6505
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A02()V

    goto/16 :goto_0

    .line 6506
    :cond_7
    if-ne v3, v11, :cond_8

    const/4 v8, 0x1

    :cond_8
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 6507
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    if-nez v0, :cond_9

    .line 6508
    const/16 v2, 0xd4

    const/16 v1, 0x37

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 6509
    goto/16 :goto_0

    .line 6510
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Jq;->A03:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A0C:[Ljava/lang/String;

    const-string v1, "YjvVjm4QPcLmngCUKURICEhYITyNXaIl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    aput-byte v7, v3, v1

    .line 6511
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Jq;->A03:[B

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jq;->A00:I

    aput-byte v5, v3, v1

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6512
    :cond_c
    return-void
.end method

.method public final A0d()Z
    .locals 2

    .line 6513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Ljava/util/List;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic AHb()V
    .locals 0

    .line 6514
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/8M;->AHb()V

    return-void
.end method

.method public final bridge synthetic AJh(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 6515
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/8M;->AJh(J)V

    return-void
.end method

.method public final flush()V
    .locals 3

    .line 6516
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/8M;->flush()V

    .line 6517
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Ljava/util/List;

    .line 6518
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Ljava/util/List;

    .line 6519
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 6520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A0A:[Lcom/facebook/ads/redexgen/X/Jp;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:Lcom/facebook/ads/redexgen/X/Jp;

    .line 6521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A08()V

    .line 6522
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    .line 6523
    return-void
.end method
