.class public final Lcom/facebook/ads/redexgen/X/lG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Hd;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0A:Lcom/facebook/ads/redexgen/X/HN;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3182
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sfI6nyeMmjCQTVuCF4qtLy1yjQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oMMkuqn3AEHt3nTJ2MOQ2D2uSIMoL5hR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "njiJ7f0cFz7yvYhslZfI3p6AsrETAKAq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QYzjeJ7DBautBSe7mq0LOiDdFPwmAbmn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JPkUATb4vKYtG67zqSLtKl3hIns3qHla"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LddklOggznimrifNDzyDRJC2bK2Jwwl3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KQOf5F07mNCBpldsJ3B6cw89YczO0oD4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93027
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lG;-><init>(Ljava/lang/String;)V

    .line 93028
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 93029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93030
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93031
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    .line 93032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, -0x1

    aput-byte v0, v1, v2

    .line 93033
    new-instance v0, Lcom/facebook/ads/redexgen/X/HN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    .line 93034
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 93035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lG;->A0B:Ljava/lang/String;

    .line 93036
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 9

    .line 93037
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v8

    .line 93038
    .local v0, "data":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 93039
    .local v1, "startOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v6

    .line 93040
    .local v2, "endOffset":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 93041
    aget-byte v1, v8, v4

    const/16 v0, 0xff

    and-int/2addr v1, v0

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    .line 93042
    .local v4, "byteIsFF":Z
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Z

    if-eqz v0, :cond_2

    aget-byte v1, v8, v4

    const/16 v0, 0xe0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_2

    const/4 v7, 0x1

    .line 93043
    .local v5, "found":Z
    :goto_2
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93044
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0C:[Ljava/lang/String;

    const-string v1, "cXytat7P8iKtLP6TqIlLVzlvPDaZG4kX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jOC7bwxKPNAtckDXCFNPXzZbhL30f8uL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v7, :cond_1

    .line 93045
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93046
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Z

    .line 93047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    aget-byte v0, v8, v4

    aput-byte v0, v1, v3

    .line 93048
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93049
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93050
    return-void

    .line 93051
    .end local v4    # "byteIsFF":Z
    .end local v5    # "found":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93052
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 93053
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 93054
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93055
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 93056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93057
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93058
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93059
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    if-ge v1, v0, :cond_0

    .line 93060
    return-void

    .line 93061
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 93062
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0C:[Ljava/lang/String;

    const-string v1, "FJBco80YTxCtRjQ9gQqQy4qETqBIMl0G"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "R9O1kZ0wfg8ZyFlwYf0hmCttc3ths7ud"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    iget v7, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93063
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A03:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 93064
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93065
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93066
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 93067
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    const/4 v2, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 93068
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    invoke-virtual {p1, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 93069
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93070
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    if-ge v0, v2, :cond_0

    .line 93071
    return-void

    .line 93072
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HN;->A00(I)Z

    move-result v0

    .line 93074
    .local v1, "parsedHeader":Z
    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 93075
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93076
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93077
    return-void

    .line 93078
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    .line 93079
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A07:Z

    if-nez v0, :cond_2

    .line 93080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A04:I

    int-to-long v5, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v5, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    int-to-long v0, v0

    div-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/lG;->A03:J

    .line 93081
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A06:Ljava/lang/String;

    .line 93082
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A06:Ljava/lang/String;

    .line 93083
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 93084
    const/16 v0, 0x1000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A01:I

    .line 93085
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    .line 93086
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0B:Ljava/lang/String;

    .line 93087
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93088
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 93089
    .local v5, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93090
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lG;->A07:Z

    .line 93091
    .end local v5    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93092
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93093
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93094
    return-void
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 93095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93096
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_0

    .line 93097
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    packed-switch v0, :pswitch_data_0

    .line 93098
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93099
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A01(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 93100
    goto :goto_0

    .line 93101
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A02(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 93102
    goto :goto_0

    .line 93103
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A00(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 93104
    goto :goto_0

    .line 93105
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 93106
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93107
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A06:Ljava/lang/String;

    .line 93108
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93109
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 93110
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 93111
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 93112
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 93113
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 93114
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 93115
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 93116
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Z

    .line 93117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 93118
    return-void
.end method
