.class public abstract Lcom/facebook/ads/redexgen/X/Wc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static A01:[B

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/WS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/WQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2218
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wc;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2219
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 71140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71141
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(Ljava/lang/String;)V

    .line 71144
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A01(Lcom/facebook/ads/redexgen/X/Wg;)Lcom/facebook/ads/redexgen/X/WQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    .line 71145
    :goto_0
    return-void

    .line 71146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0xbt
        0x10t
        0x10t
        0x1ft
        0x1ct
        0x12t
        0x1bt
        0x5et
        0x1dt
        0xct
        0x1bt
        0x1ft
        0xat
        0x1bt
        0x1at
        0x50t
        0x5et
        0x2at
        0x16t
        0xct
        0x1bt
        0x1ft
        0x1at
        0x44t
        0x5et
    .end array-data
.end method

.method public static A04(Z)V
    .locals 1

    .line 71147
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71148
    return-void
.end method

.method public static A05(ZLcom/facebook/ads/redexgen/X/WS;)V
    .locals 1

    .line 71149
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71150
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71151
    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/WQ;
    .locals 1

    .line 71152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    return-object v0
.end method

.method public abstract A07()V
.end method

.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 71153
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wc;
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71154
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Wh;->A03(Lcom/facebook/ads/redexgen/X/Wc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71155
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Wc;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wc;->A07()V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71156
    :catchall_0
    move-exception v2

    .line 71157
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71158
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wj;->A00()Lcom/facebook/ads/redexgen/X/Wi;

    move-result-object v1

    const/16 v0, 0xce5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Wi;->AAx(ILjava/lang/Throwable;)V

    .line 71159
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WS;

    .line 71160
    .local v2, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/WS;
    if-eqz v0, :cond_2

    .line 71161
    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/WS;->AIZ(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 71162
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71163
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Wh;->A04(Lcom/facebook/ads/redexgen/X/Wc;)V

    .line 71164
    :cond_3
    return-void

    .line 71165
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_4
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71166
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
