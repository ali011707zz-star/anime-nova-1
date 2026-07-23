.class public final Lcom/facebook/ads/redexgen/X/C5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/C2;,
        Lcom/facebook/ads/redexgen/X/C4;,
        Lcom/facebook/ads/redexgen/X/C0;,
        Lcom/facebook/ads/redexgen/X/o0;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Lcom/facebook/ads/redexgen/X/CX;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;"
        }
    .end annotation
.end field

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Landroid/content/Context;

.field public final A0B:Landroid/os/Handler;

.field public final A0C:Lcom/facebook/ads/redexgen/X/C2;

.field public final A0D:Lcom/facebook/ads/redexgen/X/nw;

.field public final A0E:Lcom/facebook/ads/redexgen/X/CT;

.field public final A0F:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/C4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 671
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pVyOFxmsQ66MTtm1tfRFfgviAXYtJVde"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2uUwIcomsi7SFa7PXkK2f37odc1wLlYz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QkwYj4Lqiyfn1sjUd74ET1yWKOC2yQQp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dFCgemChCTNfDzsLBkcDawIxAoCNtdjt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sEgyiM3VxaELP8J5ElL8PsjgrXzRWZa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oraRcW9NweHiYSV9WAd4vPrbGQ1KpHw2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RucdtTHsidUdQvrsj3emf0t2ky4JUHkt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bkvUCljONwekC27QIXEAtZgyfnOfNHe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C5;->A03()V

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/C5;->A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5O;Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/5Y;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 31707
    new-instance v2, Lcom/facebook/ads/redexgen/X/9w;

    invoke-direct {v2, p2}, Lcom/facebook/ads/redexgen/X/9w;-><init>(Lcom/facebook/ads/redexgen/X/5O;)V

    nop

    new-instance v0, Lcom/facebook/ads/redexgen/X/kT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kT;-><init>()V

    .line 31708
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/kT;->A06(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object v0

    .line 31709
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/kT;->A05(Lcom/facebook/ads/redexgen/X/5Y;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/o3;

    invoke-direct {v0, v1, p5}, Lcom/facebook/ads/redexgen/X/o3;-><init>(Lcom/facebook/ads/redexgen/X/kT;Ljava/util/concurrent/Executor;)V

    .line 31710
    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/C5;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/CJ;)V

    .line 31711
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/CJ;)V
    .locals 12

    .line 31712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31713
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0A:Landroid/content/Context;

    .line 31714
    move-object v6, p2

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Lcom/facebook/ads/redexgen/X/nw;

    .line 31715
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    .line 31716
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    .line 31717
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Z

    .line 31718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    .line 31719
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31720
    new-instance v0, Lcom/facebook/ads/redexgen/X/By;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/By;-><init>(Lcom/facebook/ads/redexgen/X/C5;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v8

    .line 31721
    .local v1, "mainHandler":Landroid/os/Handler;
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Landroid/os/Handler;

    .line 31722
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/HandlerThread;

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31723
    .local v3, "internalThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 31724
    new-instance v4, Lcom/facebook/ads/redexgen/X/C2;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    iget v10, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Z

    move-object v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/C2;-><init>(Landroid/os/HandlerThread;Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/CJ;Landroid/os/Handler;IIZ)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Lcom/facebook/ads/redexgen/X/C2;

    .line 31725
    new-instance v2, Lcom/facebook/ads/redexgen/X/o2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/o2;-><init>(Lcom/facebook/ads/redexgen/X/C5;)V

    .line 31726
    .local v2, "requirementsListener":Lcom/facebook/ads/redexgen/X/CT;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Lcom/facebook/ads/redexgen/X/CT;

    .line 31727
    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/CT;Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:Lcom/facebook/ads/redexgen/X/CX;

    .line 31728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:Lcom/facebook/ads/redexgen/X/CX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CX;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:I

    .line 31729
    iput v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    .line 31730
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Lcom/facebook/ads/redexgen/X/C2;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:I

    .line 31731
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31732
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31733
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJ)Lcom/facebook/ads/redexgen/X/Bk;
    .locals 8

    .line 31734
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 31735
    .local v1, "state":I
    const/4 v1, 0x5

    move-wide v6, p3

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A02()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31736
    :cond_0
    move-wide v4, v6

    .line 31737
    .local p0, "startTimeMs":J
    :goto_0
    move p2, p2

    if-eq v2, v1, :cond_1

    const/4 v0, 0x7

    if-ne v2, v0, :cond_2

    .line 31738
    :cond_1
    const/4 v3, 0x7

    .line 31739
    :goto_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 31740
    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v2

    const-wide/16 p0, -0x1

    const/4 p3, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    .line 31741
    return-object v1

    .line 31742
    :cond_2
    if-eqz p2, :cond_3

    .line 31743
    const/4 v3, 0x1

    goto :goto_1

    .line 31744
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 31745
    :cond_4
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const-string v1, "Q4q55Cq4Bi7IKuCSPoembBRK5ZQkCbyv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 31746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const-string v1, "SmTtusU6hPZNCMRD5EytmTKQlQAuGgF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "GYCdxmdyxLWQsNM7s6qdd5Bkhe8SJ7C"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/C4;

    .line 31747
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/C4;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Z

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/C4;->AGf(Lcom/facebook/ads/redexgen/X/C5;Z)V

    .line 31748
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31749
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C5;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x1ft
        0x8t
        0x37t
        0xbt
        0x6t
        0x1et
        0x2t
        0x15t
        0x5dt
        0x23t
        0x8t
        0x10t
        0x9t
        0xbt
        0x8t
        0x6t
        0x3t
        0x2at
        0x6t
        0x9t
        0x6t
        0x0t
        0x2t
        0x15t
    .end array-data
