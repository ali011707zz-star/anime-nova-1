.class public abstract Lcom/facebook/ads/redexgen/X/pt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/common/Rating$RatingType;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3454
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aC8uc30vckBh0ldJ8CsDkWWGmQgl7sOm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dPCbCdxH5PRV4edn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QHj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dDf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KHWYQA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nwDl9CeJStZlhkBKgBcw2akg3aHE6X2p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pt;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/pt;->A07()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pt;->A02:Ljava/lang/String;

    .line 3455
    new-instance v0, Lcom/facebook/ads/redexgen/X/pu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pu;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pt;->A03:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A04(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pt;
    .locals 5

    .line 104918
    sget-object v1, Lcom/facebook/ads/redexgen/X/pt;->A02:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 104919
    .local v0, "ratingType":I
    packed-switch v4, :pswitch_data_0

    .line 104920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pt;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104921
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/AT;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/pt;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pt;->A01:[Ljava/lang/String;

    const-string v1, "Vr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/pt;

    return-object v3

    .line 104922
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/AU;->A04:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pt;

    return-object v0

    .line 104923
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/AV;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/pt;

    sget-object v1, Lcom/facebook/ads/redexgen/X/pt;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pt;->A01:[Ljava/lang/String;

    const-string v1, "RK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 104924
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104925
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/AX;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pt;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A05(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pt;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pt;->A04(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pt;

    move-result-object p0

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/pt;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pt;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x7et
        -0x65t
        -0x68t
        -0x65t
        -0x64t
        -0x5ct
        -0x65t
        0x4dt
        0x7ft
        -0x72t
        -0x5ft
        -0x6at
        -0x65t
        -0x6ct
        -0x7ft
        -0x5at
        -0x63t
        -0x6et
        0x67t
        0x4dt
    .end array-data
.end method
