.class public final Lcom/facebook/ads/androidx/media3/common/ColorInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2a;,
        Lcom/facebook/ads/androidx/media3/common/ColorInfo$FieldNumber;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

.field public static final A0A:Lcom/facebook/ads/androidx/media3/common/ColorInfo;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 3514
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fwssHt7wmjS4irtBHVgHRy1kfHVI1fy3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Eontljbnef3w1ZNyXpqY7w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WqOEcdnYiI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OC7aOsM7dG7kZGpbfVwzqO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jKxxMaD7lr6ZikoqJ8VvarFUhz7fi6dh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IxIxrmcLCYn92mmubnPuZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "k8ZHYUrndjPkyYjbitUMWCOJyy2ruKg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BYcVzsGm3P4KW5EWFDHzj0wXk7JiqRGv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A08()V

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;-><init>(III[B)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 3515
    new-instance v0, Lcom/facebook/ads/redexgen/X/2a;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2a;-><init>()V

    .line 3516
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2a;->A01(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v0

    .line 3517
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2a;->A00(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v0

    .line 3518
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2a;->A02(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v0

    .line 3519
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A0A:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 3520
    new-instance v0, Lcom/facebook/ads/redexgen/X/2Z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2Z;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07:Landroid/os/Parcelable$Creator;

    .line 3521
    new-instance v0, Lcom/facebook/ads/redexgen/X/qO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qO;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A08:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .line 105492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105493
    iput p1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    .line 105494
    iput p2, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    .line 105495
    iput p3, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    .line 105496
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    .line 105497
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 105498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    .line 105500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    .line 105501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    .line 105502
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A1C(Landroid/os/Parcel;)Z

    move-result v0

    .line 105503
    .local v0, "hasHdrStaticInfo":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    .line 105504
    return-void

    .line 105505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 105506
    packed-switch p0, :pswitch_data_0

    .line 105507
    :pswitch_0
    const/4 p0, -0x1

    return p0

    .line 105508
    :pswitch_1
    const/4 p0, 0x6

    return p0

    .line 105509
    :pswitch_2
    const/4 p0, 0x2

    return p0

    .line 105510
    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A01(I)I
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 105511
    sparse-switch p0, :sswitch_data_0

    .line 105512
    const/4 v0, -0x1

    return v0

    .line 105513
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 105514
    :sswitch_1
    const/4 v0, 0x6

    return v0

    .line 105515
    :sswitch_2
    const/4 p0, 0x2

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "iITQwSOY6G69yL4zBCgmbr9Ezk0yNeSE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 105516
    :sswitch_3
    const/16 v0, 0xa

    return v0

    .line 105517
    :sswitch_4
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0xd -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic A02(Landroid/os/Bundle;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 5

    .line 105518
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 105519
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 105520
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 105521
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;-><init>(III[B)V

    .line 105522
    return-object v0
.end method

.method public static A03(I)Ljava/lang/String;
    .locals 4

    .line 105523
    packed-switch p0, :pswitch_data_0

    .line 105524
    :pswitch_0
    const/16 p0, 0x5d

    const/16 v3, 0x15

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "vjIO54OW5kLbXJOIktKSO2lZwe9uVoS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "lPZMw6sIoJTf8tamb5XBd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x45

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105525
    :pswitch_1
    const/16 v2, 0x33

    const/16 v1, 0xd

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105526
    :pswitch_2
    const/16 v2, 0x1d

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105527
    :pswitch_3
    const/16 v2, 0x9f

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A04(I)Ljava/lang/String;
    .locals 2

    .line 105528
    packed-switch p0, :pswitch_data_0

    .line 105529
    :pswitch_0
    const/16 p0, 0x72

    const/16 v1, 0x15

    const/16 v0, 0x76

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105530
    :pswitch_1
    const/4 p0, 0x3

    const/4 v1, 0x6

    const/16 v0, 0x23

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105531
    :pswitch_2
    const/16 p0, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105532
    :pswitch_3
    const/16 p0, 0xe

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105533
    :pswitch_4
    const/16 p0, 0xb0

    const/16 v1, 0x11

    const/16 v0, 0x55

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A05(I)Ljava/lang/String;
    .locals 4

    .line 105534
    packed-switch p0, :pswitch_data_0

    .line 105535
    :pswitch_0
    const/16 v2, 0x87

    const/16 v1, 0x18

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105536
    :pswitch_1
    const/16 v2, 0x27

    const/16 v1, 0x9

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105537
    :pswitch_2
    const/16 v2, 0x30

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105538
    :pswitch_3
    const/16 v2, 0x54

    const/16 v1, 0x9

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105539
    :pswitch_4
    const/16 v2, 0x46

    const/16 v1, 0xe

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105540
    :pswitch_5
    const/16 p0, 0xd5

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "Bpd0ZivgAzgpSLL99gZnlOGn3AZ7ySo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Ie1ERw9CGiz8VQ2Le8mIF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x28

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105541
    :pswitch_6
    const/16 v2, 0x40

    const/4 v1, 0x6

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105542
    :pswitch_7
    const/16 v2, 0xc1

    const/16 v1, 0x14

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A06(I)Ljava/lang/String;
    .locals 1

    .line 105543
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "3J0fS2w4pJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte p1, v0

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "NZQ27YGgzUvTQnYJbnO7KrKPnOKajcu0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A06:[Ljava/lang/String;

    const-string v1, "apS4Da1AN2CX9NcLFevAWz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J8xda0JkxA2JO9OskXZrhx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0xd9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x31t
        0x61t
        0x6dt
        0x3bt
        0x2dt
        0x4bt
        0x49t
        0x4bt
        0x49t
        0x3bt
        0x2dt
        0x4ft
        0x49t
        0x48t
        0x3et
        0x28t
        0x4bt
        0x4ct
        0x45t
        0x20t
        0xct
        0xft
        0xct
        0x11t
        0x2at
        0xdt
        0x5t
        0xct
        0x4bt
        0xdt
        0x3et
        0x27t
        0x27t
        0x6bt
        0x39t
        0x2at
        0x25t
        0x2ct
        0x2et
        0x47t
        0x61t
        0x6dt
        0x6dt
        0x61t
        0x20t
        0x32t
        0x2et
        0x32t
        0x2at
        0x2et
        0x25t
        0x7at
        0x5ft
        0x5bt
        0x5ft
        0x42t
        0x53t
        0x52t
        0x16t
        0x44t
        0x57t
        0x58t
        0x51t
        0x53t
        0x5ct
        0x79t
        0x7et
        0x75t
        0x71t
        0x62t
        0x53t
        0x44t
        0x52t
        0x20t
        0x53t
        0x4dt
        0x50t
        0x54t
        0x45t
        0x20t
        0x31t
        0x37t
        0x30t
        0x4dt
        0x27t
        0x20t
        0x46t
        0x44t
        0x4ct
        0x40t
        0x54t
        0x24t
        0x25t
        0x4at
        0x71t
        0x7bt
        0x7at
        0x79t
        0x76t
        0x71t
        0x7at
        0x7bt
        0x3ft
        0x7ct
        0x70t
        0x73t
        0x70t
        0x6dt
        0x3ft
        0x6dt
        0x7et
        0x71t
        0x78t
        0x7at
        0x79t
        0x42t
        0x48t
        0x49t
        0x4at
        0x45t
        0x42t
        0x49t
        0x48t
        0xct
        0x4ft
        0x43t
        0x40t
        0x43t
        0x5et
        0xct
        0x5ft
        0x5ct
        0x4dt
        0x4ft
        0x49t
        0x2ft
        0x14t
        0x1et
        0x1ft
        0x1ct
        0x13t
        0x14t
        0x1ft
        0x1et
        0x5at
        0x19t
        0x15t
        0x16t
        0x15t
        0x8t
        0x5at
        0xet
        0x8t
        0x1bt
        0x14t
        0x9t
        0x1ct
        0x1ft
        0x8t
        0x9t
        0x32t
        0x2ft
        0x39t
        0x28t
        0x7ct
        0x3ft
        0x33t
        0x30t
        0x33t
        0x2et
        0x7ct
        0x2et
        0x3dt
        0x32t
        0x3bt
        0x39t
        0x5at
        0x61t
        0x7ct
        0x6at
        0x7bt
        0x2ft
        0x6ct
        0x60t
        0x63t
        0x60t
        0x7dt
        0x2ft
        0x7ct
        0x7ft
        0x6et
        0x6ct
        0x6at
        0x3at
        0x1t
        0x1ct
        0xat
        0x1bt
        0x4ft
        0xct
        0x0t
        0x3t
        0x0t
        0x1dt
        0x4ft
        0x1bt
        0x1dt
        0xet
        0x1t
        0x1ct
        0x9t
        0xat
        0x1dt
        0x1t
        0x20t
        0x35t
        0x30t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Z
    .locals 2

    .line 105544
    if-eqz p0, :cond_1

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0A()Lcom/facebook/ads/redexgen/X/2a;
    .locals 2

    .line 105545
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2a;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/2a;-><init>(Lcom/facebook/ads/androidx/media3/common/ColorInfo;Lcom/facebook/ads/redexgen/X/2Z;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 105546
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 105547
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 105548
    return v3

    .line 105549
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 105550
    .end local v2
    :cond_1
    return v2

    .line 105551
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 105552
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    .line 105553
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105554
    :goto_0
    return v3

    .line 105555
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 105556
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00:I

    if-nez v0, :cond_0

    .line 105557
    const/16 v0, 0x11

    .line 105558
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    add-int/2addr v1, v0

    .line 105559
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    add-int/2addr v1, v0

    .line 105560
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    add-int/2addr v1, v0

    .line 105561
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 105562
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00:I

    .line 105563
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 105564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    const/16 v1, 0xa

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    .line 105565
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    .line 105566
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    .line 105567
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105568
    return-object v0

    .line 105569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 105570
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105571
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105572
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105573
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0w(Landroid/os/Parcel;Z)V

    .line 105574
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    if-eqz v0, :cond_0

    .line 105575
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105576
    :cond_0
    return-void

    .line 105577
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
