.class public final Lcom/facebook/ads/redexgen/X/Rd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdViewApi;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/AdListener;

.field public A03:Lcom/facebook/ads/redexgen/X/7k;

.field public A04:Lcom/facebook/ads/redexgen/X/b6;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public final A07:Landroid/util/DisplayMetrics;

.field public final A08:Lcom/facebook/ads/AdView;

.field public final A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/76;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Vp;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1623
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8ZsaPqFHBksSubEDxj161z8v83o0PIqL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1NWTdVv6N7aOqefGpQ3nVAkwh7f4QYaR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Q4l1tys1ZSMgMj214694goNihNba6PJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j8ts1um9VlgNYzePKTTbdrZm7P7LEYQS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t56Pwr0qdwmiw03ThNEKvYWwkytCRLDg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RREINDdqXCKFIVRasebbhTe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "edGRVZA6FwzGspMgtzkdHpprfoIdLjRD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fNcadsm2hMDvYVzuw1qW3xw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rd;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 9

    .line 62434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62435
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:J

    .line 62436
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-eq p3, v0, :cond_0

    .line 62437
    invoke-virtual {p5}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Landroid/util/DisplayMetrics;

    .line 62438
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/XG;->A04(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Vp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Lcom/facebook/ads/redexgen/X/Vp;

    .line 62439
    move-object v3, p2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Ljava/lang/String;

    .line 62440
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    .line 62441
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Lcom/facebook/ads/AdView;

    .line 62442
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A08(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    .line 62443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A3T(Ljava/lang/String;Ljava/lang/String;)V

    .line 62444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XG;->A05(Lcom/facebook/ads/redexgen/X/Vp;)Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v4

    .line 62445
    .local v0, "adTemplate":Lcom/facebook/ads/redexgen/X/Vq;
    new-instance v2, Lcom/facebook/ads/redexgen/X/O7;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 62446
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/XG;->A04(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Vp;

    move-result-object v6

    new-instance v8, Lcom/facebook/ads/redexgen/X/ij;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/ij;-><init>()V

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILcom/facebook/ads/redexgen/X/U3;)V

    .line 62447
    .local v1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/O7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A06(Ljava/lang/String;)V

    .line 62448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A07(Ljava/lang/String;)V

    .line 62449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7k;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/O7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    .line 62450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    new-instance v0, Lcom/facebook/ads/redexgen/X/hM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hM;-><init>(Lcom/facebook/ads/redexgen/X/Rd;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 62451
    return-void

    .line 62452
    .end local v0    # "adTemplate":Lcom/facebook/ads/redexgen/X/Vq;
    .end local v1    # "adControllerConfig":Lcom/facebook/ads/redexgen/X/O7;
    :cond_0
    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Vn;
        }
    .end annotation

    .line 62453
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Rd;->A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;

    move-result-object v3

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Rd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    .line 62454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4T()V

    .line 62455
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Vn;
        }
    .end annotation

    .line 62456
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vu;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v0

    .line 62457
    .local v0, "template":Lcom/facebook/ads/redexgen/X/Vq;
    if-eqz v0, :cond_0

    .line 62458
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vu;->A03(Lcom/facebook/ads/redexgen/X/Vq;)V

    .line 62459
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XG;->A01(Lcom/facebook/ads/redexgen/X/Vq;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    .line 62460
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    .line 62461
    const/16 v2, 0x43

    const/16 v1, 0x29

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Vn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

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

    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x6ft
        -0x42t
        -0x71t
        -0x70t
        -0x6bt
        -0x6et
        -0x72t
        -0x6dt
        -0x69t
        -0x39t
        -0x6et
        -0x38t
        -0x6ct
        -0x65t
        -0x3ct
        -0x3at
        0x64t
        0x60t
        0x64t
        0x5dt
        0x63t
        0x65t
        0x5et
        0x63t
        -0x53t
        -0x34t
        -0x27t
        -0x27t
        -0x30t
        -0x23t
        -0x75t
        -0x34t
        -0x31t
        -0x75t
        -0x31t
        -0x30t
        -0x22t
        -0x21t
        -0x23t
        -0x26t
        -0x1ct
        -0x30t
        -0x31t
        -0x23t
        -0x4t
        0x9t
        0x9t
        0x0t
        0xdt
        -0x45t
        -0x4t
        -0x1t
        -0x45t
        0x7t
        0xat
        -0x4t
        -0x1t
        -0x45t
        0xdt
        0x0t
        0xct
        0x10t
        0x0t
        0xet
        0xft
        0x0t
        -0x1t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x0t
        0x3t
        0x8t
        -0x2t
        -0x46t
        -0x5t
        -0x46t
        0xet
        -0x1t
        0x7t
        0xat
        0x6t
        -0x5t
        0xet
        -0x1t
        -0x46t
        0xet
        0x2t
        -0x5t
        0xet
        -0x46t
        0x6t
        0x9t
        -0x5t
        -0x2t
        -0x46t
        -0x4t
        0x3t
        -0x2t
        -0x46t
        -0x3ft
        -0x41t
        0xdt
        -0x3ft
        -0x53t
        -0x50t
        -0x61t
        -0x4bt
        -0x3at
        -0x4ft
        -0x48t
        -0x47t
        -0x39t
        -0x38t
        -0x3at
        -0x3dt
        -0x33t
        -0x3et
        -0x3bt
        -0x49t
        -0x46t
        -0x69t
        -0x46t
    .end array-data
.end method

.method private A03(Ljava/lang/String;)V
    .locals 4

    .line 62462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:J

    .line 62463
    if-nez p1, :cond_1

    .line 62464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q()V

    .line 62465
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "pe4oZgDQ3sTDNo8k5JxuPcj1mqE4f2TD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 62466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0W(Ljava/lang/String;)V

    .line 62467
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3O()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    .line 62468
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "D8Oc2vjooMbkdhwRsJFg2j6kNTTlIbDv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 62469
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "M5Y3D3mNGdfLR2WDul4k9MR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "fol70tWokzFUGtpcuxJkkr6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3P()V

    goto :goto_0

    .line 62470
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 62471
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:J

    return-wide v0
.end method

.method public final A05()Landroid/util/DisplayMetrics;
    .locals 1

    .line 62472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/AdListener;
    .locals 1

    .line 62473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/AdView;
    .locals 1

    .line 62474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/7k;
    .locals 1

    .line 62475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/76;
    .locals 1

    .line 62476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Vp;
    .locals 1

    .line 62477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Lcom/facebook/ads/redexgen/X/Vp;

    return-object v0
.end method

.method public final A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 4

    .line 62478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4g(Z)V

    .line 62479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    .line 62481
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/eE;->A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v3

    .line 62482
    .local v0, "overlayView":Lcom/facebook/ads/redexgen/X/eF;
    if-eqz v3, :cond_0

    .line 62483
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 62484
    .local v1, "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62485
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62486
    .end local v0    # "overlayView":Lcom/facebook/ads/redexgen/X/eF;
    .end local v1    # "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 62487
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/AdListener;)V
    .locals 2

    .line 62488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3M(Z)V

    .line 62489
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/AdListener;

    .line 62490
    return-void

    .line 62491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 62492
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/b6;

    .line 62493
    return-void
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 62494
    new-instance v0, Lcom/facebook/ads/redexgen/X/VO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/redexgen/X/Rd;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x72

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3U()V

    .line 62496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 62497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A0Y(Z)V

    .line 62498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 62499
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    .line 62500
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/b6;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Lcom/facebook/ads/AdView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 62501
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "SHsAoZcgZfma8JU5HMv6EkUhgjUJ0aGa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "YiN0xr4bPRWWNOnd45hBajl5vHs2Fp2h"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/b6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    .line 62503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 62504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "J1HUKKESb8xh9TFSe40ffgC38LRgNVZ2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "o5XwXeFkKzkcKZo9S4DQ1FFyX8pzWZSK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/b6;

    invoke-virtual {v4, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 62505
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 62506
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/view/View;

    .line 62507
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/AdListener;

    .line 62508
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0E:[Ljava/lang/String;

    const-string v1, "s1kiAbubcu5fNfkZcH7haOM3HmV2C0HH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "uWy9U3opZwSsfb0VGZsAFVhup97A7xCm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/b6;

    invoke-virtual {v4, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 62509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 62510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 62511
    .local v0, "isInvalidated":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A5f(Z)V

    .line 62512
    return v1

    .line 62513
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62514
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A03(Ljava/lang/String;)V

    .line 62515
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    .locals 5

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62516
    check-cast p1, Lcom/facebook/ads/redexgen/X/VO;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/VO;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A03(Ljava/lang/String;)V

    .line 62517
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 62518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdViewParentApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62520
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vs;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Vp;)V

    .line 62521
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62522
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/lang/String;

    .line 62523
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    .line 62524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:Lcom/facebook/ads/redexgen/X/76;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    if-eqz v0, :cond_0

    .line 62525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O7;->A06(Ljava/lang/String;)V

    .line 62526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/7k;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O7;->A07(Ljava/lang/String;)V

    .line 62527
    :cond_0
    return-void
.end method
