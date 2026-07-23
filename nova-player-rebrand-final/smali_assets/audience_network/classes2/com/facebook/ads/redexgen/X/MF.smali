.class public final Lcom/facebook/ads/redexgen/X/MF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1383
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8F1ylXiPLmOJlxHuSB0OfTD8ERnub0Jc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S6BOYeNFrgFu99vNdASrFyo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dJPilyeR7SZ6Rr21hdX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "myhsKKLHgmC4nogMMn1nxIO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jSXY2xjzyKT8sDO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m4o2VQ2UIP9pfbMg6FrqdCCZlyPN5tpn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ArrKoNW9WxnAbKv8I1vfh8MoVmXkp7wv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MU6Xe0UyfSgNRnTq3TqZG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MF;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51425
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MF;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MF;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0xdt
        0xft
        0x4ct
        0x4t
        0x3t
        0x1t
        0x7t
        0x0t
        0xdt
        0xdt
        0x9t
        0x4ct
        0x3t
        0x6t
        0x11t
        0x4ct
        0x3t
        0x6t
        0x10t
        0x7t
        0x12t
        0xdt
        0x10t
        0x16t
        0xbt
        0xct
        0x5t
        0x4ct
        0x24t
        0x2bt
        0x2ct
        0x2bt
        0x31t
        0x2at
        0x3dt
        0x23t
        0x26t
        0x3dt
        0x30t
        0x27t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x2bt
        0x2ct
        0x25t
        0x3dt
        0x24t
        0x2et
        0x2dt
        0x35t
    .end array-data
.end method


# virtual methods
.method public final A53()V
    .locals 4

    .line 51426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0A(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0A(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x35

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 51428
    :cond_0
    return-void
.end method

.method public final A54()V
    .locals 2

    .line 51429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0P()V

    .line 51430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0B(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0B(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yi;->AFi(Z)V

    .line 51432
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0C(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Zc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0C(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Zc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zc;->ACr()V

    .line 51434
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0I(Lcom/facebook/ads/redexgen/X/Zd;)V

    .line 51435
    return-void
.end method

.method public final A9c()V
    .locals 3

    .line 51436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A08(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51437
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MF;->A54()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_0

    .line 51438
    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const-string v1, "E4Sw3glaT0j7tztglKcmJ4X"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "i6sG1P4DTWmVPFfNkRQLKmp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51439
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A03(Lcom/facebook/ads/redexgen/X/Zd;)I

    .line 51440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A08(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ok;->A02()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    if-nez v0, :cond_3

    .line 51441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0J(Lcom/facebook/ads/redexgen/X/Zd;)V

    .line 51442
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51443
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A09(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51444
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zd;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 51445
    :cond_2
    return-void

    .line 51446
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A08(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ok;->A02()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0K(Lcom/facebook/ads/redexgen/X/Zd;Lcom/facebook/ads/redexgen/X/Ok;)V

    goto :goto_0
.end method

.method public final AAp()V
    .locals 4

    .line 51447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51448
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51449
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A09(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51450
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0I()Ljava/lang/String;

    move-result-object v0

    .line 51451
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51452
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0D(Lcom/facebook/ads/redexgen/X/Zd;)Ljava/lang/String;

    move-result-object v0

    .line 51453
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 51454
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A07(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A04()V

    .line 51455
    return-void
.end method

.method public final AAq()V
    .locals 4

    .line 51456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0P()V

    .line 51457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0B(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0B(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yi;->AFi(Z)V

    .line 51459
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51460
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51461
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A09(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51462
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    .line 51463
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0D(Lcom/facebook/ads/redexgen/X/Zd;)Ljava/lang/String;

    move-result-object v0

    .line 51464
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 51465
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A07(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A06()V

    .line 51466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0I(Lcom/facebook/ads/redexgen/X/Zd;)V

    .line 51467
    return-void
.end method

.method public final AEr(Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 5

    .line 51468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A02(Lcom/facebook/ads/redexgen/X/Zd;)I

    .line 51469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Zd;->A06(Lcom/facebook/ads/redexgen/X/Zd;Lcom/facebook/ads/redexgen/X/Oi;)Lcom/facebook/ads/redexgen/X/Oi;

    .line 51470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A05(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A04:Lcom/facebook/ads/redexgen/X/Oi;

    if-ne v1, v0, :cond_0

    .line 51471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0A()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v4

    .line 51472
    .local v0, "menuItem":Lcom/facebook/ads/redexgen/X/Ok;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const-string v1, "uGU0gkKbqe2rkd9hIKZj6BU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Cw3GzUJKwEhWx9AKZcDfceI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Zd;->A0K(Lcom/facebook/ads/redexgen/X/Zd;Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 51473
    return-void

    .line 51474
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const-string v1, "aVWWA7RlXQ4WxwD1lKH3adLgfY6YTeho"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "uW2I9G42iXHj1OU85KkNtz4HKFKkrOfh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Zd;->A04(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/Ok;)V
    .locals 4

    .line 51475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A02(Lcom/facebook/ads/redexgen/X/Zd;)I

    .line 51476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A07(Lcom/facebook/ads/redexgen/X/Zd;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ok;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A07(I)V

    .line 51477
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ok;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Zd;->A0L(Lcom/facebook/ads/redexgen/X/Zd;Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 51479
    :goto_0
    return-void

    .line 51480
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MF;->A00:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/MF;->A02:[Ljava/lang/String;

    const-string v1, "wullz3k0Ma2cYDBinBI95xBWIfHYuzlI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkJ6jlNGXVBBqnzofRVuEUhlZdNAnE5y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Zd;->A0K(Lcom/facebook/ads/redexgen/X/Zd;Lcom/facebook/ads/redexgen/X/Ok;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
