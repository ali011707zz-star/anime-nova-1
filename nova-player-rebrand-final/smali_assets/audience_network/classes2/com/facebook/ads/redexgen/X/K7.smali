.class public final Lcom/facebook/ads/redexgen/X/K7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 856
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rlpJzJvMZPS96752sWOw4hHmtt9HQE0Q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UPlQWo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZXUw26V2c7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6tEwv6Up9NP4MOjnWwfRMdieV7ltrfDK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1MWXcVZusFrtXDSpfsJ6Y4yHAb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3y9vGkKnNQnOlcIPORqt4hFWNeEUPhWe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J1HUrfSw1j9IlDpk2TzINIeAn4Xj8ByV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K7;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/K7;->A02()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 45069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45070
    iput p1, p0, Lcom/facebook/ads/redexgen/X/K7;->A02:I

    .line 45071
    iput p2, p0, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    .line 45072
    iput p3, p0, Lcom/facebook/ads/redexgen/X/K7;->A03:I

    .line 45073
    iput p4, p0, Lcom/facebook/ads/redexgen/X/K7;->A04:I

    .line 45074
    iput p5, p0, Lcom/facebook/ads/redexgen/X/K7;->A01:I

    .line 45075
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K7;
    .locals 12

    .line 45076
    const/4 v8, -0x1

    .line 45077
    .local v0, "startTimeIndex":I
    const/4 v9, -0x1

    .line 45078
    .local v1, "endTimeIndex":I
    const/4 v10, -0x1

    .line 45079
    .local v2, "styleIndex":I
    const/4 v11, -0x1

    .line 45080
    .local v3, "textIndex":I
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 45081
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45082
    .local v4, "keys":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v4

    const/4 v3, -0x1

    if-ge v5, v0, :cond_2

    .line 45083
    aget-object v0, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 45084
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45085
    :pswitch_0
    move v11, v5

    goto :goto_2

    .line 45086
    :pswitch_1
    move v10, v5

    .line 45087
    goto :goto_2

    .line 45088
    :pswitch_2
    move v9, v5

    .line 45089
    goto :goto_2

    .line 45090
    :pswitch_3
    move v8, v5

    .line 45091
    goto :goto_2

    .line 45092
    :sswitch_0
    const/16 v7, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/K7;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/K7;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const/16 v2, 0xb

    const/4 v1, 0x5

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x15

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45093
    .end local v5    # "i":I
    :cond_2
    if-eq v8, v3, :cond_3

    if-eq v9, v3, :cond_3

    if-eq v11, v3, :cond_3

    .line 45094
    new-instance v7, Lcom/facebook/ads/redexgen/X/K7;

    array-length p0, v4

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/K7;-><init>(IIIII)V

    .line 45095
    :goto_3
    return-object v7

    .line 45096
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/K7;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/K7;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/K7;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x63

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K7;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x6bt
        0x42t
        0x5ft
        0x40t
        0x4ct
        0x59t
        0x17t
        0x59t
        0x52t
        0x58t
        0x2t
        0x5t
        0x10t
        0x3t
        0x5t
        0x76t
        0x71t
        0x7ct
        0x69t
        0x60t
        0x21t
        0x30t
        0x2dt
        0x21t
    .end array-data
.end method