.end method

.method private A04(II)V
    .locals 2

    .line 31750
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    .line 31751
    iput p2, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    .line 31752
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C4;

    .line 31754
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/C4;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/C4;->AE6(Lcom/facebook/ads/redexgen/X/C5;)V

    .line 31755
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31756
    :cond_0
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/C0;)V
    .locals 7

    .line 31757
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/C0;->A02:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    .line 31758
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/C0;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    .line 31759
    .local v0, "updatedDownload":Lcom/facebook/ads/redexgen/X/Bk;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()Z

    move-result v6

    .line 31760
    .local v1, "waitingForRequirementsChanged":Z
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/C0;->A03:Z

    if-eqz v0, :cond_0

    .line 31761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C4;

    .line 31762
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/C4;
    invoke-interface {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/C4;->ADi(Lcom/facebook/ads/redexgen/X/C5;Lcom/facebook/ads/redexgen/X/Bk;)V

    .line 31763
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31764
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const-string v1, "ysMk9cu0SrkjVTb8eZ5DX1SyqV41ya5j"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/C4;

    .line 31765
    .restart local v3    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/C0;->A01:Ljava/lang/Exception;

    invoke-interface {v1, p0, v5, v0}, Lcom/facebook/ads/redexgen/X/C4;->ADh(Lcom/facebook/ads/redexgen/X/C5;Lcom/facebook/ads/redexgen/X/Bk;Ljava/lang/Exception;)V

    .line 31766
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_1

    .line 31767
    :cond_1
    if-eqz v6, :cond_2

    .line 31768
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A02()V

    .line 31769
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/C5;Lcom/facebook/ads/redexgen/X/CX;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/C5;->A07(Lcom/facebook/ads/redexgen/X/CX;I)V

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/CX;I)V
    .locals 4

    .line 31770
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/CX;->A0A()Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v3

    .line 31771
    .local v0, "requirements":Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:I

    if-eq v0, p2, :cond_0

    .line 31772
    iput p2, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:I

    .line 31773
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    .line 31774
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Lcom/facebook/ads/redexgen/X/C2;

    .line 31775
    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/C2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31776
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31777
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()Z

    move-result v2

    .line 31778
    .local v1, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C4;

    .line 31779
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/C4;
    invoke-interface {v0, p0, v3, p2}, Lcom/facebook/ads/redexgen/X/C4;->AFg(Lcom/facebook/ads/redexgen/X/C5;Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;I)V

    .line 31780
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31781
    :cond_1
    if-eqz v2, :cond_2

    .line 31782
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A02()V

    .line 31783
    :cond_2
    return-void
