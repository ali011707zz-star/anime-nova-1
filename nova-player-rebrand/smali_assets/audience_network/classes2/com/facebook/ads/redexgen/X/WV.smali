.class public final Lcom/facebook/ads/redexgen/X/WV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V8;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ge;

.field public A01:Lcom/facebook/ads/redexgen/X/ZH;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2209
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PqRb8CfCWHA5EhrxcZ9mRPllTh3oOSUW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Zl9oGp2Iez0jLvuEYbnxsntptMxGBM4l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "l9LBk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jZa6p3ci91eTCo5R2EOP7xEtghieA3uB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FSDG0GiI6cZANIzlwvsJdjGaYqMqroq5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1sDItVUeKrx9RbYz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1qorAXgeX39shBtffGMCszMJDt6RFPN7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u6hSYDgbJvcFisLakSyhfwTjAFON3iEs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WV;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/ZH;)V
    .locals 0

    .line 70660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70661
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 70662
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    .line 70663
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    .line 70664
    const/4 v1, 0x0

    .line 70665
    .local v0, "limit":I
    if-eqz p1, :cond_0

    .line 70666
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 70667
    :cond_0
    if-eqz p2, :cond_1

    .line 70668
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 70669
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/WV;->A02(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 19

    .line 70670
    move-object/from16 v10, p2

    move-object/from16 v11, p1

    if-nez v11, :cond_0

    .line 70671
    return-object v10

    .line 70672
    :cond_0
    if-nez v10, :cond_1

    .line 70673
    return-object v11

    .line 70674
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    .local v3, "debugLength":I
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 70675
    .local v4, "eventsLength":I
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 70676
    .local v5, "totalEvents":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v0, "debugIdx":I
    const/4 v5, 0x0

    .line 70677
    .local v6, "eventsIdx":I
    const/4 v4, 0x0

    .local v7, "objDebug":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 70678
    .local v8, "objEvent":Lorg/json/JSONObject;
    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v9, "debugTime":D
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 70679
    .end local v0    # "debugIdx":I
    .end local p2    # null:Lorg/json/JSONArray;
    .local v6, "limit":I
    .local v7, "debugIdx":I
    .local v8, "eventsIdx":I
    .local v9, "objDebug":Lorg/json/JSONObject;
    .local v10, "objEvent":Lorg/json/JSONObject;
    .local v11, "debugTime":D
    .local v13, "eventTime":D
    :cond_2
    :goto_0
    if-lt v6, v9, :cond_3

    if-ge v5, v8, :cond_c

    :cond_3
    if-lez p3, :cond_c

    .line 70680
    const/16 v2, 0x1b3

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v2

    if-ge v6, v9, :cond_5

    if-nez v4, :cond_5

    .line 70681
    :try_start_0
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 70682
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 70683
    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70684
    :catch_0
    move-exception v4

    .line 70685
    .local v0, "jsone":Lorg/json/JSONException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70686
    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    .end local v3    # "debugLength":I
    .local v16, "debugLength":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .end local v9    # "objDebug":Lorg/json/JSONObject;
    .local p2, "objDebug":Lorg/json/JSONObject;
    const/16 v14, 0x111

    const/16 v12, 0x21

    const/16 v0, 0x6b

    invoke-static {v14, v12, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70687
    .end local v3
    .end local v9
    .restart local v16    # "debugLength":I
    .restart local p2    # "objDebug":Lorg/json/JSONObject;
    :cond_4
    const/4 v4, 0x0

    .line 70688
    .end local p2    # "objDebug":Lorg/json/JSONObject;
    .restart local v9    # "objDebug":Lorg/json/JSONObject;
    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 70689
    .end local v0    # "jsone":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 70690
    .end local v3
    .restart local v16    # "debugLength":I
    :cond_5
    if-ge v5, v8, :cond_7

    if-nez v3, :cond_7

    .line 70691
    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 70692
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    goto :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70693
    .end local v0
    .restart local v13    # "eventTime":D
    :catch_1
    move-exception v2

    .line 70694
    .local v0, "jsone":Lorg/json/JSONException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70695
    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x132

    const/16 v3, 0x19

    const/16 v0, 0x56

    invoke-static {v12, v3, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70696
    :cond_6
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    .line 70697
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "Ao7e4H6oauVu5gaKSpxLNRSSjr9efZyc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "dweSflIkmec9RBGwLpK3xpB3h9wbJjrg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 70698
    .end local v13    # "eventTime":D
    .local v0, "eventTime":D
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 70699
    .end local v0    # "eventTime":D
    .restart local v13    # "eventTime":D
    :cond_7
    if-nez v4, :cond_8

    if-eqz v3, :cond_2

    .line 70700
    :cond_8
    if-eqz v4, :cond_9

    cmpg-double v0, v15, v17

    if-gez v0, :cond_a

    .line 70701
    .end local v0
    .restart local v9    # "objDebug":Lorg/json/JSONObject;
    :cond_9
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70702
    const/4 v3, 0x0

    .line 70703
    .end local v10    # "objEvent":Lorg/json/JSONObject;
    .local v0, "objEvent":Lorg/json/JSONObject;
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 70704
    .end local v0    # "objEvent":Lorg/json/JSONObject;
    .restart local v10    # "objEvent":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_0

    .line 70705
    :cond_a
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70706
    const/4 v4, 0x0

    .line 70707
    .end local v9    # "objDebug":Lorg/json/JSONObject;
    .local v0, "objDebug":Lorg/json/JSONObject;
    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70708
    .end local v3
    .restart local v16    # "debugLength":I
    :cond_c
    if-lez p3, :cond_d

    .line 70709
    if-eqz v4, :cond_e

    .line 70710
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70711
    :cond_d
    :goto_4
    return-object v7

    .line 70712
    :cond_e
    if-eqz v3, :cond_d

    .line 70713
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4
.end method

.method private A03()Lorg/json/JSONObject;
    .locals 7

    .line 70714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UQ;->A6t()Lorg/json/JSONObject;

    move-result-object v4

    .line 70715
    .local v0, "tokens":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UQ;->A6s()Lorg/json/JSONArray;

    move-result-object v3

    .line 70716
    .local v1, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A03(Lcom/facebook/ads/redexgen/X/T8;)Lorg/json/JSONArray;

    move-result-object v6

    .line 70718
    .local v2, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 70719
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "qUVNbNwZZvYyuSz0SsvSYTyRsw3xu0Du"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WlKgM87vtUujDuDqlOM5717cU9PyRF7c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v6, v3}, Lcom/facebook/ads/redexgen/X/WV;->A01(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 70720
    .end local v2    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_1
    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 70721
    .local v2, "payload":Lorg/json/JSONObject;
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "QvYFeqMEyu4I6p0dgxwwBO2xjkm9NvyV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "HjcWCrOu2PXb4iuKPAXMC032aGUytbXM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    goto :goto_0

    .local v2, "payload":Lorg/json/JSONObject;
    :cond_2
    if-eqz v3, :cond_4

    .line 70722
    :goto_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 70723
    if-eqz v4, :cond_3

    .line 70724
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70725
    :cond_3
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70726
    .local v3, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 70727
    .end local v3    # "jsone":Lorg/json/JSONException;
    :cond_4
    :goto_1
    return-object v5
.end method

.method private A04(I)Lorg/json/JSONObject;
    .locals 6

    .line 70728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    .line 70729
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->A9I(I)Landroid/util/Pair;

    move-result-object v0

    .line 70730
    .local v0, "tokensAndEvents":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/json/JSONObject;Lorg/json/JSONArray;>;"
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 70731
    .local v1, "tokens":Lorg/json/JSONObject;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    .line 70732
    .local v2, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A08(Landroid/content/Context;)I

    move-result v2

    .line 70734
    .local v3, "debugEventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 70735
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Tf;->A04(Lcom/facebook/ads/redexgen/X/T8;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 70736
    .local v4, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    add-int/2addr p1, v2

    .line 70738
    invoke-static {v0, v1, v3, p1}, Lcom/facebook/ads/redexgen/X/WV;->A02(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    .line 70739
    .end local v3    # "debugEventLimit":I
    .end local v4    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 70740
    .local v3, "payload":Lorg/json/JSONObject;
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "feKb1r4kRW7gDKlD5BEzQjo0jh9TPYxK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "s9YNb4XbEbjpB7B5leG71QtixhMBVNOA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 70741
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 70742
    if-eqz v5, :cond_1

    .line 70743
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70744
    :cond_1
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70745
    .end local v3    # "payload":Lorg/json/JSONObject;
    .local v3, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 70746
    .local v3, "payload":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x1bd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WV;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        -0x65t
        -0x5ct
        -0x59t
        0x55t
        -0x66t
        -0x55t
        -0x66t
        -0x5dt
        -0x57t
        0x7et
        -0x67t
        0x55t
        -0x7ft
        -0x2ct
        -0x2at
        -0x3ct
        -0x3ct
        -0x3at
        -0x2ct
        -0x2ct
        -0x39t
        -0x2at
        -0x33t
        -0x33t
        -0x26t
        -0x71t
        0x61t
        -0x7bt
        -0x5at
        -0x53t
        -0x5at
        -0x4bt
        -0x5at
        -0x5bt
        0x61t
        -0x5at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x4ct
        0x61t
        -0x5at
        -0x47t
        -0x5ct
        -0x5at
        -0x5at
        -0x5bt
        -0x5at
        -0x5bt
        0x61t
        -0x4dt
        -0x5at
        -0x4bt
        -0x4dt
        -0x46t
        0x61t
        -0x53t
        -0x56t
        -0x52t
        -0x56t
        -0x4bt
        0x6ft
        0x61t
        -0x7ct
        -0x50t
        -0x4at
        -0x51t
        -0x4bt
        0x7bt
        0x61t
        -0x50t
        -0x1ft
        -0x30t
        -0x27t
        -0x21t
        -0x75t
        -0x21t
        -0x1ct
        -0x25t
        -0x30t
        -0x75t
        -0x25t
        -0x23t
        -0x26t
        -0x32t
        -0x30t
        -0x22t
        -0x22t
        -0x30t
        -0x31t
        -0x75t
        -0x33t
        -0x1ct
        -0x75t
        -0x21t
        -0x2dt
        -0x30t
        -0x75t
        -0x22t
        -0x30t
        -0x23t
        -0x1ft
        -0x30t
        -0x23t
        -0x5bt
        -0x75t
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x27t
        -0x36t
        -0x25t
        -0x24t
        -0x32t
        -0x77t
        -0x36t
        -0x29t
        -0x77t
        -0x32t
        -0x21t
        -0x32t
        -0x29t
        -0x23t
        -0x77t
        -0x2et
        -0x29t
        -0x77t
        -0x32t
        -0x21t
        -0x32t
        -0x29t
        -0x23t
        -0x24t
        -0x77t
        -0x36t
        -0x25t
        -0x25t
        -0x36t
        -0x1et
        -0x77t
        -0x31t
        -0x28t
        -0x25t
        -0x77t
        -0x33t
        -0x2et
        -0x24t
        -0x27t
        -0x36t
        -0x23t
        -0x34t
        -0x2ft
        -0x77t
        -0x31t
        -0x36t
        -0x2et
        -0x2bt
        -0x22t
        -0x25t
        -0x32t
        -0x69t
        -0x66t
        -0x54t
        -0x47t
        -0x43t
        -0x54t
        -0x47t
        0x67t
        -0x49t
        -0x47t
        -0x4at
        -0x56t
        -0x54t
        -0x46t
        -0x46t
        -0x54t
        -0x55t
        0x67t
        -0x54t
        -0x43t
        -0x54t
        -0x4bt
        -0x45t
        -0x70t
        -0x55t
        0x67t
        -0x43t
        -0x31t
        -0x24t
        -0x20t
        -0x31t
        -0x24t
        -0x76t
        -0x24t
        -0x31t
        -0x22t
        -0x21t
        -0x24t
        -0x28t
        -0x31t
        -0x32t
        -0x76t
        -0x28t
        -0x27t
        -0x28t
        -0x69t
        -0x24t
        -0x31t
        -0x22t
        -0x24t
        -0x1dt
        -0x35t
        -0x34t
        -0x2at
        -0x31t
        -0x76t
        -0x31t
        -0x24t
        -0x24t
        -0x27t
        -0x24t
        -0x76t
        -0x33t
        -0x27t
        -0x32t
        -0x31t
        -0x76t
        -0x65t
        -0x53t
        -0x46t
        -0x42t
        -0x53t
        -0x46t
        0x68t
        -0x46t
        -0x53t
        -0x44t
        -0x43t
        -0x46t
        -0x4at
        -0x53t
        -0x54t
        0x68t
        -0x46t
        -0x53t
        -0x44t
        -0x46t
        -0x3ft
        -0x57t
        -0x56t
        -0x4ct
        -0x53t
        0x68t
        -0x53t
        -0x46t
        -0x46t
        -0x49t
        -0x46t
        0x68t
        -0x55t
        -0x49t
        -0x54t
        -0x53t
        0x68t
        -0x3dt
        -0x24t
        -0x31t
        -0x30t
        -0x26t
        -0x2dt
        -0x72t
        -0x1et
        -0x23t
        -0x72t
        -0x22t
        -0x31t
        -0x20t
        -0x1ft
        -0x2dt
        -0x72t
        -0x2et
        -0x2dt
        -0x30t
        -0x1dt
        -0x2bt
        -0x46t
        -0x23t
        -0x2bt
        -0x4dt
        -0x1ct
        -0x2dt
        -0x24t
        -0x1et
        -0x72t
        -0x31t
        -0x1et
        -0x72t
        -0x52t
        -0x39t
        -0x46t
        -0x45t
        -0x3bt
        -0x42t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x37t
        -0x46t
        -0x35t
        -0x34t
        -0x42t
        0x79t
        -0x42t
        -0x31t
        -0x42t
        -0x39t
        -0x33t
        0x79t
        -0x46t
        -0x33t
        0x79t
        0x66t
        0x7ft
        0x72t
        0x73t
        0x7dt
        0x76t
        0x31t
        -0x7bt
        -0x80t
        0x31t
        -0x7ft
        0x72t
        -0x7dt
        -0x7ct
        0x76t
        0x31t
        -0x7ct
        0x76t
        -0x7dt
        -0x79t
        0x76t
        -0x7dt
        0x31t
        -0x7dt
        0x76t
        -0x7ct
        -0x7ft
        -0x80t
        0x7ft
        -0x7ct
        0x76t
        0x31t
        0x72t
        -0x7bt
        0x31t
        -0x7ft
        -0x80t
        -0x7ct
        0x7at
        -0x7bt
        0x7at
        -0x80t
        0x7ft
        0x31t
        -0x22t
        -0x16t
        -0x21t
        -0x20t
        -0x74t
        -0x77t
        -0x64t
        -0x77t
        -0x76t
        -0x77t
        -0x65t
        -0x73t
        -0x69t
        -0x58t
        -0x69t
        -0x60t
        -0x5at
        -0x5bt
        -0x70t
        -0x71t
        -0x75t
        -0x62t
        -0x61t
        -0x64t
        -0x71t
        0x57t
        -0x73t
        -0x67t
        -0x68t
        -0x70t
        -0x6dt
        -0x6ft
        0x57t
        -0x71t
        -0x60t
        -0x71t
        -0x68t
        -0x62t
        0x57t
        -0x69t
        -0x75t
        -0x6ft
        -0x6dt
        -0x73t
        0x79t
        0x78t
        0x74t
        -0x79t
        -0x78t
        -0x7bt
        0x78t
        0x72t
        0x76t
        -0x7et
        -0x7ft
        0x79t
        0x7ct
        0x7at
        0x7bt
        0x76t
        -0x52t
        -0x5dt
        -0x59t
        -0x61t
        0x79t
        0x74t
        0x70t
        0x6at
        0x73t
        0x78t
    .end array-data
.end method

.method private A06(Ljava/lang/String;)V
    .locals 4

    .line 70747
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tf;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70748
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "U9Gor"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Tf;->A0B(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    .line 70749
    :goto_0
    return-void

    .line 70750
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->AA5(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A5L()Lorg/json/JSONObject;
    .locals 1

    .line 70751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0F(Landroid/content/Context;)I

    move-result v0

    .line 70752
    .local v0, "eventLimit":I
    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WV;->A04(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WV;->A03()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final AAb()Z
    .locals 4

    .line 70753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0F(Landroid/content/Context;)I

    move-result v3

    .line 70754
    .local v0, "eventLimit":I
    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 70755
    return v2

    .line 70756
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    .line 70757
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UQ;->A82()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A00(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v1, v0

    .line 70758
    .local v3, "eventCount":I
    if-le v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final ACu()V
    .locals 7

    .line 70759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0G(Landroid/content/Context;)I

    move-result v1

    .line 70760
    .local v0, "retryLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    .line 70761
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/UQ;->A50(I)I

    move-result v6

    .line 70762
    .local v1, "attemptsExceededEventsCount":I
    if-lez v6, :cond_0

    .line 70763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 70764
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A10:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 70765
    const/16 v2, 0x17b

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 70766
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A0F(Lcom/facebook/ads/redexgen/X/T8;)Z

    .line 70767
    return-void
.end method

.method public final ADe(Lorg/json/JSONArray;)V
    .locals 7

    .line 70768
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 70769
    .local v0, "length":I
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 70770
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 70771
    .local v2, "eventJson":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70772
    .local v3, "eventId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WV;->A06(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70773
    :catch_0
    move-exception v4

    .line 70774
    .local v2, "jsone":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70775
    sget-object v3, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x3e

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70776
    .end local v2    # "jsone":Lorg/json/JSONException;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70777
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final ADf(Lorg/json/JSONArray;)Z
    .locals 12

    .line 70778
    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    .line 70779
    .local v1, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0P(Landroid/content/Context;)Z

    move-result v10

    .line 70780
    .local v2, "isDebugGKEnabled":Z
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 70781
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 70782
    .local v4, "event":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70783
    .local v5, "eventId":Ljava/lang/String;
    const/16 v2, 0x189

    const/16 v1, 0x1a

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70784
    const/16 v2, 0x1a3

    const/16 v1, 0xe

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70785
    .local v6, "featureConfigString":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A36(Ljava/lang/String;)V

    .line 70786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->ACP()V

    goto/16 :goto_2

    .line 70787
    .end local v6    # "featureConfigString":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x177

    const/4 v1, 0x4

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 70788
    .local v6, "errorCode":I
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 70789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x19

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/UQ;->A85(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70792
    .local v7, "eventType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 70793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70794
    .end local v7    # "eventType":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/UQ;->A5q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v10, :cond_8

    .line 70795
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    goto/16 :goto_2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70796
    :cond_2
    const/16 v8, 0x3e8

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "1LE9O0SwhMhMXUh2JQEpQ81OBnaONLaF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "qI9w2PtHmRHMr9aKEOtTY0DScCfNQmEA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0xd

    const/16 v0, 0x32

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x7d0

    if-lt v4, v8, :cond_4

    if-ge v4, v0, :cond_4

    .line 70797
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70798
    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xec

    const/16 v2, 0x25

    const/16 v0, 0x45

    invoke-static {v8, v2, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70799
    :cond_3
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/WV;->A06(Ljava/lang/String;)V

    .line 70800
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 70801
    :cond_4
    if-lt v4, v0, :cond_8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v8, 0xbb8

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    if-ge v4, v8, :cond_8

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A03:[Ljava/lang/String;

    const-string v1, "Te73kS0enGf3eAU6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v8, :cond_8

    .line 70802
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70803
    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xc3

    const/16 v2, 0x29

    const/16 v0, 0x67

    invoke-static {v8, v2, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70804
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/UQ;->A5q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v10, :cond_8

    .line 70805
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    goto :goto_2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70806
    :catch_0
    move-exception v5

    .line 70807
    .local v4, "jsone":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70808
    sget-object v4, Lcom/facebook/ads/redexgen/X/WV;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14b

    const/16 v1, 0x2c

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70809
    :cond_7
    const/4 v11, 0x0

    .line 70810
    .end local v4    # "jsone":Lorg/json/JSONException;
    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70811
    .end local v3    # "i":I
    :cond_a
    return v11
.end method

.method public final AFZ()V
    .locals 1

    .line 70812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A01:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UR;->A51()V

    .line 70813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A07(Landroid/content/Context;)V

    .line 70814
    return-void
.end method
