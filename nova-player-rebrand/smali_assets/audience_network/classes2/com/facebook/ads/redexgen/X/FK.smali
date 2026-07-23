.class public final Lcom/facebook/ads/redexgen/X/FK;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/n7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/FL;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/FI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/FI<",
            "TT;>;"
        }
    .end annotation
.end field

.field public A03:Ljava/io/IOException;

.field public A04:Ljava/lang/Thread;

.field public A05:Z

.field public final A06:I

.field public final A07:J

.field public final A08:Lcom/facebook/ads/redexgen/X/FL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile A09:Z

.field public final synthetic A0A:Lcom/facebook/ads/redexgen/X/n7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 733
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YmYVw2S8DUZhSIJBKV9mYTBB1tKcIZso"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NDdcnO0NsMMFHF2bezmvYcIUkVZ5OtU8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8rmJYKaybwW0Gr1XfrD6wU0k3D4t0vPA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YmCBBtrMVj6S7IBVYd0tuHNRqLOHp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BNlgZVMbySVAlN8KpxiSIEQEMbKarpeH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QLj0CyLyWcLoHh5we5tUZrDrecYjAsKC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBbXtTNPiPKoehNQThYFNgHDUWIcJfTE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1Eh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FK;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FK;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/n7;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FI;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/facebook/ads/redexgen/X/FI<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 35626
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Lcom/facebook/ads/redexgen/X/FL;, "TT;"
    .local p4, "callback":Lcom/facebook/ads/redexgen/X/FI;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    .line 35627
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35628
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    .line 35629
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FI;

    .line 35630
    iput p5, p0, Lcom/facebook/ads/redexgen/X/FK;->A06:I

    .line 35631
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/FK;->A07:J

    .line 35632
    return-void
.end method

