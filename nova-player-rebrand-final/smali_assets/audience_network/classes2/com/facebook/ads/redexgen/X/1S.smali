.class public final Lcom/facebook/ads/redexgen/X/1S;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/K5;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/zip/Inflater;

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;

.field public final A02:Lcom/facebook/ads/redexgen/X/4v;

.field public final A03:Lcom/facebook/ads/redexgen/X/K5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 97
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "76NlL2uX7lwdFYW1QMx5a8yy6e1HTIfb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PPHM0li7JhLOVOPCGl5v88MgokGKQYEj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LiwvhCZeMt7eMvNF2Pj8LYB8xSxq2ldh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dFyDCM0ueCIxVfSox0aflDZ7gvAI841l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LzKPlW0IyQE1s7YXIJw5EfFPQg4N9HTr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CSOqnRNK1RYkqInl5L0si0E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7S3a0phqj2SDINZS1RTIUWP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6mBJEewaGVYJqmHVNKA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1S;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6095
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1S;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Ljava/lang/String;)V

    .line 6096
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 6097
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Lcom/facebook/ads/redexgen/X/4v;

    .line 6098
    new-instance v0, Lcom/facebook/ads/redexgen/X/K5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K5;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Lcom/facebook/ads/redexgen/X/K5;

    .line 6099
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/K5;)Lcom/facebook/ads/redexgen/X/pT;
    .locals 4

    .line 6100
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    .line 6101
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 6102
    .local v1, "sectionType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v2

    .line 6103
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    add-int/2addr v1, v2

    .line 6104
    .local v3, "nextSectionPosition":I
    if-le v1, v0, :cond_0

    .line 6105
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 6106
    const/4 v0, 0x0

    return-object v0

    .line 6107
    :cond_0
    const/4 v0, 0x0

    .line 6108
    .local p0, "cue":Lcom/facebook/ads/redexgen/X/pT;
    sparse-switch v3, :sswitch_data_0

    .line 6109
    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 6110
    return-object v0

    .line 6111
    :sswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K5;->A06()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 6112
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K5;->A07()V

    .line 6113
    goto :goto_0

    .line 6114
    :sswitch_1
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/K5;->A05(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 6115
    goto :goto_0

    .line 6116
    :sswitch_2
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/K5;->A04(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 6117
    goto :goto_0

    .line 6118
    :sswitch_3
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/K5;->A03(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 6119
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1S;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const-string v1, "onjCODWUldEJohp5LCZVLSR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Jw3HdCuNfu1JKaBA98S5ZsK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1S;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x4ft
        -0x38t
        -0x2ct
        -0x5bt
        -0x3at
        -0x3ct
        -0x30t
        -0x3bt
        -0x3at
        -0x2dt
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 5

    .line 6120
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0B()I

    move-result v1

    const/16 v0, 0x78

    if-ne v1, v0, :cond_2

    .line 6121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 6122
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/util/zip/Inflater;

    .line 6123
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/util/zip/Inflater;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const-string v1, "qzpsP6hj6GdiA1o5yIc6icGGxX8HbfHZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p1, v4, v3}, Lcom/facebook/ads/redexgen/X/5C;->A1D(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/4v;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 6125
    :cond_2
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 6126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 6127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1S;->A03(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 6128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Lcom/facebook/ads/redexgen/X/K5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K5;->A07()V

    .line 6129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6130
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1S;->A05:[Ljava/lang/String;

    const-string v1, "qQU5NmoFNSXVl5etyHU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x3

    if-lt v3, v0, :cond_2

    .line 6131
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Lcom/facebook/ads/redexgen/X/K5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1S;->A00(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/K5;)Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 6132
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/pT;
    if-eqz v0, :cond_0

    .line 6133
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6134
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lf;-><init>(Ljava/util/List;)V

    return-object v0
.end method
