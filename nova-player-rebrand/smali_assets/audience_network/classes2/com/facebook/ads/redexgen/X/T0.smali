.class public final Lcom/facebook/ads/redexgen/X/T0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sz;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:I

.field public static A02:I

.field public static A03:I

.field public static A04:I

.field public static A05:I

.field public static A06:I

.field public static A07:I

.field public static A08:[B

.field public static final A09:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1680
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T0;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/T0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T0;->A09:Ljava/lang/String;

    .line 1681
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0o:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A05:I

    .line 1682
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0s:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A06:I

    .line 1683
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0l:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A02:I

    .line 1684
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0k:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A01:I

    .line 1685
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0m:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A03:I

    .line 1686
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0i:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A00:I

    .line 1687
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0n:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A04:I

    .line 1688
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0t:I

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x67

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

    const/16 v0, 0xcb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T0;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x11t
        -0xft
        -0xat
        -0xdt
        -0x52t
        -0xet
        -0x9t
        0x1t
        -0x7t
        -0x52t
        -0xct
        -0x11t
        -0x9t
        -0x6t
        0x3t
        0x0t
        -0xdt
        -0x44t
        -0x48t
        -0x2at
        -0x28t
        -0x23t
        -0x26t
        -0x6bt
        -0x27t
        -0x22t
        -0x18t
        -0x20t
        -0x6bt
        -0x18t
        -0x16t
        -0x28t
        -0x28t
        -0x26t
        -0x18t
        -0x18t
        -0x5dt
        -0x7t
        0x17t
        0x19t
        0x1et
        0x1bt
        -0x2at
        0x1at
        0x25t
        0x2dt
        0x24t
        0x22t
        0x25t
        0x17t
        0x1at
        -0x2at
        0x1ct
        0x17t
        0x1ft
        0x22t
        0x2bt
        0x28t
        0x1bt
        -0x1ct
        -0x50t
        -0x32t
        -0x30t
        -0x2bt
        -0x2et
        -0x73t
        -0x2bt
        -0x2at
        -0x1ft
        -0x65t
        -0x3ft
        -0x21t
        -0x1ft
        -0x1at
        -0x1dt
        -0x62t
        -0x15t
        -0x19t
        -0xft
        -0xft
        -0x54t
        0x13t
        0x16t
        0x11t
        0x15t
        0x24t
        0x17t
        0x13t
        0x26t
        0x1bt
        0x28t
        0x17t
        0x11t
        0x25t
        0x1bt
        0x2ct
        0x17t
        0x11t
        0x14t
        0x2bt
        0x26t
        0x17t
        0x25t
        -0x21t
        -0x1et
        -0x23t
        -0x1ft
        -0x10t
        -0x1dt
        -0x21t
        -0xet
        -0x19t
        -0xct
        -0x1dt
        -0x23t
        -0xet
        -0x9t
        -0x12t
        -0x1dt
        0x1dt
        0x20t
        0x1bt
        0x22t
        0x2bt
        0x2et
        0x29t
        0x1dt
        0x30t
        0x1bt
        0x30t
        0x35t
        0x2ct
        0x21t
        -0xat
        -0x7t
        -0xct
        0x7t
        -0x6t
        0x6t
        0xat
        -0x6t
        0x8t
        0x9t
        -0xct
        -0x2t
        -0x7t
        0x43t
        0x56t
        0x56t
        0x47t
        0x4ft
        0x52t
        0x56t
        0x1et
        0x1ct
        0x1et
        0x23t
        0x20t
        0x3ft
        0x3dt
        0x3ft
        0x44t
        0x41t
        0x3bt
        0x3ft
        0x4bt
        0x4at
        0x50t
        0x41t
        0x54t
        0x50t
        -0x23t
        -0x28t
        -0x20t
        -0x1dt
        -0x14t
        -0x17t
        -0x24t
        -0x2at
        -0x17t
        -0x24t
        -0x28t
        -0x16t
        -0x1at
        -0x1bt
        0x17t
        0x1bt
        0xft
        0x15t
        0x13t
        0x1ct
        0x1ft
        0x11t
        0x14t
        0xft
        0x24t
        0x19t
        0x1dt
        0x15t
        0x46t
        0x43t
        0x3dt
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sq;ILjava/lang/String;J)V
    .locals 6

    .line 64837
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64838
    return-void

    .line 64839
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 64840
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    const/16 v2, 0x78

    const/16 v1, 0xe

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sq;->A01:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64841
    const/16 v2, 0x86

    const/16 v1, 0xd

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sq;->A02:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64842
    const-wide/16 v1, 0x0

    cmp-long v0, p4, v1

    if-lez v0, :cond_1

    .line 64843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p4

    .line 64844
    .local v1, "loadTime":J
    const/16 v2, 0xbf

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Y1;->A07(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64845
    .end local v1    # "loadTime":J
    :cond_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v4, p3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 64846
    .local v1, "deLogException":Lcom/facebook/ads/redexgen/X/Te;
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/Te;->A07(Lorg/json/JSONObject;)V

    .line 64847
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(I)V

    .line 64848
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x9a

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/Tc;->ABD(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64849
    :catchall_0
    move-exception v1

    .line 64850
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 64851
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 12

    .line 64852
    move-object v3, p0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64853
    return-void

    .line 64854
    :cond_0
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Sv;->A06:Ljava/lang/String;

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/Sv;->A07:Ljava/lang/String;

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    const/16 v2, 0xba

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 p1, 0x0

    move-object/from16 p0, p6

    move-object/from16 v10, p4

    move v9, p3

    move-object v8, p2

    move-object/from16 v11, p5

    invoke-static/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/T0;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 64855
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sz;Z)V
    .locals 6

    .line 64856
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64857
    return-void

    .line 64858
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 64859
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    const/16 v2, 0x78

    const/16 v1, 0xe

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sz;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64860
    const/16 v2, 0x86

    const/16 v1, 0xd

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sz;->A03:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64861
    const/16 v2, 0x68

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sz;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64862
    const/16 v2, 0x9f

    const/16 v1, 0xd

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sz;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64863
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A2T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64864
    const/16 v2, 0xc8

    const/4 v1, 0x3

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Sz;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64865
    :cond_1
    if-eqz p2, :cond_2

    const/16 v2, 0x3d

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x47

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 64866
    .local v1, "message":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    sget v5, Lcom/facebook/ads/redexgen/X/T0;->A05:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/facebook/ads/redexgen/X/T0;->A06:I

    .line 64867
    .local v2, "eventCode":I
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 64868
    .local v3, "deLogException":Lcom/facebook/ads/redexgen/X/Te;
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A07(Lorg/json/JSONObject;)V

    .line 64869
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(I)V

    .line 64870
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x9a

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/Tc;->ABD(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64871
    :catchall_0
    move-exception v1

    .line 64872
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 64873
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 5

    .line 64874
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 64875
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    const/16 v3, 0x78

    const/16 v2, 0xe

    const/16 v0, 0x55

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64876
    const/16 v3, 0x86

    const/16 v2, 0xd

    const/16 v0, 0x2e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64877
    const/16 v3, 0x68

    const/16 v2, 0x10

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64878
    if-eqz p7, :cond_0

    .line 64879
    const/16 v3, 0xac

    const/16 v2, 0xe

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64880
    :cond_0
    if-eqz p8, :cond_1

    .line 64881
    const/16 v3, 0x52

    const/16 v2, 0x16

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64882
    :cond_1
    if-eqz p9, :cond_2

    .line 64883
    const/16 v3, 0xbf

    const/16 v2, 0x9

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64884
    :cond_2
    if-eqz p10, :cond_3

    .line 64885
    const/16 v3, 0x93

    const/4 v2, 0x7

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64886
    :cond_3
    const/16 v3, 0x9f

    const/16 v2, 0xd

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64887
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A2T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64888
    const/16 v3, 0xc8

    const/4 v2, 0x3

    const/16 v0, 0x6a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64889
    :cond_4
    const/16 v3, 0x13

    const/16 v2, 0x13

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 64890
    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/facebook/ads/redexgen/X/T0;->A03:I

    if-ne p6, v2, :cond_6

    .line 64891
    const/16 v3, 0x26

    const/16 v2, 0x17

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 64892
    :cond_5
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 64893
    .local v2, "deLogException":Lcom/facebook/ads/redexgen/X/Te;
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Te;->A07(Lorg/json/JSONObject;)V

    .line 64894
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(I)V

    .line 64895
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x9a

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p6, v4}, Lcom/facebook/ads/redexgen/X/Tc;->ABD(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_1

    .line 64896
    :cond_6
    sget v2, Lcom/facebook/ads/redexgen/X/T0;->A01:I

    if-ne p6, v2, :cond_5

    .line 64897
    const/4 v3, 0x0

    const/16 v2, 0x13

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64898
    :catchall_0
    move-exception v1

    .line 64899
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 64900
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/T8;)Z
    .locals 7

    .line 64901
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64902
    const/4 v1, 0x1

    .line 64903
    .local v0, "cacheEventsSampling":I
    .restart local v0    # "cacheEventsSampling":I
    :goto_0
    const/4 v6, 0x0

    if-nez v1, :cond_1

    .line 64904
    return v6

    .line 64905
    .end local v0    # "cacheEventsSampling":I
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ur;->A06(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 64906
    :cond_1
    const/4 v0, 0x1

    if-lez v1, :cond_3

    .line 64907
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A00()D

    move-result-wide v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    return v6

    .line 64908
    :cond_3
    return v0
.end method