.method private A00()J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36993743 Customized Hero Retry Delay Values"
    .end annotation

    .line 35633
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/is;->A00(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FK;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Customized to support load retries"
    .end annotation

    .line 35634
    .local p4, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35635
    .local p0, "nowMs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A07:J

    sub-long v4, v2, v0

    .line 35636
    .local p2, "durationMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FI;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/FI;->AEi(Lcom/facebook/ads/redexgen/X/FL;JJI)V

    .line 35637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    .line 35638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n7;->A04(Lcom/facebook/ads/redexgen/X/n7;)Lcom/facebook/ads/redexgen/X/Fb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n7;->A02(Lcom/facebook/ads/redexgen/X/n7;)Lcom/facebook/ads/redexgen/X/FK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Fb;->execute(Ljava/lang/Runnable;)V

    .line 35639
    return-void
.end method

.method private A03()V
    .locals 2

    .line 35640
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/n7;->A03(Lcom/facebook/ads/redexgen/X/n7;Lcom/facebook/ads/redexgen/X/FK;)Lcom/facebook/ads/redexgen/X/FK;

    .line 35641
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FK;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x7at
        -0x57t
        -0x65t
        -0x62t
        -0x72t
        -0x65t
        -0x53t
        -0x5bt
        -0x63t
        -0x3dt
        -0x3et
        -0x63t
        -0x4ct
        -0x65t
        -0x4dt
        -0x45t
        -0x43t
        -0x40t
        -0x39t
        0x6et
        -0x4dt
        -0x40t
        -0x40t
        -0x43t
        -0x40t
        0x6et
        -0x46t
        -0x43t
        -0x51t
        -0x4et
        -0x49t
        -0x44t
        -0x4bt
        0x6et
        -0x3ft
        -0x3et
        -0x40t
        -0x4dt
        -0x51t
        -0x45t
        -0x1ct
        -0x3t
        -0xct
        0x7t
        -0x1t
        -0xct
        -0xet
        0x3t
        -0xct
        -0xdt
        -0x51t
        -0xct
        0x1t
        0x1t
        -0x2t
        0x1t
        -0x51t
        -0x5t
        -0x2t
        -0x10t
        -0xdt
        -0x8t
        -0x3t
        -0xat
        -0x51t
        0x2t
        0x3t
        0x1t
        -0xct
        -0x10t
        -0x4t
        0x5t
        0x1et
        0x15t
        0x28t
        0x20t
        0x15t
        0x13t
        0x24t
        0x15t
        0x14t
        -0x30t
        0x15t
        0x28t
        0x13t
        0x15t
        0x20t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0x30t
        0x18t
        0x11t
        0x1et
        0x14t
        0x1ct
        0x19t
        0x1et
        0x17t
        -0x30t
        0x1ct
        0x1ft
        0x11t
        0x14t
        -0x30t
        0x13t
        0x1ft
        0x1dt
        0x20t
        0x1ct
        0x15t
        0x24t
        0x15t
        0x14t
        -0x3ft
        -0x26t
        -0x2ft
        -0x1ct
        -0x24t
        -0x2ft
        -0x31t
        -0x20t
        -0x2ft
        -0x30t
        -0x74t
        -0x2ft
        -0x1ct
        -0x31t
        -0x2ft
        -0x24t
        -0x20t
        -0x2bt
        -0x25t
        -0x26t
        -0x74t
        -0x28t
        -0x25t
        -0x33t
        -0x30t
        -0x2bt
        -0x26t
        -0x2dt
        -0x74t
        -0x21t
        -0x20t
        -0x22t
        -0x2ft
        -0x33t
        -0x27t
        0x19t
        0x1ct
        0xet
        0x11t
        -0x19t
    .end array-data
.end method


# virtual methods
.method public final A05(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35642
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    if-gt v0, p1, :cond_1

    .line 35643
    :cond_0
    return-void

    .line 35644
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    throw v0
.end method

.method public final A06(J)V
    .locals 4

    .line 35645
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n7;->A02(Lcom/facebook/ads/redexgen/X/n7;)Lcom/facebook/ads/redexgen/X/FK;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 35646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/n7;->A03(Lcom/facebook/ads/redexgen/X/n7;Lcom/facebook/ads/redexgen/X/FK;)Lcom/facebook/ads/redexgen/X/FK;

    .line 35647
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 35648
    invoke-virtual {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/FK;->sendEmptyMessageDelayed(IJ)Z

    .line 35649
    :goto_1
    return-void

    .line 35650
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FK;->A02()V

    goto :goto_1

    .line 35651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(Z)V
    .locals 10

    .line 35652
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    .line 35653
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    .line 35654
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FK;->hasMessages(I)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 35655
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    .line 35656
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FK;->removeMessages(I)V

    .line 35657
    if-nez p1, :cond_0

    .line 35658
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FK;->sendEmptyMessage(I)Z

    .line 35659
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 35660
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FK;->A03()V

    .line 35661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 35662
    .local v8, "nowMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/FI;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A07:J

    sub-long v7, v5, v0

    .line 35663
    const/4 v9, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/FI;->AEc(Lcom/facebook/ads/redexgen/X/FL;JJZ)V

    .line 35664
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FI;

    .line 35665
    .end local v8    # "nowMs":J
    :cond_1
    return-void

    .line 35666
    :cond_2
    monitor-enter p0

    .line 35667
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    .line 35668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FL;->A4r()V

    .line 35669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A04:Ljava/lang/Thread;

    .line 35670
    .local v1, "executorThread":Ljava/lang/Thread;
    if-eqz v0, :cond_3

    .line 35671
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35672
    .end local v1    # "executorThread":Ljava/lang/Thread;
    :cond_3
    monitor-exit p0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "enableContinueLoadingLogging is custom"
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FK;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .local v1, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/FK;->A0C:[Ljava/lang/String;

    const-string v1, "QgUPNZuYIqR5G6UUc33KVEWLFVIzbhR6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    .line 35673
    .local v2, "msg":Landroid/os/Message;
    :try_start_0
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-eqz v0, :cond_1

    .line 35674
    return-void

    .line 35675
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 35676
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/FK;->A02()V

    .line 35677
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A00:Z

    .line 35678
    return-void

    .line 35679
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 35680
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/FK;->A03()V

    .line 35681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 35682
    .local v4, "nowMs":J
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A07:J

    sub-long v8, v6, v0

    .line 35683
    .local p3, "durationMs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/FI;

    .line 35684
    .local v6, "callback":Lcom/facebook/ads/redexgen/X/FI;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    if-eqz v0, :cond_3

    .line 35685
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/FI;->AEc(Lcom/facebook/ads/redexgen/X/FL;JJZ)V

    .line 35686
    return-void

    .line 35687
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 35688
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    .line 35689
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    .line 35690
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    iget v11, v3, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    .line 35691
    invoke-interface/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/FI;->AEf(Lcom/facebook/ads/redexgen/X/FL;JJLjava/io/IOException;I)Lcom/facebook/ads/redexgen/X/FJ;

    move-result-object v6

    .line 35692
    .local v0, "action":Lcom/facebook/ads/redexgen/X/FJ;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/FJ;->A00(Lcom/facebook/ads/redexgen/X/FJ;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 35693
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A03:Ljava/io/IOException;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/n7;->A05(Lcom/facebook/ads/redexgen/X/n7;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 35694
    :cond_4
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/FJ;->A00(Lcom/facebook/ads/redexgen/X/FJ;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    .line 35695
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/FJ;->A00(Lcom/facebook/ads/redexgen/X/FJ;)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 35696
    iput v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A01:I

    .line 35697
    :cond_5
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A00:Z

    .line 35698
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/FJ;->A01(Lcom/facebook/ads/redexgen/X/FJ;)J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v1

    if-eqz v0, :cond_6

    .line 35699
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/FJ;->A01(Lcom/facebook/ads/redexgen/X/FJ;)J

    move-result-wide v0

    .line 35700
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/FK;->A06(J)V

    goto :goto_1

    .line 35701
    :cond_6
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/FK;->A00()J

    move-result-wide v0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35702
    .end local v0    # "action":Lcom/facebook/ads/redexgen/X/FJ;
    :pswitch_1
    :try_start_1
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/FI;->AEe(Lcom/facebook/ads/redexgen/X/FL;JJ)V

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35703
    :catch_0
    move-exception v5

    .line 35704
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x47

    const/16 v2, 0x2c

    const/16 v0, 0x76

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35705
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/FK;->A0A:Lcom/facebook/ads/redexgen/X/n7;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/n7;->A05(Lcom/facebook/ads/redexgen/X/n7;Ljava/io/IOException;)Ljava/io/IOException;

    .line 35706
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_1
    return-void

    .line 35707
    .end local v4    # "nowMs":J
    .end local v6    # "callback":Lcom/facebook/ads/redexgen/X/FI;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    .end local p3
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35708
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 35709
    .local v0, "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    const/4 v5, 0x2

    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 35710
    :try_start_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 35711
    .local v2, "shouldLoad":Z
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A04:Ljava/lang/Thread;

    .line 35712
    monitor-exit v3

    .line 35713
    if-eqz v1, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35714
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 35715
    :try_start_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A08:Lcom/facebook/ads/redexgen/X/FL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FL;->AAr()V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35716
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/FK;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    :catchall_0
    :try_start_4
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 35717
    throw v0

    .line 35718
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 35719
    :cond_2
    monitor-enter v3

    .line 35720
    const/4 v0, 0x0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A04:Ljava/lang/Thread;

    .line 35721
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 35722
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35723
    :try_start_6
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-nez v0, :cond_4

    .line 35724
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/FK;->sendEmptyMessage(I)Z

    goto/16 :goto_2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 35725
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 35726
    .end local v2    # "shouldLoad":Z
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 35727
    :catch_0
    move-exception v5

    .line 35728
    .local v1, "e":Ljava/lang/Error;
    :try_start_b
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-nez v0, :cond_3

    .line 35729
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x28

    const/16 v2, 0x1f

    const/16 v0, 0x55

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35730
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/FK;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35731
    :cond_3
    throw v5

    .line 35732
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v6

    .line 35733
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-nez v0, :cond_4

    .line 35734
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    const/16 v2, 0x20

    const/16 v0, 0x14

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35735
    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/FK;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 35736
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v6

    .line 35737
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-nez v0, :cond_4

    .line 35738
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x73

    const/16 v2, 0x23

    const/16 v0, 0x32

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/FK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35739
    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/FK;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 35740
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 35741
    .local v2, "e":Ljava/io/IOException;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A09:Z

    if-nez v0, :cond_4

    .line 35742
    invoke-virtual {v3, v5, v1}, Lcom/facebook/ads/redexgen/X/FK;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35743
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
