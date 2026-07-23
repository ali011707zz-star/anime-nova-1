.class public final Lcom/facebook/ads/redexgen/X/JP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A02:Ljava/lang/String;

.field public final A03:Z

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 828
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8Hrr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0Fdee0wg4hsenc5DHvlvwY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0vqFlF7HyuYg3TUYlVTMC9xVo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FyWFMrZuY5MlICM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PN9pA9f0QUy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hrYl81FOJTp7gpX67gLzFhurxBV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ujvsBGrB8Jik"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JP;->A02()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 2

    .line 42922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42923
    const/4 v1, 0x1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez p7, :cond_0

    :goto_1
    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 42924
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:Z

    .line 42925
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JP;->A02:Ljava/lang/String;

    .line 42926
    iput p3, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    .line 42927
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:[B

    .line 42928
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/JP;->A00(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/Hb;-><init>(I[BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    .line 42929
    return-void

    .line 42930
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 6

    .line 42931
    const/4 v5, 0x1

    if-nez p0, :cond_0

    .line 42932
    return v5

    .line 42933
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 42934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0x24

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x12

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 42935
    return v5

    .line 42936
    :sswitch_0
    const/16 v3, 0x62

    sget-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const-string v1, "5D1VNf4Gt9Q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x56

    const/4 v1, 0x4

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 42937
    :pswitch_0
    return v4

    .line 42938
    :pswitch_1
    return v5

    .line 42939
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e7ccd -> :sswitch_3
        0x2e7d0f -> :sswitch_2
        0x2e8997 -> :sswitch_1
        0x2e89a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JP;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x40

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

    const/16 v0, 0x66

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JP;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x21t
        0x2ft
        0x4et
        0x7ct
        0x7ct
        0x7at
        0x62t
        0x66t
        0x61t
        0x68t
        0x2ft
        0x4et
        0x4at
        0x5ct
        0x22t
        0x4ct
        0x5bt
        0x5dt
        0x2ft
        0x6ct
        0x7dt
        0x76t
        0x7ft
        0x7bt
        0x60t
        0x2ft
        0x62t
        0x60t
        0x6bt
        0x6at
        0x21t
        0x26t
        0x0t
        0x13t
        0x11t
        0x19t
        0x37t
        0x1ct
        0x11t
        0x0t
        0xbt
        0x2t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x30t
        0x1dt
        0xat
        0x5ft
        0x64t
        0x79t
        0x7ft
        0x7at
        0x7at
        0x65t
        0x78t
        0x7et
        0x6ft
        0x6et
        0x2at
        0x7at
        0x78t
        0x65t
        0x7et
        0x6ft
        0x69t
        0x7et
        0x63t
        0x65t
        0x64t
        0x2at
        0x79t
        0x69t
        0x62t
        0x6ft
        0x67t
        0x6ft
        0x2at
        0x7et
        0x73t
        0x7at
        0x6ft
        0x2at
        0x2dt
        0x73t
        0x72t
        0x73t
        0x21t
        0x29t
        0x28t
        0x29t
        0x39t
        0x3ct
        0x3at
        0x31t
        0x3ct
        0x78t
        0x7et
        0x75t
        0x68t
    .end array-data
.end method
