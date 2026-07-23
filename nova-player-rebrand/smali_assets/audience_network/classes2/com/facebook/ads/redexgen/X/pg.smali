.class public final Lcom/facebook/ads/redexgen/X/pg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static A05:[B

.field public static final A06:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pg;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/lang/String;

.field public final A04:[Lcom/facebook/ads/redexgen/X/qI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3418
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pg;->A05()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pg;->A07:Ljava/lang/String;

    .line 3419
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pg;->A08:Ljava/lang/String;

    .line 3420
    new-instance v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ph;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pg;->A06:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3

    .line 104517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104518
    array-length v0, p2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 104519
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pg;->A03:Ljava/lang/String;

    .line 104520
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    .line 104521
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    .line 104522
    aget-object v0, p2, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A01(Ljava/lang/String;)I

    move-result v1

    .line 104523
    .local v0, "type":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 104524
    aget-object v0, p2, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0S:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A01(Ljava/lang/String;)I

    move-result v1

    .line 104525
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/pg;->A02:I

    .line 104526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pg;->A04()V

    .line 104527
    return-void

    .line 104528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3

    .line 104529
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/pg;-><init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/qI;)V

    .line 104530
    return-void
.end method

.method public static A00(I)I
    .locals 0

    .line 104531
    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pg;
    .locals 5

    .line 104532
    sget-object v0, Lcom/facebook/ads/redexgen/X/pg;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104533
    .local v0, "formatBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 104534
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v4

    .line 104535
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/pg;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104536
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/redexgen/X/qI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/pg;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pg;-><init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/qI;)V

    return-object v0

    .line 104537
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/qI;->A0b:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v4

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/pg;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 104538
    if-eqz p0, :cond_0

    const/16 v2, 0x60

    const/4 v1, 0x3

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private A04()V
    .locals 6

    .line 104539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pg;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104540
    .local v0, "language":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pg;->A00(I)I

    move-result v1

    .line 104541
    .local v2, "roleFlags":I
    const/4 v5, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 104542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pg;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v3

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v5

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    const/16 v2, 0x4d

    const/16 v1, 0x9

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/pg;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104544
    return-void

    .line 104545
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pg;->A00(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 104546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    .line 104547
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    .line 104548
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    .line 104549
    const/16 v2, 0x56

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/pg;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104550
    return-void

    .line 104551
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104552
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pg;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x1ct
        0x10t
        0x12t
        0x1dt
        0x16t
        0x11t
        0x1at
        0x1bt
        0x5ft
        0x16t
        0x11t
        0x5ft
        0x10t
        0x11t
        0x1at
        0x5ft
        0x2bt
        0xdt
        0x1et
        0x1ct
        0x14t
        0x38t
        0xdt
        0x10t
        0xat
        0xft
        0x45t
        0x5ft
        0x58t
        0x64t
        0x63t
        0x6bt
        0x37t
        0x31t
        0x22t
        0x20t
        0x28t
        0x63t
        0x70t
        0x77t
        0x7ft
        0x23t
        0x25t
        0x36t
        0x34t
        0x3ct
        0x77t
        0x67t
        0x7et
        0x77t
        0x36t
        0x39t
        0x33t
        0x77t
        0x70t
        0x3et
        0x6at
        0x47t
        0x48t
        0x48t
        0x4bt
        0x5ct
        0x4bt
        0x40t
        0x5at
        0xet
        0x16t
        0x30t
        0x23t
        0x21t
        0x29t
        0x5t
        0x30t
        0x2dt
        0x37t
        0x32t
        0x32t
        0x3ft
        0x30t
        0x39t
        0x2bt
        0x3ft
        0x39t
        0x3bt
        0x2dt
        0x28t
        0x35t
        0x36t
        0x3ft
        0x7at
        0x3ct
        0x36t
        0x3bt
        0x3dt
        0x29t
        0x3dt
        0x26t
        0x2ct
    .end array-data
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 104553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0xa

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0x11

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x9

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x38

    const/4 v1, 0x1

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x43

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104554
    return-void
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 2

    .line 104555
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 104556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 104557
    return v1

    .line 104558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104559
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    .line 104560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104561
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 104562
    return v3

    .line 104563
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 104564
    .end local v2
    :cond_1
    return v2

    .line 104565
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/pg;

    .line 104566
    .local v2, "other":Lcom/facebook/ads/redexgen/X/pg;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pg;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 104567
    iget v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:I

    if-nez v0, :cond_0

    .line 104568
    const/16 v0, 0x11

    .line 104569
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 104570
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 104571
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:I

    .line 104572
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:I

    return v0
.end method
