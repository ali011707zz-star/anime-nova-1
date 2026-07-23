.class public final Lcom/facebook/ads/redexgen/X/WD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WC;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:Lcom/facebook/ads/redexgen/X/YE;

.field public static final A0B:Ljava/util/concurrent/Executor;

.field public static final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/WH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/WC;

.field public A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/Og;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/WE;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2174
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gkSyaXwR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2VU3Nz3voiV1lmdRee4U2QJOpqB0EmXx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "l2PJ1mhNLKomP6h8XAPCJTvwOfm7DNfm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "U14uMoZpedA5MoqMp8wF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZGFJtzG5houIZuhA5wVIi53yZAjLLlX2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TKuU0S0TRmpOZ7a0gUh222TH0KiJMCsX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ntgwe7QRVjptK5Vt0gMbvLxTukJluaCr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4nIPbhAhAn1Dg8Q4wgXTfE5Yoh5xfpBP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WD;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WD;->A0B()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YE;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/YE;

    .line 2175
    sget-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/YE;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Ljava/util/concurrent/Executor;

    .line 2176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 70302
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Og;)V

    .line 70303
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Og;)V
    .locals 2

    .line 70304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70305
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70306
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:J

    .line 70307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70308
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WE;->A00()Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A06:Lcom/facebook/ads/redexgen/X/WE;

    .line 70309
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WI;->A01(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A07:Ljava/lang/String;

    .line 70310
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    .line 70311
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/WD;)J
    .locals 1

    .line 70312
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/WD;J)J
    .locals 0

    .line 70313
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:J

    return-wide p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 70314
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method private A03(JLcom/facebook/ads/redexgen/X/WA;)Lcom/facebook/ads/redexgen/X/Sl;
    .locals 1

    .line 70315
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sl;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/Sl;-><init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/WA;J)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/WE;
    .locals 0

    .line 70316
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WD;->A06:Lcom/facebook/ads/redexgen/X/WE;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/WD;JLcom/facebook/ads/redexgen/X/WA;)Lcom/facebook/ads/redexgen/X/fw;
    .locals 0

    .line 70317
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/WD;->A03(JLcom/facebook/ads/redexgen/X/WA;)Lcom/facebook/ads/redexgen/X/Sl;

    move-result-object p0

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WD;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/WD;)Ljava/lang/String;
    .locals 0

    .line 70318
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WD;->A07:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/WD;)Ljava/util/Map;
    .locals 0

    .line 70319
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/WD;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 70320
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:Ljava/util/Map;

    return-object p1
.end method

