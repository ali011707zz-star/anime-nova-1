.class public final Lcom/facebook/ads/redexgen/X/ov;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ou;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ov;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ou;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103497
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ov;->A00:Lcom/facebook/ads/redexgen/X/ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ov;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x12

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

    const/16 v0, 0xfe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ov;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x43t
        0x43t
        0x52t
        0x5at
        0x47t
        0x43t
        0x52t
        0x53t
        0x17t
        0x43t
        0x58t
        0x17t
        0x54t
        0x45t
        0x52t
        0x56t
        0x43t
        0x52t
        0x17t
        0x53t
        0x52t
        0x54t
        0x58t
        0x53t
        0x52t
        0x45t
        0x17t
        0x51t
        0x58t
        0x45t
        0x17t
        0x42t
        0x59t
        0x44t
        0x42t
        0x47t
        0x47t
        0x58t
        0x45t
        0x43t
        0x52t
        0x53t
        0x17t
        0x51t
        0x58t
        0x45t
        0x5at
        0x56t
        0x43t
        0x1ct
        0xdt
        0xdt
        0x11t
        0x14t
        0x1et
        0x1ct
        0x9t
        0x14t
        0x12t
        0x13t
        0x52t
        0x1et
        0x18t
        0x1ct
        0x50t
        0x4bt
        0x4dt
        0x45t
        0x79t
        0x68t
        0x68t
        0x74t
        0x71t
        0x7bt
        0x79t
        0x6ct
        0x71t
        0x77t
        0x76t
        0x37t
        0x7bt
        0x7dt
        0x79t
        0x35t
        0x2ft
        0x28t
        0x20t
        0x6bt
        0x7at
        0x7at
        0x66t
        0x63t
        0x69t
        0x6bt
        0x7et
        0x63t
        0x65t
        0x64t
        0x25t
        0x6et
        0x7ct
        0x68t
        0x79t
        0x7ft
        0x68t
        0x79t
        0x45t
        0x54t
        0x54t
        0x48t
        0x4dt
        0x47t
        0x45t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0xbt
        0x54t
        0x43t
        0x57t
        0x5t
        0x14t
        0x14t
        0x8t
        0xdt
        0x7t
        0x5t
        0x10t
        0xdt
        0xbt
        0xat
        0x4bt
        0x10t
        0x10t
        0x9t
        0x8t
        0x4ft
        0x1ct
        0x9t
        0x8t
        0x0t
        0x11t
        0x11t
        0xdt
        0x8t
        0x2t
        0x0t
        0x15t
        0x8t
        0xet
        0xft
        0x4et
        0x19t
        0x4ct
        0xct
        0x11t
        0x55t
        0x4ct
        0x2t
        0x4t
        0x0t
        0x4ct
        0x57t
        0x51t
        0x59t
        0x35t
        0x24t
        0x24t
        0x38t
        0x3dt
        0x37t
        0x35t
        0x20t
        0x3dt
        0x3bt
        0x3at
        0x7bt
        0x2ct
        0x79t
        0x39t
        0x24t
        0x60t
        0x79t
        0x22t
        0x20t
        0x20t
        0x32t
        0x23t
        0x23t
        0x3ft
        0x3at
        0x30t
        0x32t
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x7ct
        0x2bt
        0x7et
        0x22t
        0x26t
        0x3at
        0x30t
        0x38t
        0x27t
        0x3at
        0x3et
        0x36t
        0x7et
        0x27t
        0x2bt
        0x60t
        0x34t
        0xct
        0x1dt
        0x1dt
        0x1t
        0x4t
        0xet
        0xct
        0x19t
        0x4t
        0x2t
        0x3t
        0x42t
        0x15t
        0x40t
        0x1et
        0x18t
        0xft
        0x1ft
        0x4t
        0x1dt
        0x44t
        0x55t
        0x48t
        0x44t
        0x1ft
        0x46t
        0x44t
        0x44t
        0x53t
        0x42t
        0x5ft
        0x53t
        0x8t
        0x5ft
        0xat
        0x54t
        0x54t
        0x46t
    .end array-data
.end method


# virtual methods
.method public final A5K(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/lq;
    .locals 5

    .line 103498
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 103499
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103500
    :sswitch_0
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const/16 v2, 0xbc

    const/16 v1, 0x1c

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0xa7

    const/16 v1, 0x15

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_a
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    .line 103501
    :pswitch_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1S;-><init>()V

    return-object v0

    .line 103502
    :pswitch_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/List;)V

    return-object v0

    .line 103503
    :pswitch_2
    iget v2, p1, Lcom/facebook/ads/redexgen/X/qI;->A03:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1W;-><init>(ILjava/util/List;)V

    return-object v0

    .line 103504
    :pswitch_3
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A03:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/1X;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/1X;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    .line 103505
    :pswitch_4
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1O;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1O;-><init>(Ljava/util/List;)V

    return-object v0

    .line 103506
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/1Q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1Q;-><init>()V

    return-object v0

    .line 103507
    :pswitch_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/1P;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1P;-><init>()V

    return-object v0

    .line 103508
    :pswitch_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/1N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1N;-><init>()V

    return-object v0

    .line 103509
    :pswitch_8
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1R;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1R;-><init>(Ljava/util/List;)V

    return-object v0

    .line 103510
    :pswitch_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/1M;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1M;-><init>()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AKN(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 4

    .line 103511
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 103512
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103513
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103514
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103515
    const/16 v2, 0xa7

    const/16 v1, 0x15

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103516
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103517
    const/16 v2, 0xbc

    const/16 v1, 0x1c

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103518
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103519
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103520
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103521
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103522
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ov;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 103523
    :goto_0
    return v0

    .line 103524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
