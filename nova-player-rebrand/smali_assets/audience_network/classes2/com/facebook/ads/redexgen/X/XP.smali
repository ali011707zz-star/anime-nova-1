.class public final Lcom/facebook/ads/redexgen/X/XP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VM;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Xe;

.field public A01:Lcom/facebook/ads/redexgen/X/rN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/rN<",
            "Lcom/facebook/ads/redexgen/X/Uw;",
            "Lcom/facebook/ads/redexgen/X/V1;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/ge;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ao;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2308
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HMqNF3eSIzlMBYXVNU3nP1NvWYo5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "x1o785RKTr7Jq0RcU0BPUyycJ3fBjUeE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GBfmO3K"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Po"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VaaklUluHJvo1XkXnH3kavV5L6d7gpHG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rG9SvJ3uZ6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s9MPDvRc6n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AU4sbnw7bsTTRuLyXll9UaPcK28fS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XP;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XP;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 1

    .line 72567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72568
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A01()Lcom/facebook/ads/redexgen/X/Ao;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 72569
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 72570
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "YaUcq3PJYQGMSsmKTTLasxzUL6lFeW7O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x79

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 5

    .line 72571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 72572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    const/16 v2, 0x43

    const/16 v1, 0x16

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 72573
    const/16 v2, 0x59

    const/16 v1, 0xe

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 72574
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XP;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x73t
        0x7et
        0x3bt
        0x76t
        0x7et
        0x7ft
        0x72t
        0x7at
        0x3bt
        0x78t
        0x69t
        0x7et
        0x7at
        0x6ft
        0x72t
        0x6dt
        0x7et
        0x3bt
        0x6dt
        0x72t
        0x7et
        0x6ct
        0x3bt
        0x72t
        0x68t
        0x3bt
        0x75t
        0x6et
        0x77t
        0x77t
        0x35t
        0x79t
        0x42t
        0x5et
        0x49t
        0x4bt
        0x45t
        0x5ft
        0x58t
        0x49t
        0x5et
        0x45t
        0x42t
        0x4bt
        0xct
        0x4dt
        0xct
        0x42t
        0x59t
        0x40t
        0x40t
        0xct
        0x4ft
        0x5et
        0x49t
        0x4dt
        0x58t
        0x45t
        0x5at
        0x49t
        0xct
        0x5at
        0x45t
        0x49t
        0x5bt
        0xdt
        0x53t
        0x6ct
        0x60t
        0x72t
        0x75t
        0x6at
        0x6ct
        0x6bt
        0x71t
        0x41t
        0x64t
        0x71t
        0x64t
        0x25t
        0x6ct
        0x76t
        0x25t
        0x6bt
        0x70t
        0x69t
        0x69t
        0x24t
        0x19t
        0xft
        0x9t
        0x5t
        0x4t
        0xet
        0x35t
        0x9t
        0x2t
        0xbt
        0x4t
        0x4t
        0xft
        0x6t
    .end array-data
.end method


# virtual methods
.method public final ADb()V
    .locals 1

    .line 72575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    if-eqz v0, :cond_0

    .line 72576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00()V

    .line 72577
    :goto_0
    return-void

    .line 72578
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A01()V

    goto :goto_0
.end method

.method public final AGc()V
    .locals 1

    .line 72579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    if-eqz v0, :cond_0

    .line 72580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A03()V

    .line 72581
    :goto_0
    return-void

    .line 72582
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A01()V

    goto :goto_0
.end method

.method public final AKU(Landroid/view/View;)V
    .locals 5

    .line 72583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    if-nez v0, :cond_0

    .line 72584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 72585
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    const/16 v2, 0x20

    const/16 v1, 0x23

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 72586
    const/16 v2, 0x59

    const/16 v1, 0xe

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 72587
    return-void

    .line 72588
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ao;->A08(Landroid/view/View;)V

    .line 72589
    return-void
.end method

.method public final AKn(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    .line 72590
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/XP;->AKo(Landroid/view/View;Ljava/lang/String;ZZ)V

    .line 72591
    return-void
.end method

.method public final AKo(Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 6

    .line 72592
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/XP;->AKp(Landroid/view/View;Ljava/lang/String;ZZZ)V

    .line 72593
    return-void
.end method

.method public final AKp(Landroid/view/View;Ljava/lang/String;ZZZ)V
    .locals 8

    .line 72594
    move-object v4, p1

    if-nez v4, :cond_0

    .line 72595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 72596
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 72597
    const/16 v2, 0x59

    const/16 v1, 0xe

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 72598
    return-void

    .line 72599
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xe;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Xe;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/ge;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/Xe;

    .line 72600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/Xe;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(Lcom/facebook/ads/redexgen/X/rL;Landroid/view/View;)V

    .line 72601
    if-eqz p4, :cond_1

    .line 72602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/Xe;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xe;->A04()V

    .line 72603
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Uw;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/ge;

    move v7, p5

    move v6, p3

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Lcom/facebook/ads/redexgen/X/ge;Landroid/view/View;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/V1;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A06:Ljava/lang/String;

    .line 72604
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rN;->A00(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/rP;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/XM;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Xf;-><init>(Lcom/facebook/ads/redexgen/X/XM;)V

    .line 72605
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/rP;->A06(Lcom/facebook/ads/redexgen/X/rS;)Lcom/facebook/ads/redexgen/X/rP;

    move-result-object v0

    .line 72606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/rP;->A07()Lcom/facebook/ads/redexgen/X/rN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    .line 72607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/rN;

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 72608
    return-void
.end method