.method private A0A()V
    .locals 6

    .line 70321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gD;->A0A(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70322
    .end local v0
    :cond_0
    return-void

    .line 70323
    :cond_1
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 70324
    .local v0, "ex":Lcom/facebook/ads/redexgen/X/Te;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(I)V

    .line 70325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70326
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A1x:I

    .line 70327
    const/16 v2, 0x56

    const/4 v1, 0x7

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 70328
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x6e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WD;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x6bt
        -0x61t
        0x6ct
        0x6at
        0x6ft
        -0x60t
        0x70t
        -0x20t
        -0xft
        -0x11t
        -0x15t
        -0x13t
        -0x19t
        -0x10t
        -0x13t
        -0x17t
        -0xet
        -0x8t
        0x3t
        -0xat
        -0x17t
        -0xbt
        -0x7t
        -0x17t
        -0x9t
        -0x8t
        0x3t
        -0x13t
        -0x18t
        -0x7et
        -0x54t
        0x59t
        -0x75t
        -0x79t
        0x73t
        0x59t
        -0x3et
        -0x3dt
        -0x6ct
        -0x46t
        -0x43t
        -0x40t
        -0x40t
        -0x6ct
        -0x1at
        -0x27t
        -0x29t
        -0x27t
        -0x23t
        -0x16t
        -0x27t
        -0x28t
        -0x27t
        -0x6t
        -0x55t
        -0x2ft
        -0xct
        -0x9t
        -0x9t
        -0x55t
        -0x10t
        -0x3t
        -0x3t
        -0x6t
        -0x3t
        -0x55t
        -0x12t
        -0x6t
        -0x11t
        -0x10t
        -0x55t
        -0x1at
        -0x50t
        -0x2t
        -0x18t
        -0x55t
        -0x50t
        -0x2t
        -0x21t
        -0x23t
        -0x1at
        -0x23t
        -0x16t
        -0x1ft
        -0x25t
        -0x39t
        -0x42t
        -0x33t
        -0x30t
        -0x38t
        -0x35t
        -0x3ct
        0xat
        0xbt
        -0x1et
        0x5t
        0x8t
        0x8t
        -0x1ct
        0xbt
        0xbt
        0x7t
        -0x23t
        -0x21t
        -0x24t
        -0x1dt
        -0x2at
        -0x2ft
        -0x2et
    .end array-data
.end method

.method private A0C(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70329
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70331
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 70332
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 1

    .line 70333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:Lcom/facebook/ads/redexgen/X/WC;

    if-eqz v0, :cond_0

    .line 70334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:Lcom/facebook/ads/redexgen/X/WC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/WC;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 70335
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 1

    .line 70336
    new-instance v0, Lcom/facebook/ads/redexgen/X/RO;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/RO;-><init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 70337
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/WD;)V
    .locals 0

    .line 70338
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WD;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 0

    .line 70339
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0D(Lcom/facebook/ads/redexgen/X/Vm;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 0

    .line 70340
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 0

    .line 70341
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0L(Lcom/facebook/ads/redexgen/X/RG;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
    .locals 0

    .line 70342
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/WD;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
    .locals 0

    .line 70343
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/WD;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 3

    .line 70344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:Lcom/facebook/ads/redexgen/X/WC;

    if-eqz v0, :cond_1

    .line 70345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:Lcom/facebook/ads/redexgen/X/WC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/WC;->AG7(Lcom/facebook/ads/redexgen/X/RG;)V

    .line 70346
    :cond_0
    :goto_0
    return-void

    .line 70347
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70348
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    .line 70350
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70351
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A0B()Ljava/lang/String;

    move-result-object v0

    .line 70352
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 1

    .line 70353
    new-instance v0, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/RG;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 70354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A06()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    .line 70356
    .local v0, "syncModule":Lcom/facebook/ads/redexgen/X/TE;
    if-eqz v0, :cond_0

    .line 70357
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->A6d()V

    .line 70358
    .end local v0    # "syncModule":Lcom/facebook/ads/redexgen/X/TE;
    :cond_0
    return-void
.end method

.method private A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
    .locals 11

    .line 70359
    move-object v0, p0

    :try_start_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/WD;->A06:Lcom/facebook/ads/redexgen/X/WE;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/WE;->A07(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/WG;

    move-result-object v5

    .line 70360
    .local v0, "serverResponse":Lcom/facebook/ads/redexgen/X/WG;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/WG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v6

    .line 70361
    .local p1, "placement":Lcom/facebook/ads/redexgen/X/Tw;
    if-eqz v6, :cond_2

    .line 70362
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v2

    .line 70363
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A0A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Up;->A36(Ljava/lang/String;)V

    .line 70364
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A0x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70365
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A08()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70366
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A08()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/U6;->A04(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    .line 70367
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A0y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70368
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A0D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70369
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70370
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A0D()Ljava/lang/String;

    move-result-object v1

    .line 70371
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/U6;->A05(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    .line 70372
    :cond_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Tc;->ACP()V

    .line 70373
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/WD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A07()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Og;->A0N(Ljava/lang/String;)V

    .line 70374
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v1

    .line 70375
    .local v2, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/Tx;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tx;->A0B()J

    move-result-wide v1

    .line 70376
    invoke-static {v1, v2, p4}, Lcom/facebook/ads/redexgen/X/W9;->A05(JLcom/facebook/ads/redexgen/X/WA;)V

    .line 70377
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WD;->A0B:Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, v6}, Lcom/facebook/ads/redexgen/X/YS;->A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/Tw;)V

    .line 70378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    const/4 v2, 0x7

    const/4 v1, 0x0

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70379
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XY;->A02()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 70380
    .local v3, "reactNativeException":Lcom/facebook/ads/redexgen/X/Te;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Te;->A06(I)V

    .line 70381
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Te;->A0A(Z)V

    .line 70382
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70383
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    const/16 v4, 0x4f

    const/4 v3, 0x7

    const/16 v1, 0x3f

    invoke-static {v4, v3, v1}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A1W:I

    .line 70384
    invoke-interface {v7, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Tc;->ACA(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 70385
    .end local v2    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/Tx;
    .end local v3    # "reactNativeException":Lcom/facebook/ads/redexgen/X/Te;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/WB;->A00:[I

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/WG;->A01()Lcom/facebook/ads/redexgen/X/WF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/WF;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 70386
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70387
    .end local v2
    .local p2, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70388
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70389
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v5

    .line 70390
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 70391
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 70392
    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 70393
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V

    goto/16 :goto_3

    .line 70394
    :pswitch_0
    check-cast v5, Lcom/facebook/ads/redexgen/X/R4;

    .line 70395
    .local v2, "serverResponseError":Lcom/facebook/ads/redexgen/X/R4;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/R4;->A04()Ljava/lang/String;

    move-result-object v8

    .line 70396
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/R4;->A03()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70397
    invoke-static {v2, v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    .line 70398
    .local v4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/R4;->A03()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/WD;->A0C(ILjava/lang/String;)V

    .line 70399
    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    move-object v8, p1

    .line 70400
    .local v5, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70401
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70402
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v5

    .line 70403
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 70404
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 70405
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 70406
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V

    goto/16 :goto_3

    .line 70407
    .end local v2    # "serverResponseError":Lcom/facebook/ads/redexgen/X/R4;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v5    # "finalErrMessage":Ljava/lang/String;
    :pswitch_1
    move-object v8, v5

    check-cast v8, Lcom/facebook/ads/redexgen/X/RG;

    .line 70408
    .local v2, "ads":Lcom/facebook/ads/redexgen/X/RG;
    if-eqz v6, :cond_5

    .line 70409
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v1

    .line 70410
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/Tx;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tx;->A0E()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70411
    invoke-static {p1, p4}, Lcom/facebook/ads/redexgen/X/W9;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/WA;)V

    .line 70412
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A03:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 70413
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/WD;->A03:Ljava/util/Map;

    const/16 v3, 0xd

    const/16 v2, 0x11

    const/16 v1, 0x6b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70414
    .local v4, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/WG;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 70415
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 70416
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70417
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A03()Lcom/facebook/ads/redexgen/X/T9;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70418
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/WG;->A02()Ljava/lang/String;

    move-result-object v1

    .line 70419
    invoke-interface {v3, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/T9;->AIi(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Ljava/lang/String;)V

    .line 70420
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/Tx;
    .end local v4    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70421
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v7

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70422
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v5

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:J

    .line 70423
    invoke-static {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Y1;->A02(JJ)J

    move-result-wide v1

    .line 70424
    invoke-interface {v7, v5, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/Lt;->A3X(JJ)V

    .line 70425
    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/WD;->A0M(Lcom/facebook/ads/redexgen/X/RG;)V

    goto :goto_3

    .line 70426
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70427
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 70428
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 70429
    .local p1, "errorMessage":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70430
    .restart local p2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A09:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_7

    .line 70431
    sget-object v3, Lcom/facebook/ads/redexgen/X/WD;->A09:[Ljava/lang/String;

    const-string v2, "STn1t4NLUPoQ"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v5

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70432
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v6

    .line 70433
    invoke-virtual {v4}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v8

    .line 70434
    invoke-virtual {v4}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v10

    .line 70435
    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 70436
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 70437
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "errorMessage":Ljava/lang/String;
    .end local p2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_3
    return-void

    :cond_7
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

.method private A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
    .locals 7

    .line 70438
    sget-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sr;

    move-object v2, p0

    move-object v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Sr;-><init>(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70439
    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/WA;)Z
    .locals 6

    .line 70440
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WA;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70441
    .local v0, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Wl;->A0F(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 70442
    return v5

    .line 70443
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Wl;->A0A(Ljava/lang/String;)I

    move-result v2

    .line 70444
    .local v1, "storedAdsCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0J(Landroid/content/Context;)I

    move-result v1

    .line 70445
    .local v3, "maxStoredAdsCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70446
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Wl;->A09(Ljava/lang/String;)I

    move-result v0

    .line 70447
    .local v4, "currentlyLoadedAds":I
    if-ge v2, v1, :cond_1

    if-le v2, v0, :cond_3

    .line 70448
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70449
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v1

    .line 70450
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WA;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0B(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 70451
    .local v5, "storedAd":Landroid/util/Pair;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A09:[Ljava/lang/String;

    const-string v1, "wxWvHA1chxzz72CPhzVDSI5kTKVxH7gh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qa9WwGn6xu1bvFfukLGFlV7cMdAOaohF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 70452
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    .line 70453
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70454
    .end local v5    # "storedAd":Landroid/util/Pair;
    :cond_3
    return v5
.end method


# virtual methods
.method public final A0Q(Lcom/facebook/ads/redexgen/X/WA;)V
    .locals 9

    .line 70455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A0B(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 70457
    sget-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 70458
    .local v0, "provider":Lcom/facebook/ads/redexgen/X/WH;
    if-eqz v0, :cond_0

    .line 70459
    const/16 v2, 0x67

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70460
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A02(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 70461
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0P(Lcom/facebook/ads/redexgen/X/WA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70462
    return-void

    .line 70463
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/W9;->A08(Lcom/facebook/ads/redexgen/X/WA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70464
    sget-object v1, Lcom/facebook/ads/redexgen/X/YG;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tg;-><init>(Lcom/facebook/ads/redexgen/X/WD;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70465
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/W9;->A02(Lcom/facebook/ads/redexgen/X/WA;)Ljava/lang/String;

    move-result-object v2

    .line 70466
    .local v1, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 70467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKg()V

    .line 70468
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/WD;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    .line 70469
    return-void

    .line 70470
    :cond_2
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70471
    .local v2, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 70472
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:J

    .line 70473
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v4

    .line 70474
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 70475
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 70476
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 70477
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 70478
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 70479
    return-void

    .line 70480
    .end local v1    # "lastResponse":Ljava/lang/String;
    .end local v2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/WD;->A0B:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TZ;-><init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/WA;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70481
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/WC;)V
    .locals 0

    .line 70482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:Lcom/facebook/ads/redexgen/X/WC;

    .line 70483
    return-void
.end method
