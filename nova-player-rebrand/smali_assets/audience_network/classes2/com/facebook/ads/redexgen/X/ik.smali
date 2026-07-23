.class public abstract Lcom/facebook/ads/redexgen/X/ik;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OW;


# static fields
.field public static A06:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/OE;

.field public final A01:Lcom/facebook/ads/redexgen/X/OL;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;

.field public final A03:Landroid/os/Handler;

.field public final A04:Ljava/lang/String;

.field public final A05:Lcom/facebook/ads/redexgen/X/OQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ik;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OR;)V
    .locals 2

    .line 87335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87336
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 87337
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ik;->A04:Ljava/lang/String;

    .line 87338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 87339
    new-instance v0, Lcom/facebook/ads/redexgen/X/io;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/io;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ik;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    .line 87340
    new-instance v0, Lcom/facebook/ads/redexgen/X/OL;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/OL;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ik;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    .line 87341
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A03:Landroid/os/Handler;

    .line 87342
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    invoke-interface {p3, v1, p0, v0}, Lcom/facebook/ads/redexgen/X/OR;->A5S(Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/ik;Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/OQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    .line 87343
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ik;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

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

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ik;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x68t
        -0x55t
        -0x5ct
        -0x66t
        -0x5et
        -0x65t
        -0x4bt
        -0x65t
        -0x52t
        -0x56t
        -0x58t
        -0x69t
        -0x57t
        -0x4bt
        -0x5ft
        -0x65t
        -0x51t
        -0x19t
        -0x14t
        -0xet
        -0x3t
        -0x1dt
        -0x10t
        -0x10t
        -0x13t
        -0x10t
        -0x3t
        -0x1ft
        -0x13t
        -0x1et
        -0x1dt
        -0x3t
        -0x17t
        -0x1dt
        -0x9t
        -0x6t
        -0x5t
        -0x7t
        0x6t
        -0x18t
        -0x15t
        0x6t
        -0x10t
        -0x15t
        0x6t
        -0xet
        -0x14t
        0x0t
        0x15t
        0x16t
        0x14t
        0x21t
        0x7t
        0x14t
        0x14t
        0x11t
        0x14t
        0x21t
        0xft
        0x7t
        0x15t
        0x15t
        0x3t
        0x9t
        0x7t
        0x21t
        0xdt
        0x7t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/OE;
    .locals 1

    .line 87344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 87345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()V
    .locals 2

    .line 87346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 87347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI0()V

    .line 87348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A06()V

    .line 87349
    :goto_0
    return-void

    .line 87350
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHs()V

    .line 87351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/OL;->A02:Z

    .line 87352
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A0E(Z)V

    goto :goto_0
.end method

.method public final A06()V
    .locals 4

    .line 87353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI6()V

    .line 87354
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    .line 87355
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OQ;->A8P()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A5R(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 87356
    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/OL;->A0F(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87357
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A09()V

    .line 87358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHy()V

    .line 87359
    :cond_0
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 87360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87361
    return-void

    .line 87362
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/il;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/il;-><init>(Lcom/facebook/ads/redexgen/X/ik;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 87363
    return-void
.end method

.method public abstract A08()V
.end method

.method public abstract A09()V
.end method

.method public final A0A(I)V
    .locals 2

    .line 87364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/OL;->A0D(Lcom/facebook/ads/redexgen/X/gi;I)V

    .line 87365
    return-void
.end method

.method public final A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V
    .locals 4

    .line 87366
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 87367
    .local v0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x30

    const/16 v1, 0x15

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ik;->A01(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 87368
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87369
    :goto_0
    const/16 v2, 0x11

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ik;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A04:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 87371
    return-void

    .line 87372
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A0C(Landroid/os/Message;)V
    .locals 1

    .line 87373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/OQ;->A9j(Landroid/os/Message;)V

    .line 87374
    return-void
.end method

.method public abstract A0D(Z)V
.end method

.method public final AEs(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 87375
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 87376
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0xd

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ik;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87377
    if-eqz p3, :cond_0

    .line 87378
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ik;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87379
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/im;

    invoke-direct {v1, p0, v4}, Lcom/facebook/ads/redexgen/X/im;-><init>(Lcom/facebook/ads/redexgen/X/ik;Landroid/os/Message;)V

    .line 87380
    .local v1, "callbackApiRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A03:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87381
    return-void
.end method
