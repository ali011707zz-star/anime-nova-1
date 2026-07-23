.class public final Lcom/facebook/ads/redexgen/X/62;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Is;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/d1;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/fp;

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/jd;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VA;

.field public final A05:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A06:Lcom/facebook/ads/redexgen/X/d1;

.field public final A07:Lcom/facebook/ads/redexgen/X/dC;

.field public final A08:Ljava/lang/String;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 410
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cNW8ZlUzhquZSz6XSi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gKIjGDOIeaOzZR9qeyStr8duZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mQKfIuNnQZgt5ES8sx19fjwTYxycx0Lp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WvoZHe7VElSdYX15O8PPMcOC5YskUK4l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BfRVnLJiFu3hDnD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WxgvJAZOXh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "crPtNK55mSnLeOXFeJGYeBq3ABMrpYK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K6RBlZSEjGoukPcRXJY4znE0whNpCjIj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/62;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/62;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Y2;)V
    .locals 7

    .line 15447
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15448
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 15449
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Lcom/facebook/ads/redexgen/X/VA;

    .line 15450
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 15451
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/62;->A08:Ljava/lang/String;

    .line 15452
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    .line 15453
    iput p6, p0, Lcom/facebook/ads/redexgen/X/62;->A01:I

    .line 15454
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dD;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    .line 15455
    .local v0, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/dC;
    if-eqz v0, :cond_2

    .line 15456
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    .line 15457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/62;->A09:Z

    .line 15458
    :goto_0
    if-eqz p7, :cond_1

    .line 15459
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/62;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    .line 15460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/dC;->A0Z(Lcom/facebook/ads/redexgen/X/Y2;)V

    .line 15461
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Lcom/facebook/ads/redexgen/X/62;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0c(Lcom/facebook/ads/redexgen/X/dB;)V

    .line 15462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/dC;->A0a(Lcom/facebook/ads/redexgen/X/d1;)V

    .line 15463
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 15464
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15465
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    .line 15466
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v2

    .line 15467
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    .line 15468
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/VM;->AKp(Landroid/view/View;Ljava/lang/String;ZZZ)V

    .line 15469
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/62;->A04()V

    .line 15470
    return-void

    .line 15471
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0L()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    goto :goto_1

    .line 15472
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dC;

    invoke-direct {v0, v1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/dC;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    .line 15473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/dD;->A03(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/dC;)V

    .line 15474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/62;->A09:Z

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/62;)Lcom/facebook/ads/redexgen/X/d1;
    .locals 0

    .line 15475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/62;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

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

    const/16 v0, 0xa5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/62;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x46t
        0x49t
        0x0t
        0x53t
        0x7t
        0x54t
        0x53t
        0x46t
        0x55t
        0x53t
        0x7t
        0x66t
        0x52t
        0x43t
        0x4et
        0x42t
        0x49t
        0x44t
        0x42t
        0x69t
        0x42t
        0x53t
        0x50t
        0x48t
        0x55t
        0x4ct
        0x66t
        0x44t
        0x53t
        0x4et
        0x51t
        0x4et
        0x53t
        0x5et
        0x9t
        0x7t
        0x6at
        0x46t
        0x4ct
        0x42t
        0x7t
        0x54t
        0x52t
        0x55t
        0x42t
        0x7t
        0x53t
        0x4ft
        0x46t
        0x53t
        0x7t
        0x4et
        0x53t
        0x0t
        0x54t
        0x7t
        0x4et
        0x49t
        0x7t
        0x5et
        0x48t
        0x52t
        0x55t
        0x7t
        0x66t
        0x49t
        0x43t
        0x55t
        0x48t
        0x4et
        0x43t
        0x6at
        0x46t
        0x49t
        0x4et
        0x41t
        0x42t
        0x54t
        0x53t
        0x9t
        0x5ft
        0x4at
        0x4bt
        0x7t
        0x41t
        0x4et
        0x4bt
        0x42t
        0x9t
        0x18t
        0x1ct
        0x1ft
        0x2bt
        0x3at
        0x37t
        0x3bt
        0x30t
        0x3dt
        0x3bt
        0x10t
        0x3bt
        0x2at
        0x29t
        0x31t
        0x2ct
        0x35t
        0x45t
        0x4at
        0x7bt
        0x45t
        0x47t
        0x50t
        0x4dt
        0x52t
        0x4dt
        0x50t
        0x5dt
        0x4t
        0xbt
        0xet
        0x4t
        0xct
        0x38t
        0x14t
        0x8t
        0x12t
        0x15t
        0x4t
        0x2t
        0x5at
        0x55t
        0x40t
        0x5dt
        0x42t
        0x51t
        0x75t
        0x50t
        0x70t
        0x55t
        0x40t
        0x55t
        0x76t
        0x41t
        0x5at
        0x50t
        0x58t
        0x51t
        0x1bt
        0x1dt
        0xbt
        0x1ct
        0xdt
        0x2t
        0x7t
        0xdt
        0x5t
        0x16t
        0x9t
        0x5t
        0x17t
        0x34t
        0x19t
        0x10t
        0x5t
    .end array-data
