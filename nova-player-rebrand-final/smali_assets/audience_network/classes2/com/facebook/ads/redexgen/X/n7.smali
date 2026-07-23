.class public final Lcom/facebook/ads/redexgen/X/n7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FK;,
        Lcom/facebook/ads/redexgen/X/FJ;,
        Lcom/facebook/ads/redexgen/X/FL;,
        Lcom/facebook/ads/redexgen/X/FI;,
        Lcom/facebook/ads/redexgen/X/FM;,
        Lcom/facebook/ads/redexgen/X/FN;,
        Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$RetryActionType;,
        Lcom/facebook/ads/redexgen/X/FP;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/FJ;

.field public static final A06:Lcom/facebook/ads/redexgen/X/FJ;

.field public static final A07:Lcom/facebook/ads/redexgen/X/FJ;

.field public static final A08:Lcom/facebook/ads/redexgen/X/FJ;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/FK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/FK<",
            "+",
            "Lcom/facebook/ads/redexgen/X/FL;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/io/IOException;

.field public final A02:Lcom/facebook/ads/redexgen/X/Fb;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 3272
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "unLJAGqnT9K2C6pR52hzklfZHwTRg6Yr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LeSEUls9Myr0akOYyr4ALINYOEymKOkL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W8GYPv6JCblyMHrg4mb8qhrlE9HlP5p8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LeDDfwbzgRXTDhaT1cwFWvWAB6ITTWPz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "taf7WKL89SeyG6P6BerDozU5lBYArJ2v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BSTJObkWS6NqTAYjIRk7bCGrxc9Lgut2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ohz3nwuOVveogY5495fLWWA936p3Bkwf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/n7;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/n7;->A07()V

    const/4 v0, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/n7;->A01(ZJ)Lcom/facebook/ads/redexgen/X/FJ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/n7;->A07:Lcom/facebook/ads/redexgen/X/FJ;

    .line 3273
    const/4 v0, 0x1

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/n7;->A01(ZJ)Lcom/facebook/ads/redexgen/X/FJ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/n7;->A08:Lcom/facebook/ads/redexgen/X/FJ;

    .line 3274
    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(IJLcom/facebook/ads/redexgen/X/FG;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/n7;->A05:Lcom/facebook/ads/redexgen/X/FJ;

    .line 3275
    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(IJLcom/facebook/ads/redexgen/X/FG;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/n7;->A06:Lcom/facebook/ads/redexgen/X/FJ;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
    .end annotation

    .line 99820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n7;->A02:Lcom/facebook/ads/redexgen/X/Fb;

    .line 99822
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
    .end annotation

    .line 99823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/n7;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99824
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0u(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/n8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/n8;-><init>()V

    .line 99825
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Fa;->A00(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/49;)Lcom/facebook/ads/redexgen/X/n6;

    move-result-object v0

    .line 99826
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/n7;-><init>(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 99827
    return-void
.end method

.method private final A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FI;I)J
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D14742363 Needed to accept supplied looper for Exo2DashLiveManifestFetcher manifest loading"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/FL;",
            ">(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/facebook/ads/redexgen/X/FI<",
            "TT;>;I)J"
        }
    .end annotation

    .line 99828
    .local p3, "loadable":Lcom/facebook/ads/redexgen/X/FL;, "TT;"
    .local p4, "callback":Lcom/facebook/ads/redexgen/X/FI;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    move-object v4, p1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 99829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    .line 99830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 99831
    .local v9, "startTimeMs":J
    new-instance v2, Lcom/facebook/ads/redexgen/X/FK;

    move-object v3, p0

    move v7, p4

    move-object v6, p3

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/FK;-><init>(Lcom/facebook/ads/redexgen/X/n7;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FI;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FK;->A06(J)V

    .line 99832
    return-wide v8

    .line 99833
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A01(ZJ)Lcom/facebook/ads/redexgen/X/FJ;
    .locals 2

    .line 99834
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(IJLcom/facebook/ads/redexgen/X/FG;)V

    .line 99835
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/n7;)Lcom/facebook/ads/redexgen/X/FK;
    .locals 0

    .line 99836
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/n7;Lcom/facebook/ads/redexgen/X/FK;)Lcom/facebook/ads/redexgen/X/FK;
    .locals 0

    .line 99837
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/n7;)Lcom/facebook/ads/redexgen/X/Fb;
    .locals 0

    .line 99838
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/n7;->A02:Lcom/facebook/ads/redexgen/X/Fb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/n7;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 99839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    return-object p1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/n7;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/n7;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x3t
        0x14t
        0x2bt
        0x17t
        0x1at
        0x2t
        0x1et
        0x9t
        0x41t
        0x37t
        0x14t
        0x1at
        0x1ft
        0x1et
        0x9t
        0x41t
    .end array-data
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FI;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/FL;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/FI<",
            "TT;>;I)J"
        }
    .end annotation

    .line 99840
    .local p2, "loadable":Lcom/facebook/ads/redexgen/X/FL;, "TT;"
    .local p3, "callback":Lcom/facebook/ads/redexgen/X/FI;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 99841
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/n7;->A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FI;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A09()V
    .locals 2

    .line 99842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/FK;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A07(Z)V

    .line 99843
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 99844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    .line 99845
    return-void
.end method

.method public final A0B(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 99847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    if-eqz v0, :cond_1

    .line 99848
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    .line 99849
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/n7;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/n7;->A04:[Ljava/lang/String;

    const-string v1, "wo2YdO45DQEJfRTdGKzxAcazBLTDj4mX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget p1, v3, Lcom/facebook/ads/redexgen/X/FK;->A06:I

    .line 99850
    :cond_0
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/FK;->A05(I)V

    .line 99851
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99852
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    throw v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/FM;)V
    .locals 4

    .line 99853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    if-eqz v0, :cond_0

    .line 99854
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/n7;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/n7;->A04:[Ljava/lang/String;

    const-string v1, "XVuhTdSnDMDRP6HltjyP328n9S8al0u6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1piWh3nqPhJ4K6qVEs9qRP5dHkNT6n7u"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/FK;->A07(Z)V

    .line 99855
    :cond_0
    if-eqz p1, :cond_1

    .line 99856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/n7;->A02:Lcom/facebook/ads/redexgen/X/Fb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FN;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/FN;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Fb;->execute(Ljava/lang/Runnable;)V

    .line 99857
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A02:Lcom/facebook/ads/redexgen/X/Fb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Fb;->AHb()V

    .line 99858
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D()Z
    .locals 1

    .line 99859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A01:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 99860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n7;->A00:Lcom/facebook/ads/redexgen/X/FK;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
