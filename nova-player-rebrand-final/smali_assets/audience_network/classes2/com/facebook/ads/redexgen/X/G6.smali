.class public final Lcom/facebook/ads/redexgen/X/G6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VSyncSampler"
.end annotation


# static fields
.field public static A05:[B

.field public static final A06:Lcom/facebook/ads/redexgen/X/G6;


# instance fields
.field public A00:I

.field public A01:Landroid/view/Choreographer;

.field public final A02:Landroid/os/Handler;

.field public final A03:Landroid/os/HandlerThread;

.field public volatile A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 745
    invoke-static {}, Lcom/facebook/ads/redexgen/X/G6;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/G6;->A06:Lcom/facebook/ads/redexgen/X/G6;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36662
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A04:J

    .line 36663
    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Landroid/os/HandlerThread;

    .line 36664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Landroid/os/Handler;

    .line 36666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36667
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/G6;
    .locals 1

    .line 36668
    sget-object v0, Lcom/facebook/ads/redexgen/X/G6;->A06:Lcom/facebook/ads/redexgen/X/G6;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G6;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

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
    .locals 2

    .line 36669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 36670
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    .line 36671
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    if-ne v0, v1, :cond_0

    .line 36672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36673
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 5

    .line 36674
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36675
    :catch_0
    move-exception v4

    .line 36676
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x23

    const/16 v1, 0x17

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3a

    const/16 v1, 0x2d

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36677
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private A04()V
    .locals 2

    .line 36678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 36679
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    .line 36680
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    if-nez v0, :cond_0

    .line 36681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36682
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A04:J

    .line 36683
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G6;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        0x4t
        -0x5t
        -0x24t
        -0x8t
        -0x13t
        0x5t
        -0xft
        -0x2t
        -0x3at
        -0x2et
        -0x2t
        -0x13t
        -0x7t
        -0xft
        -0x22t
        -0xft
        -0x8t
        -0xft
        -0x13t
        -0x1t
        -0xft
        -0x31t
        -0xct
        -0x5t
        -0x2t
        -0xft
        -0x5t
        -0xdt
        -0x2t
        -0x13t
        -0x4t
        -0xct
        -0xft
        -0x2t
        -0x24t
        -0x11t
        -0x16t
        -0x15t
        -0xbt
        -0x34t
        -0x8t
        -0x19t
        -0xdt
        -0x15t
        -0x28t
        -0x15t
        -0xet
        -0x15t
        -0x19t
        -0x7t
        -0x15t
        -0x32t
        -0x15t
        -0xet
        -0xat
        -0x15t
        -0x8t
        -0x44t
        -0x27t
        -0x21t
        -0x2ct
        -0x37t
        -0x7at
        -0x27t
        -0x39t
        -0x2dt
        -0x2at
        -0x2et
        -0x31t
        -0x2ct
        -0x33t
        -0x7at
        -0x36t
        -0x31t
        -0x27t
        -0x39t
        -0x38t
        -0x2et
        -0x35t
        -0x36t
        -0x7at
        -0x36t
        -0x25t
        -0x35t
        -0x7at
        -0x26t
        -0x2bt
        -0x7at
        -0x2at
        -0x2et
        -0x39t
        -0x26t
        -0x34t
        -0x2bt
        -0x28t
        -0x2dt
        -0x7at
        -0x35t
        -0x28t
        -0x28t
        -0x2bt
        -0x28t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 36684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36685
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 36686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36687
    return-void
.end method

.method public final doFrame(J)V
    .locals 3

    .line 36688
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/G6;->A04:J

    .line 36689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Landroid/view/Choreographer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 36690
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 36691
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    .line 36692
    const/4 v0, 0x0

    return v0

    .line 36693
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G6;->A04()V

    .line 36694
    return v0

    .line 36695
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G6;->A02()V

    .line 36696
    return v0

    .line 36697
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G6;->A03()V

    .line 36698
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
