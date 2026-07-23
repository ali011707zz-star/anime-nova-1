.class public final Lcom/facebook/ads/redexgen/X/lX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;

.field public final A02:Lcom/facebook/ads/redexgen/X/lW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3196
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "omX6mlrNbYq0LGa8KWDQoDOxuY4Jaqsm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5vCbKZ7gcP1deFubK5J3aMrnVGjcBeMu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozZJ4UCdXiLAsxGuZMu8vrfsyQyOy2Qr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "457YRIf4cJgVa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "48ELt3GeP9QgscGCGAyy0GBjQnf8y1ot"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nP9Rki4V9hDzJun2MpMPW2v7tMuO22BO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "splStgYzXsMDywgFYcc1GmuRRae3j1Zq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jQwA1XKYR4HrKvDtyQbVDHffCNmVjAZf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lX;->A03:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lX;->A04:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94722
    new-instance v0, Lcom/facebook/ads/redexgen/X/lW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A02:Lcom/facebook/ads/redexgen/X/lW;

    .line 94723
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 94724
    return-void
.end method

.method public static synthetic A00()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 94725
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lX;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 4

    .line 94726
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lX;->A02:Lcom/facebook/ads/redexgen/X/lW;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LG;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/lW;->A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 94727
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 94728
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 94729
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0xae2

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v1

    .line 94731
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 94732
    return v0

    .line 94733
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 94735
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A00:Z

    if-nez v0, :cond_1

    .line 94736
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lX;->A02:Lcom/facebook/ads/redexgen/X/lW;

    const-wide/16 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lW;->AGq(JI)V

    .line 94737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A00:Z

    .line 94738
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lX;->A02:Lcom/facebook/ads/redexgen/X/lW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/lW;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94739
    return v4
.end method

.method public final AHb()V
    .locals 0

    .line 94740
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 1

    .line 94741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A00:Z

    .line 94742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lX;->A02:Lcom/facebook/ads/redexgen/X/lW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lW;->AJ5()V

    .line 94743
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94744
    const/16 v6, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 94745
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    const/4 v4, 0x0

    .line 94746
    .local v2, "startPosition":I
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v6}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94747
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94748
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_4

    .line 94749
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94750
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94751
    move v6, v4

    .line 94752
    .local v1, "headerPosition":I
    const/4 v2, 0x0

    .line 94753
    .local v3, "validFramesCount":I
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x6

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94754
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94755
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 94756
    .local v5, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_1

    .line 94757
    const/4 v2, 0x0

    .line 94758
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94759
    add-int/lit8 v6, v6, 0x1

    sub-int v1, v6, v4

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 94760
    return v3

    .line 94761
    :cond_0
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_1

    .line 94762
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x4

    if-lt v2, v0, :cond_2

    .line 94763
    const/4 v0, 0x1

    return v0

    .line 94764
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gr;->A05([B)I

    move-result v1

    .line 94765
    .local v6, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 94766
    return v3

    .line 94767
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_1

    .line 94768
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 94769
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v3

    .line 94770
    .local v3, "length":I
    add-int/lit8 v0, v3, 0xa

    add-int/2addr v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lX;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 94771
    sget-object v2, Lcom/facebook/ads/redexgen/X/lX;->A03:[Ljava/lang/String;

    const-string v1, "eBRvK0YAHsHMNfInXbOwvDfd4dSG53RM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "womotRNroMOUij9xAXX8qTzQtzDZBBtc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94772
    .end local v3    # "length":I
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
