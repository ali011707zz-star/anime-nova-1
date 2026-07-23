.class public final Lcom/facebook/ads/redexgen/X/G9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VSyncSampler"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/G9;


# instance fields
.field public A00:I

.field public A01:Landroid/view/Choreographer;

.field public final A02:Landroid/os/Handler;

.field public final A03:Landroid/os/HandlerThread;

.field public volatile A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 747
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ji4vVtod0Ep"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W5pwMDw99nCrpy5B8Iazhudwtzilx0sf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "l9PcuhV5rMDGvrbUwzG7Ad0pcijuAzEV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FaS8ZCu9j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WXQRpxbn1d9lZaxATvqBiewtSAO2HDxs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C8Lc0W9XaE3EYGTHQvU7O2Sqynab"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ekEDpZpPHDqqTKsf7TQP9QgqpYa1Ma72"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eyWJ27kKq0QXLQpZZcF977maBzKu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G9;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G9;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/G9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/G9;->A07:Lcom/facebook/ads/redexgen/X/G9;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36833
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A04:J

    .line 36834
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A03:Landroid/os/HandlerThread;

    .line 36835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A02:Landroid/os/Handler;

    .line 36837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G9;->A02:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36838
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/G9;
    .locals 1

    .line 36839
    sget-object v0, Lcom/facebook/ads/redexgen/X/G9;->A07:Lcom/facebook/ads/redexgen/X/G9;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

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

    .line 36840
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    .line 36841
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    if-ne v0, v1, :cond_0

    .line 36842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36843
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 1

    .line 36844
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A01:Landroid/view/Choreographer;

    .line 36845
    return-void
.end method

.method private A04()V
    .locals 2

    .line 36846
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    .line 36847
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:I

    if-nez v0, :cond_0

    .line 36848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36849
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A04:J

    .line 36850
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G9;->A05:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A06:[Ljava/lang/String;

    const-string v1, "MvmtMBVRs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x6dt
        -0x48t
        -0x41t
        -0x3et
        -0x4bt
        -0x41t
        -0x49t
        -0x3et
        -0x4ft
        -0x40t
        -0x48t
        -0x4bt
        -0x3et
        -0x61t
        -0x39t
        -0x42t
        -0x4bt
        -0x3et
        -0x76t
        -0x68t
        -0x4ft
        -0x42t
        -0x4ct
        -0x44t
        -0x4bt
        -0x3et
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 36851
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G9;->A02:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36852
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 36853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G9;->A02:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36854
    return-void
.end method

.method public final doFrame(J)V
    .locals 3

    .line 36855
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/G9;->A04:J

    .line 36856
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G9;->A01:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 36857
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 36858
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    .line 36859
    const/4 v0, 0x0

    return v0

    .line 36860
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G9;->A04()V

    .line 36861
    return v0

    .line 36862
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G9;->A02()V

    .line 36863
    return v0

    .line 36864
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G9;->A03()V

    .line 36865
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
