.class public final Lcom/facebook/ads/redexgen/X/RU;
.super Ljava/lang/Thread;
.source ""


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/os/Handler;

.field public final A02:Lcom/facebook/ads/redexgen/X/RW;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Ljava/lang/Runnable;

.field public volatile A05:J

.field public volatile A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1614
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RU;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/RU;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RU;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/RW;)V
    .locals 1

    .line 62304
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A08(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/RW;I)V

    .line 62305
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/RW;I)V
    .locals 3

    .line 62306
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62307
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:Landroid/os/Handler;

    .line 62308
    new-instance v0, Lcom/facebook/ads/redexgen/X/RT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RT;-><init>(Lcom/facebook/ads/redexgen/X/RU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A04:Ljava/lang/Runnable;

    .line 62309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A05:J

    .line 62310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A06:Z

    .line 62311
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RU;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RU;->setName(Ljava/lang/String;)V

    .line 62312
    iput p3, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:I

    .line 62313
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 62314
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RU;->A02:Lcom/facebook/ads/redexgen/X/RW;

    .line 62315
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/RU;J)J
    .locals 0

    .line 62316
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A05:J

    return-wide p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RU;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x65

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RU;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x67t
        0x63t
        0xct
        0x60t
        0x6ft
        0x73t
        0xct
        0x65t
        0x44t
        0x55t
        0x44t
        0x42t
        0x55t
        0x4et
        0x53t
        0xat
        0x8t
        0x3t
        0x8t
        0x1ft
        0x4t
        0xet
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RU;Z)Z
    .locals 0

    .line 62317
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A06:Z

    return p1
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v8, p0

    .line 62318
    .local v0, "this":Lcom/facebook/ads/redexgen/X/RU;
    :try_start_0
    iget v0, v8, Lcom/facebook/ads/redexgen/X/RU;->A00:I

    int-to-long v4, v0

    .line 62319
    .local v1, "interval":J
    :cond_1
    :goto_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/RU;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62320
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/RU;->A05:J

    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 62321
    .local v3, "needPost":Z
    :goto_1
    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/RU;->A05:J

    .line 62322
    if-eqz v0, :cond_3

    .line 62323
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RU;->A01:Landroid/os/Handler;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RU;->A04:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62324
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/RU;
    :cond_3
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62325
    :try_start_2
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/RU;->A05:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/RU;->A06:Z

    if-nez v0, :cond_1

    .line 62326
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 62327
    :cond_4
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RU;->A02:Lcom/facebook/ads/redexgen/X/RW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RW;->A03()Ljava/lang/String;

    move-result-object v7

    .line 62328
    .local v4, "currentANRDetectedLine":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 62329
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RU;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 62330
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    const/16 v2, 0xf

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RU;->A01(III)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A1D:I

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RU;->A02:Lcom/facebook/ads/redexgen/X/RW;

    .line 62331
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/RW;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 62332
    invoke-interface {v6, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 62333
    :cond_5
    iput-boolean v9, v8, Lcom/facebook/ads/redexgen/X/RU;->A06:Z

    goto :goto_0

    .line 62334
    .restart local v3    # "needPost":Z
    .local v4, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 62335
    return-void

    .line 62336
    .end local v3    # "needPost":Z
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_6
    return-void
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "interval":J
    :catchall_0
    move-exception v0

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
