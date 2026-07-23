.class public final Lcom/facebook/ads/redexgen/X/fX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/fV;,
        Lcom/facebook/ads/redexgen/X/fW;,
        Lcom/facebook/ads/redexgen/X/fU;
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/AA;

.field public final A01:Lcom/facebook/ads/redexgen/X/nA;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 82394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82395
    new-instance v0, Lcom/facebook/ads/redexgen/X/nA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nA;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A01:Lcom/facebook/ads/redexgen/X/nA;

    .line 82396
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fX;->A01:Lcom/facebook/ads/redexgen/X/nA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nR;-><init>(Lcom/facebook/ads/redexgen/X/F6;)V

    .line 82397
    .local v0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/Em;
    new-instance v3, Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/Em;)V

    .line 82398
    .local v1, "trackSelector":Lcom/facebook/ads/redexgen/X/Ew;
    new-instance v2, Lcom/facebook/ads/redexgen/X/ox;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/ox;-><init>()V

    .line 82399
    .local v2, "loadControl":Lcom/facebook/ads/redexgen/X/74;
    new-instance v1, Lcom/facebook/ads/redexgen/X/ou;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/ou;-><init>(Landroid/content/Context;)V

    .line 82400
    .local v3, "renderersFactory":Lcom/facebook/ads/redexgen/X/7t;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A01:Lcom/facebook/ads/redexgen/X/nA;

    .line 82401
    invoke-static {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/6b;->A00(Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/AA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    .line 82402
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fX;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/pz;)Ljava/lang/String;
    .locals 6

    .line 82403
    instance-of v3, p0, Lcom/facebook/ads/redexgen/X/AD;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 82404
    check-cast p0, Lcom/facebook/ads/redexgen/X/AD;

    .line 82405
    .local v0, "exoPlaybackException":Lcom/facebook/ads/redexgen/X/AD;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A03:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82406
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AD;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82407
    return-object v0

    .line 82408
    .end local v0    # "exoPlaybackException":Lcom/facebook/ads/redexgen/X/AD;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82409
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/pz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82410
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/pz;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82411
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fX;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x40t
        -0x36t
        -0x42t
        -0x40t
        0x1t
        -0x1t
        0x13t
        0x11t
        0x3t
        -0x40t
        -0x42t
        -0x28t
        -0x42t
        -0x40t
        -0x4at
        -0x40t
        -0x4ct
        -0x4at
        0x6t
        -0x7t
        0x2t
        -0x8t
        -0x7t
        0x6t
        -0x7t
        0x6t
        -0x23t
        0x2t
        -0x8t
        -0x7t
        0xct
        -0x4at
        -0x4ct
        -0x32t
        -0x4ct
        -0x4at
        -0x36t
        0x25t
        -0x9t
        -0x6t
        0x9t
        0x10t
        -0x49t
        0x2t
        -0x6t
        0x8t
        0x8t
        -0xat
        -0x4t
        -0x6t
        -0x49t
        -0x4bt
        -0x31t
        -0x4bt
        -0x49t
        -0x4bt
        0x5ct
        -0x52t
        -0x4dt
        -0x56t
        -0x61t
        0x5ct
        0x5at
        0x74t
        0x5at
        0x5ct
    .end array-data
.end method

.method public static A03()Z
    .locals 1

    .line 82412
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 82413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0I()I

    move-result v0

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 82414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qP;->A00()I

    move-result v0

    return v0
.end method

.method public final A06()J
    .locals 2

    .line 82415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A7e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()J
    .locals 2

    .line 82416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A7s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/fV;
    .locals 3

    .line 82417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0K()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 82418
    .local v0, "vf":Lcom/facebook/ads/redexgen/X/qI;
    if-nez v0, :cond_0

    .line 82419
    const/4 v0, 0x0

    return-object v0

    .line 82420
    :cond_0
    iget v2, v0, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/fV;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/fV;-><init>(II)V

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 82421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0L()V

    .line 82422
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 82423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qP;->A02()V

    .line 82424
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 82425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qP;->A01()V

    .line 82426
    return-void
.end method

.method public final A0C(F)V
    .locals 1

    .line 82427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A0M(F)V

    .line 82428
    return-void
.end method

.method public final A0D(J)V
    .locals 1

    .line 82429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/qP;->A04(J)V

    .line 82430
    return-void
.end method

.method public final A0E(Landroid/view/Surface;)V
    .locals 1

    .line 82431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A0N(Landroid/view/Surface;)V

    .line 82432
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)V
    .locals 3

    .line 82433
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A2z(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82434
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/fb;->A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fb;

    move-result-object v0

    .line 82435
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/fb;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fb;->A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/5Y;

    move-result-object v1

    .line 82436
    .local v1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/5Y;
    new-instance v0, Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Lcom/facebook/ads/redexgen/X/5Y;)V

    .line 82437
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/9o;->A04(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/9n;

    move-result-object v1

    .line 82438
    .local v2, "mediaSource":Lcom/facebook/ads/redexgen/X/Cx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A0Q(Lcom/facebook/ads/redexgen/X/Cx;)V

    .line 82439
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/fb;
    .end local v1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/5Y;
    .end local v2    # "mediaSource":Lcom/facebook/ads/redexgen/X/Cx;
    .end local v0
    .end local v1
    :goto_0
    return-void

    .line 82440
    :cond_0
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A01:Lcom/facebook/ads/redexgen/X/nA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/pE;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/pE;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5t;)V

    .line 82441
    .local v0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/5Y;
    new-instance v0, Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Lcom/facebook/ads/redexgen/X/5Y;)V

    .line 82442
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/9o;->A04(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/9n;

    move-result-object v1

    .line 82443
    .local v1, "mediaSource":Lcom/facebook/ads/redexgen/X/Cx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A0Q(Lcom/facebook/ads/redexgen/X/Cx;)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/fU;)V
    .locals 2

    .line 82444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/D6;-><init>(Lcom/facebook/ads/redexgen/X/fX;Lcom/facebook/ads/redexgen/X/fU;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0O(Lcom/facebook/ads/redexgen/X/3U;)V

    .line 82445
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/fW;)V
    .locals 2

    .line 82446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2s;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2s;-><init>(Lcom/facebook/ads/redexgen/X/fX;Lcom/facebook/ads/redexgen/X/fW;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0P(Lcom/facebook/ads/redexgen/X/ol;)V

    .line 82447
    return-void
.end method

.method public final A0I(Z)V
    .locals 1

    .line 82448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A0S(Z)V

    .line 82449
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 82450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0T()Z

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 82451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fX;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0J()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
