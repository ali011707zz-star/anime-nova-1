.class public final Lcom/facebook/ads/redexgen/X/K8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Format"
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 857
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ytMqT9NHYtHO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ayDrBXmYpST"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PlkLAMptHTEQbTP2JBx8IVhZrr1OLjmr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bsyNsbAKTDWthILnLFbT9XBAfe1JwY0A"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7ooEejyrqYW6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qPz9rN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uQjyiEFGwynd0EfS97vi0PnYLnL7ypAQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fkOqnZo8h0umFuLkeHHFLjLqaxMuEadl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K8;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/K8;->A02()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .locals 0

    .line 45097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45098
    iput p1, p0, Lcom/facebook/ads/redexgen/X/K8;->A06:I

    .line 45099
    iput p2, p0, Lcom/facebook/ads/redexgen/X/K8;->A00:I

    .line 45100
    iput p3, p0, Lcom/facebook/ads/redexgen/X/K8;->A08:I

    .line 45101
    iput p4, p0, Lcom/facebook/ads/redexgen/X/K8;->A07:I

    .line 45102
    iput p5, p0, Lcom/facebook/ads/redexgen/X/K8;->A03:I

    .line 45103
    iput p6, p0, Lcom/facebook/ads/redexgen/X/K8;->A01:I

    .line 45104
    iput p7, p0, Lcom/facebook/ads/redexgen/X/K8;->A04:I

    .line 45105
    iput p8, p0, Lcom/facebook/ads/redexgen/X/K8;->A0A:I

    .line 45106
    iput p9, p0, Lcom/facebook/ads/redexgen/X/K8;->A09:I

    .line 45107
    iput p10, p0, Lcom/facebook/ads/redexgen/X/K8;->A02:I

    .line 45108
    iput p11, p0, Lcom/facebook/ads/redexgen/X/K8;->A05:I

    .line 45109
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K8;
    .locals 21

    .line 45110
    const/4 v11, -0x1

    .line 45111
    .local v0, "nameIndex":I
    const/4 v12, -0x1

    .line 45112
    .local v1, "alignmentIndex":I
    const/4 v13, -0x1

    .line 45113
    .local v2, "primaryColorIndex":I
    const/4 v14, -0x1

    .line 45114
    .local v3, "outlineColorIndex":I
    const/4 v15, -0x1

    .line 45115
    .local v4, "fontSizeIndex":I
    const/16 v16, -0x1

    .line 45116
    .local v5, "boldIndex":I
    const/16 v17, -0x1

    .line 45117
    .local v6, "italicIndex":I
    const/16 v18, -0x1

    .line 45118
    .local v7, "underlineIndex":I
    const/16 v19, -0x1

    .line 45119
    .local v8, "strikeoutIndex":I
    const/16 v20, -0x1

    .line 45120
    .local v9, "borderStyleIndex":I
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 45121
    .local v10, "keys":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v9

    const/4 v4, -0x1

    if-ge v5, v0, :cond_2

    .line 45122
    aget-object v0, v9, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 45123
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45124
    :pswitch_0
    move/from16 v20, v5

    goto :goto_2

    .line 45125
    :pswitch_1
    move/from16 v19, v5

    .line 45126
    goto :goto_2

    .line 45127
    :pswitch_2
    move/from16 v18, v5

    .line 45128
    goto :goto_2

    .line 45129
    :pswitch_3
    move/from16 v17, v5

    .line 45130
    goto :goto_2

    .line 45131
    :pswitch_4
    move/from16 v16, v5

    .line 45132
    goto :goto_2

    .line 45133
    :pswitch_5
    move v15, v5

    .line 45134
    goto :goto_2

    .line 45135
    :pswitch_6
    move v14, v5

    .line 45136
    goto :goto_2

    .line 45137
    :pswitch_7
    move v13, v5

    .line 45138
    goto :goto_2

    .line 45139
    :pswitch_8
    move v12, v5

    .line 45140
    goto :goto_2

    .line 45141
    :pswitch_9
    move v11, v5

    .line 45142
    goto :goto_2

    .line 45143
    :sswitch_0
    const/16 v2, 0x32

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x15

    const/16 v1, 0xb

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_3
    const/16 v8, 0x20

    const/16 v7, 0x8

    const/16 v6, 0x51

    sget-object v2, Lcom/facebook/ads/redexgen/X/K8;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const/4 v1, 0x3

    aget-object v2, v2, v1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/K8;->A0C:[Ljava/lang/String;

    const-string v1, "KkotiNXx90oMvgOaVjUCxZkwY6iD9aVw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0x2e

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0x11

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x3f

    const/16 v1, 0xd

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0x4c

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_8
    const/16 v2, 0x55

    const/16 v1, 0x9

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_9
    const/16 v2, 0x28

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_1

    .line 45144
    .end local v12    # "i":I
    :cond_2
    if-eq v11, v4, :cond_3

    .line 45145
    new-instance v10, Lcom/facebook/ads/redexgen/X/K8;

    array-length v0, v9

    move/from16 p0, v0

    invoke-direct/range {v10 .. v21}, Lcom/facebook/ads/redexgen/X/K8;-><init>(IIIIIIIIIII)V

    .line 45146
    :goto_3
    return-object v10

    .line 45147
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/K8;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x45

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

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K8;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x48t
        -0x72t
        -0x49t
        -0x46t
        -0x4bt
        -0x57t
        -0x44t
        -0x7et
        -0x4ft
        -0x44t
        -0x47t
        -0x49t
        -0x42t
        -0x43t
        -0x4bt
        -0x42t
        -0x3ct
        -0x31t
        -0x24t
        -0x27t
        -0x2ft
        0x0t
        0xdt
        0x10t
        0x2t
        0x3t
        0x10t
        0x11t
        0x12t
        0x17t
        0xat
        0x3t
        -0x4t
        0x5t
        0x4t
        0xat
        0x9t
        -0x1t
        0x10t
        -0x5t
        -0x31t
        -0x26t
        -0x39t
        -0x2et
        -0x31t
        -0x37t
        -0x19t
        -0x26t
        -0x1at
        -0x22t
        -0x4bt
        -0x45t
        -0x46t
        -0x4et
        -0x51t
        -0x4ct
        -0x55t
        -0x57t
        -0x4bt
        -0x4et
        -0x4bt
        -0x45t
        -0x48t
        -0x1at
        -0x18t
        -0x21t
        -0x1dt
        -0x29t
        -0x18t
        -0x11t
        -0x27t
        -0x1bt
        -0x1et
        -0x1bt
        -0x15t
        -0x18t
        -0x17t
        -0x16t
        -0x18t
        -0x21t
        -0x1ft
        -0x25t
        -0x1bt
        -0x15t
        -0x16t
        -0x34t
        -0x3bt
        -0x45t
        -0x44t
        -0x37t
        -0x3dt
        -0x40t
        -0x3bt
        -0x44t
    .end array-data
.end method