.end method

.method private A08(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;)V"
        }
    .end annotation

    .line 31784
    .local p1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Z

    .line 31785
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    .line 31786
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()Z

    move-result v2

    .line 31787
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C4;

    .line 31788
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/C4;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/C4;->AEB(Lcom/facebook/ads/redexgen/X/C5;)V

    .line 31789
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31790
    :cond_0
    if-eqz v2, :cond_1

    .line 31791
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A02()V

    .line 31792
    :cond_1
    return-void
.end method

.method private A09(Z)V
    .locals 3

    .line 31793
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Z

    if-ne v0, p1, :cond_0

    .line 31794
    return-void

    .line 31795
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Z

    .line 31796
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    .line 31797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Lcom/facebook/ads/redexgen/X/C2;

    .line 31798
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/facebook/ads/redexgen/X/C2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31799
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31800
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()Z

    move-result v2

    .line 31801
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31802
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/C4;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/C4;
    goto :goto_0

    .line 31803
    :cond_1
    if-eqz v2, :cond_2

    .line 31804
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A02()V

    .line 31805
    :cond_2
    return-void
.end method

.method private A0A()Z
    .locals 4

    .line 31806
    const/4 v2, 0x0

    .line 31807
    .local v0, "waitingForRequirements":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:I

    if-eqz v0, :cond_0

    .line 31808
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 31809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    if-nez v0, :cond_2

    .line 31810
    const/4 v2, 0x1

    .line 31811
    .end local v1    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Z

    if-eq v0, v2, :cond_1

    const/4 v3, 0x1

    .line 31812
    .local v1, "waitingForRequirementsChanged":Z
    :goto_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31813
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 31814
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31815
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const-string v1, "HT4e9GATQ3DYWsFwZyJzXpwOkn6HfQP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "eDZDx6DsGZ1y85uRp2IzKIBDtNa9GCG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method private A0B(Landroid/os/Message;)Z
    .locals 5

    .line 31816
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31818
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/C0;

    .line 31819
    .local v0, "update":Lcom/facebook/ads/redexgen/X/C0;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C5;->A05(Lcom/facebook/ads/redexgen/X/C0;)V

    .line 31820
    goto :goto_0

    .line 31821
    .end local v0    # "update":Lcom/facebook/ads/redexgen/X/C0;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 31822
    .local v0, "processedMessageCount":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    .line 31823
    .local v1, "activeTaskCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0H:[Ljava/lang/String;

    const-string v1, "sxyw1qPQ7JLPTOY8e9sgs42WDZnpuN2t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "KeBMIxstq15Te8zzUw5dJy9ueqCuctUt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/C5;->A04(II)V

    .line 31824
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31825
    .end local v0    # "processedMessageCount":I
    .end local v1    # "activeTaskCount":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 31826
    .local v0, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C5;->A08(Ljava/util/List;)V

    .line 31827
    .end local v0    # "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/C5;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C5;->A0B(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;"
        }
    .end annotation

    .line 31828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:Ljava/util/List;

    return-object v0
.end method

.method public final A0E()V
    .locals 1

    .line 31829
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C5;->A09(Z)V

    .line 31830
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/C4;)V
    .locals 1

    .line 31831
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 31833
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)V
    .locals 1

    .line 31834
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0H(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V

    .line 31835
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 3

    .line 31836
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    .line 31837
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Lcom/facebook/ads/redexgen/X/C2;

    .line 31838
    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p2, v0, p1}, Lcom/facebook/ads/redexgen/X/C2;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 31839
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31840
    return-void
.end method

.method public final A0I()Z
    .locals 1

    .line 31841
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