.end method

.method private final A03()V
    .locals 4

    .line 15476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/dC;->A0d(Lcom/facebook/ads/redexgen/X/Is;)V

    .line 15477
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/62;->A09:Z

    if-nez v0, :cond_1

    .line 15478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A66()V

    .line 15479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0X()V

    .line 15480
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/62;->A08()V

    .line 15481
    return-void

    .line 15482
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A67()V

    .line 15483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15484
    iget v1, p0, Lcom/facebook/ads/redexgen/X/62;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 15485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    if-eqz v0, :cond_2

    .line 15486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/d1;->ADm(Lcom/facebook/ads/redexgen/X/62;)V

    .line 15487
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/62;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/62;->A0B:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/VM;->ADb()V

    goto :goto_0

    .line 15489
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/62;->AKD()V

    goto :goto_0
.end method

.method private final A04()V
    .locals 1

    .line 15490
    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/62;->A03()V

    .line 15492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0W()V

    .line 15493
    return-void
.end method

.method private A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 3

    .line 15494
    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15495
    const/16 v2, 0x82

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15496
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15497
    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 7

    .line 15498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A05(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v1

    .line 15499
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/62;->A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 15500
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->A0B(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15501
    :catch_0
    move-exception v5

    .line 15502
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 15503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 15504
    const/16 v2, 0x6b

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 15505
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15506
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 12

    .line 15507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15508
    return-void

    .line 15509
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/bV;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/62;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/62;->A08:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/62;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 15510
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 15511
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/bV;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15512
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x76

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/62;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/bV;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 15514
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 3

    .line 15515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 15516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    .line 15517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15518
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/62;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15519
    return-void
.end method

.method public final A9f()V
    .locals 1

    .line 15520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/62;->A07(Ljava/lang/String;)V

    .line 15521
    return-void
.end method

.method public final A9g(Ljava/lang/String;)V
    .locals 0

    .line 15522
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/62;->A07(Ljava/lang/String;)V

    .line 15523
    return-void
.end method

.method public final A9k()V
    .locals 0

    .line 15524
    return-void
.end method

.method public final AAm()V
    .locals 2

    .line 15525
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/JF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JF;-><init>(Lcom/facebook/ads/redexgen/X/62;)V

    .line 15526
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15527
    return-void
.end method

.method public final AE0()V
    .locals 1

    .line 15528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/62;->A06(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 15529
    return-void
.end method

.method public final AE4()V
    .locals 0

    .line 15530
    return-void
.end method

.method public final AEu(Z)V
    .locals 0

    .line 15531
    return-void
.end method

.method public final AFz()V
    .locals 0

    .line 15532
    return-void
.end method

.method public final AGX(Z)V
    .locals 0

    .line 15533
    return-void
.end method

.method public final AGZ(Z)V
    .locals 0

    .line 15534
    return-void
.end method

.method public final AGo(Ljava/lang/String;)V
    .locals 0

    .line 15535
    return-void
.end method

.method public final AKD()V
    .locals 1

    .line 15536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    if-eqz v0, :cond_0

    .line 15537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/d1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/d1;->ADm(Lcom/facebook/ads/redexgen/X/62;)V

    .line 15538
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 15539
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;
    .locals 1

    .line 15540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A04:Lcom/facebook/ads/redexgen/X/VA;

    return-object v0
.end method

.method public getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/dC;
    .locals 1

    .line 15541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 15542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/62;->requestDisallowInterceptTouchEvent(Z)V

    .line 15543
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 1

    .line 15544
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/62;->A00:Lcom/facebook/ads/redexgen/X/fp;

    .line 15545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dC;->A0e(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 15546
    return-void
.end method
