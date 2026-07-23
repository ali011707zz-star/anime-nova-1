.class public abstract Lcom/facebook/ads/redexgen/X/oy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/60;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/p0;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/oz;",
        "E:",
        "Lcom/facebook/ads/redexgen/X/61;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/60<",
        "TI;TO;TE;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/oz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3339
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cgd1TDaxcVMzff1lRtR2y3rhLtmh1J5v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3mVGt02Eg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GhemOJNhIn1LMAkty7qqi4u9sWB6uqsq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qo0Xi3kRKf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "h5mwzI1V10xDDagqRPLzWxrZN9rQy7u9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7mnuUFNh1uUIhw2tv7exehIC7mU2Hitk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5ikXrDS3I2SzCX52iEXUFKqtVJtvkjlK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jW6s0CcND"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oy;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oy;->A0S()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/p0;[Lcom/facebook/ads/redexgen/X/oz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 103686
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/facebook/ads/redexgen/X/p0;, "[TI;"
    .local p2, "outputBuffers":[Lcom/facebook/ads/redexgen/X/oz;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103687
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    .line 103688
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    .line 103689
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    .line 103690
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    .line 103691
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    .line 103692
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    if-ge v2, v0, :cond_0

    .line 103693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0a()Lcom/facebook/ads/redexgen/X/p0;

    move-result-object v0

    aput-object v0, v1, v2

    .line 103694
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103695
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/oy;->A0C:[Lcom/facebook/ads/redexgen/X/oz;

    .line 103696
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    .line 103697
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    if-ge v2, v0, :cond_1

    .line 103698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A0C:[Lcom/facebook/ads/redexgen/X/oz;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0c()Lcom/facebook/ads/redexgen/X/oz;

    move-result-object v0

    aput-object v0, v1, v2

    .line 103699
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103700
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0O(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/65;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/65;-><init>(Lcom/facebook/ads/redexgen/X/oy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A08:Ljava/lang/Thread;

    .line 103701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103702
    return-void
.end method

.method private final A0N()Lcom/facebook/ads/redexgen/X/p0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103703
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 103704
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0Q()V

    .line 103705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 103706
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    if-nez v0, :cond_1

    .line 103707
    const/4 v0, 0x0

    goto :goto_1

    .line 103708
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    .line 103709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    monitor-exit v3

    return-object v0

    .line 103710
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0O(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oy;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0P()V
    .locals 1

    .line 103711
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 103713
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103714
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 103715
    .local v0, "exception":Lcom/facebook/ads/redexgen/X/61;, "TE;"
    if-nez v0, :cond_0

    .line 103716
    return-void

    .line 103717
    :cond_0
    throw v0
.end method

.method private A0R()V
    .locals 2

    .line 103718
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0X()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103719
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103720
    :catch_0
    move-exception v1

    .line 103721
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A0S()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        0x13t
        0xat
        -0x15t
        0x7t
        -0x4t
        0x14t
        0x0t
        0xdt
        -0x2bt
        -0x12t
        0x4t
        0x8t
        0xbt
        0x7t
        0x0t
        -0x21t
        0x0t
        -0x2t
        0xat
        -0x1t
        0x0t
        0xdt
    .end array-data
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/p0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 103722
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 103723
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    aput-object p1, v2, v1

    .line 103724
    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/oz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 103725
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/oz;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A0A()V

    .line 103726
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oy;->A0C:[Lcom/facebook/ads/redexgen/X/oz;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    aput-object p1, v2, v1

    .line 103727
    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/oy;)V
    .locals 0

    .line 103728
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0R()V

    return-void
.end method

.method private A0W()Z
    .locals 4

    .line 103729
    .local v1, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/oy;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/oy;->A0E:[Ljava/lang/String;

    const-string v1, "9DwPxvkyUmdJywitv52WFgQf7iOLAqys"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WYGXgkStQ9kUI1rtTWhvxjquSY9kHuMe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0X()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 103730
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v6

    .line 103731
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 103733
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A06:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 103734
    monitor-exit v6

    return v4

    .line 103735
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/p0;

    .line 103736
    .local v1, "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A0C:[Lcom/facebook/ads/redexgen/X/oz;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    aget-object v2, v1, v0

    .line 103737
    .local v3, "outputBuffer":Lcom/facebook/ads/redexgen/X/oz;, "TO;"
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:Z

    .line 103738
    .local v4, "resetDecoder":Z
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:Z

    .line 103739
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103740
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103741
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 103742
    .end local v0
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_2

    .line 103743
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103744
    const/high16 v0, -0x80000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 103745
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5u;->A06()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103746
    const/high16 v0, 0x8000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 103747
    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/oy;->A0Y(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/oz;Z)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 103748
    .end local v0
    :catch_0
    move-exception v0

    .line 103749
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    .local v6, "exception":Lcom/facebook/ads/redexgen/X/61;, "TE;"
    goto :goto_1

    .line 103750
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "exception":Lcom/facebook/ads/redexgen/X/61;, "TE;"
    :catch_1
    move-exception v0

    .line 103751
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    .line 103752
    .local v0, "exception":Lcom/facebook/ads/redexgen/X/61;, "TE;"
    :goto_1
    if-eqz v0, :cond_2

    .line 103753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_5

    .line 103754
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:Z

    if-eqz v0, :cond_6

    .line 103755
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/oz;->A0B()V

    .line 103756
    :goto_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/oy;->A0T(Lcom/facebook/ads/redexgen/X/p0;)V

    .line 103757
    monitor-exit v1

    goto :goto_4

    .line 103758
    :cond_6
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103759
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    .line 103760
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/oz;->A0B()V

    goto :goto_3

    .line 103761
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/oz;->A00:I

    .line 103762
    iput v4, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    .line 103763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 103764
    :goto_4
    return v5

    .line 103765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 103766
    :goto_5
    :try_start_3
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 103767
    monitor-exit v1

    .line 103768
    return v4

    .line 103769
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 103770
    .end local v1    # "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    .end local v3    # "outputBuffer":Lcom/facebook/ads/redexgen/X/oz;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method


# virtual methods
.method public abstract A0Y(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/oz;Z)Lcom/facebook/ads/redexgen/X/61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract A0a()Lcom/facebook/ads/redexgen/X/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0b()Lcom/facebook/ads/redexgen/X/oz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103771
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 103772
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0Q()V

    .line 103773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103774
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    .line 103775
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/oz;

    monitor-exit v1

    return-object v0

    .line 103776
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0c()Lcom/facebook/ads/redexgen/X/oz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public final A0d(I)V
    .locals 4

    .line 103777
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 103778
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oy;->A0B:[Lcom/facebook/ads/redexgen/X/p0;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    .line 103779
    .local v3, "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/p0;->A0C(I)V

    .line 103780
    .end local v3    # "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103781
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103782
    :cond_1
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/p0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103783
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/p0;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 103784
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0Q()V

    .line 103785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 103786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 103787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0P()V

    .line 103788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    .line 103789
    monitor-exit v1

    .line 103790
    return-void

    .line 103791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0f(Lcom/facebook/ads/redexgen/X/oz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 103792
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/oz;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 103793
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/oy;->A0U(Lcom/facebook/ads/redexgen/X/oz;)V

    .line 103794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0P()V

    .line 103795
    monitor-exit v1

    .line 103796
    return-void

    .line 103797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A5r()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103798
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0N()Lcom/facebook/ads/redexgen/X/p0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A5t()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103799
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oy;->A0b()Lcom/facebook/ads/redexgen/X/oz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AHJ(Ljava/lang/Object;)V
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
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 103800
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/p0;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/oy;->A0e(Lcom/facebook/ads/redexgen/X/p0;)V

    return-void
.end method

.method public final AHb()V
    .locals 2

    .line 103801
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 103802
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A06:Z

    .line 103803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 103804
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103805
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103806
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 103807
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 103808
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 103809
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oy;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 103810
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:Z

    .line 103811
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    .line 103812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    if-eqz v0, :cond_0

    .line 103813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0T(Lcom/facebook/ads/redexgen/X/p0;)V

    .line 103814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:Lcom/facebook/ads/redexgen/X/p0;

    .line 103815
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/p0;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0T(Lcom/facebook/ads/redexgen/X/p0;)V

    goto :goto_0

    .line 103817
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/oz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oz;->A0B()V

    goto :goto_1

    .line 103819
    :cond_2
    monitor-exit v1

    .line 103820
    return-void

    .line 103821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
