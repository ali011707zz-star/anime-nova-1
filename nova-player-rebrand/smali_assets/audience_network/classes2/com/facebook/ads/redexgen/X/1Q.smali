.class public final Lcom/facebook/ads/redexgen/X/1Q;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;

.field public final A01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 93
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "V1ZZWdHDdvp1vpeLHdy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "beDgvqL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qPeUfXz8O47jIG0mRxxGLFbgYUjiO6tn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0K37"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zACOzYjEJA3uY03LtXi99GuZvxjyA3vu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yqoUvvveMQQADX2xw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YF66NynmqVwoWtjOGJ4L1x6BuFt5Rq6F"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1Q;->A06()V

    const/16 v2, 0x50

    const/16 v1, 0x55

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1Q;->A05:Ljava/util/regex/Pattern;

    .line 94
    const/16 v2, 0xa5

    const/16 v1, 0x9

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1Q;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5812
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Ljava/lang/String;)V

    .line 5813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    .line 5814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A01:Ljava/util/ArrayList;

    .line 5815
    return-void
.end method

.method public static A00(I)F
    .locals 0

    .line 5816
    packed-switch p0, :pswitch_data_0

    .line 5817
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5818
    :pswitch_0
    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 5819
    :pswitch_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 5820
    :pswitch_2
    const p0, 0x3da3d70a    # 0.08f

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(Ljava/util/regex/Matcher;I)J
    .locals 9

    .line 5821
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5822
    .local v0, "hours":Ljava/lang/String;
    const-wide/16 v2, 0x3c

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v2

    mul-long/2addr v5, v2

    mul-long/2addr v5, v7

    .line 5823
    .local v5, "timestampMs":J
    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 5824
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v7

    add-long/2addr v5, v0

    .line 5825
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v7

    add-long/2addr v5, v0

    .line 5826
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5827
    .local v1, "millis":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5828
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, "CtNVef4YfaKqE1U7uEo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-long/2addr v5, v3

    .line 5829
    :cond_0
    mul-long/2addr v7, v5

    return-wide v7

    .line 5830
    :cond_1
    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Landroid/text/Spanned;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/pT;
    .locals 16

    .line 5831
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v6

    .line 5832
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/3o;
    move-object/from16 v14, p2

    if-nez v14, :cond_0

    .line 5833
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    return-object v0

    .line 5834
    :cond_0
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v2, 0xeb

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0xe5

    const/4 v1, 0x6

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0xdf

    const/4 v1, 0x6

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0xd9

    const/4 v1, 0x6

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0xd3

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0xcd

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0xc7

    const/4 v1, 0x6

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xc1

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v1, 0x6

    const/16 v0, 0x2e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    sparse-switch v15, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5835
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5836
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 5837
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5838
    :goto_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3o;->A01()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1Q;->A00(I)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    .line 5839
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3o;->A00()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1Q;->A00(I)F

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 5840
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 5841
    return-object v0

    .line 5842
    :pswitch_0
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5843
    goto :goto_3

    .line 5844
    :pswitch_1
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5845
    goto :goto_3

    .line 5846
    :sswitch_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_1
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, "M45Jq4jKyA2H1maO39BtbvDEugCoSizz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, "bPzv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    :goto_4
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, "UHPaLodBHWPdzWPsqAutdz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    goto :goto_4

    :sswitch_4
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_8
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 5847
    :pswitch_2
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5848
    goto/16 :goto_1

    .line 5849
    :pswitch_3
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5850
    goto/16 :goto_1

    .line 5851
    :sswitch_9
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5852
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5853
    const/4 v8, 0x0

    .line 5854
    .local v0, "removedCharacterCount":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5855
    .local v1, "processedLine":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/facebook/ads/redexgen/X/1Q;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5856
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5857
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 5858
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5859
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v8

    .line 5860
    .local v4, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 5861
    .local v5, "tagLength":I
    add-int v3, v5, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5862
    add-int/2addr v8, v4

    .line 5863
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "tagLength":I
    goto :goto_0

    .line 5864
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/4v;)Ljava/nio/charset/Charset;
    .locals 1

    .line 5865
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0Z()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 5866
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xf1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1Q;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x12t
        0x2t
        0x4et
        0x6ct
        0x54t
        0x56t
        0x4ft
        0x4ft
        0x56t
        0x51t
        0x58t
        0x1ft
        0x56t
        0x51t
        0x49t
        0x5et
        0x53t
        0x56t
        0x5bt
        0x1ft
        0x56t
        0x51t
        0x5bt
        0x5at
        0x47t
        0x5t
        0x1ft
        0x4bt
        0x73t
        0x71t
        0x68t
        0x68t
        0x71t
        0x76t
        0x7ft
        0x38t
        0x71t
        0x76t
        0x6et
        0x79t
        0x74t
        0x71t
        0x7ct
        0x38t
        0x6ct
        0x71t
        0x75t
        0x71t
        0x76t
        0x7ft
        0x22t
        0x38t
        0x7bt
        0x5dt
        0x4at
        0x5at
        0x41t
        0x58t
        0x6ct
        0x4dt
        0x4bt
        0x47t
        0x4ct
        0x4dt
        0x5at
        0x50t
        0x6bt
        0x60t
        0x7dt
        0x75t
        0x60t
        0x66t
        0x71t
        0x60t
        0x61t
        0x25t
        0x60t
        0x6bt
        0x61t
        0x3ct
        0x13t
        0x4at
        0x48t
        0x48t
        0x5ft
        0x5at
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x5at
        0x49t
        0x5ft
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x5at
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x48t
        0x5ft
        0x5at
        0x4ct
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x49t
        0x5ft
        0x49t
        0x3ct
        0x13t
        0x4at
        0x4dt
        0x4dt
        0x5et
        0x3ct
        0x13t
        0x4at
        0x48t
        0x48t
        0x5ft
        0x5at
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x5at
        0x49t
        0x5ft
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x5at
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x48t
        0x5ft
        0x5at
        0x4ct
        0x48t
        0x3ct
        0x4t
        0x4bt
        0x49t
        0x49t
        0x5ft
        0x49t
        0x3ct
        0x13t
        0x4at
        0x9t
        0x2et
        0x9t
        0x9t
        0x7bt
        0x7ft
        0x6at
        0x9t
        0x28t
        0x1at
        0x3dt
        0x1at
        0x1at
        0x27t
        0x28t
        0x1dt
        0x77t
        0x6bt
        0x7ft
        0x1bt
        0x1at
        0x3bt
        0xbt
        0x2ct
        0x11t
        0x1et
        0x41t
        0xdt
        0x13t
        0x34t
        0x9t
        0x6t
        0x5at
        0x15t
        0x1ft
        0x38t
        0x5t
        0xat
        0x57t
        0x19t
        0x4at
        0x6dt
        0x50t
        0x5ft
        0x5t
        0x4ct
        0x7dt
        0x5at
        0x67t
        0x68t
        0x33t
        0x7bt
        0x75t
        0x52t
        0x6ft
        0x60t
        0x38t
        0x73t
        0x26t
        0x1t
        0x3ct
        0x33t
        0x6at
        0x20t
        0x7ft
        0x58t
        0x65t
        0x6at
        0x3ct
        0x79t
        0x3bt
        0x1ct
        0x21t
        0x2et
        0x79t
        0x3dt
    .end array-data
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 14

    .line 5867
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5868
    .local v1, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/4h;-><init>()V

    .line 5869
    .local v2, "cueTimesUs":Lcom/facebook/ads/redexgen/X/4h;
    new-instance v2, Lcom/facebook/ads/redexgen/X/4v;

    move/from16 v0, p2

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    .line 5870
    .local v3, "subripData":Lcom/facebook/ads/redexgen/X/4v;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/1Q;->A05(Lcom/facebook/ads/redexgen/X/4v;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 5871
    .local v4, "charset":Ljava/nio/charset/Charset;
    :goto_0
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .local v6, "currentLine":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v9, :cond_a

    .line 5872
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5873
    :cond_0
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5874
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 5875
    if-nez v10, :cond_2

    .line 5876
    const/16 v9, 0x42

    const/16 v7, 0xe

    const/16 v6, 0x5b

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_9

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5877
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/1Q;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 5878
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5879
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A01(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 5880
    sget-object v7, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const/4 v0, 0x6

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A01(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    .line 5881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5883
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 5884
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 5886
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/16 v1, 0x2e

    invoke-static {v8, v7, v1}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5887
    :cond_3
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1Q;->A01:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1Q;->A04(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5889
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 5890
    .local v7, "text":Landroid/text/Spanned;
    const/4 v8, 0x0

    .line 5891
    .local v8, "alignmentTag":Ljava/lang/String;
    const/4 v7, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 5892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Q;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5893
    .local v10, "tag":Ljava/lang/String;
    const/16 v12, 0xae

    const/16 v11, 0xd

    sget-object v10, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v10, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v0, 0x0

    if-eq v10, v0, :cond_6

    const/16 v0, 0x18

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5894
    :goto_3
    move-object v8, v1

    .line 5895
    .end local v9    # "i":I
    :cond_5
    invoke-direct {p0, v9, v8}, Lcom/facebook/ads/redexgen/X/1Q;->A02(Landroid/text/Spanned;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5896
    sget-object v0, Lcom/facebook/ads/redexgen/X/pT;->A0J:Lcom/facebook/ads/redexgen/X/pT;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5897
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "text":Landroid/text/Spanned;
    .end local v8    # "alignmentTag":Ljava/lang/String;
    goto/16 :goto_0

    :cond_6
    sget-object v13, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v10, ""

    const/4 v0, 0x5

    aput-object v10, v13, v0

    const/16 v0, 0x18

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 5898
    .end local v10    # "tag":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5899
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x1c

    const/16 v1, 0x19

    const/16 v0, 0x46

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5900
    goto/16 :goto_0

    .line 5901
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .local v5, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x61

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/1Q;->A03:[Ljava/lang/String;

    const-string v1, "HJ3yDRHWzcPXInAXvwJ005QsJz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v9, v7, v6}, Lcom/facebook/ads/redexgen/X/1Q;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5903
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    new-array v0, v8, [Lcom/facebook/ads/redexgen/X/pT;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/ads/redexgen/X/pT;

    .line 5904
    .local v0, "cuesArray":[Lcom/facebook/ads/redexgen/X/pT;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4h;->A05()[J

    move-result-object v1

    .line 5905
    .local v5, "cueTimesUsArray":[J
    new-instance v0, Lcom/facebook/ads/redexgen/X/ld;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ld;-><init>([Lcom/facebook/ads/redexgen/X/pT;[J)V

    return-object v0
.end method
