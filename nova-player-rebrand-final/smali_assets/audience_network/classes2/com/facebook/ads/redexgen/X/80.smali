.class public final Lcom/facebook/ads/redexgen/X/80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/k8;


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/N9;

.field public A02:Lcom/facebook/ads/redexgen/X/NA;

.field public A03:Lcom/facebook/ads/redexgen/X/jk;

.field public A04:Lcom/facebook/ads/redexgen/X/ji;

.field public A05:Lcom/facebook/ads/redexgen/X/76;

.field public A06:Lcom/facebook/ads/redexgen/X/Z1;

.field public A07:Lcom/facebook/ads/redexgen/X/Z2;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 489
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0TFgGHCmbDEnT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P3BoNX3HbYs3p91Xznd9cH02Ego1LEzw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OWrFl7C0gkEmqIZvATANnxtRvMpHSetZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XjLJU23F7IQ7TgYJbWjoa78"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8eUGin29aZrVydG4hLQZ04ng176drDiv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tE42BGb8ExLW22Y3fw0IicKZ4ID1w2IZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N0c3cK9W7W98ikBdYu66t8J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EarR2SOYmotvRVJvY11PbnGgxllwGrNq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/80;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21921
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A08:Ljava/lang/String;

    .line 21922
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/80;->A00:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/80;)J
    .locals 1

    .line 21923
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/80;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/N9;
    .locals 0

    .line 21924
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/80;->A01:Lcom/facebook/ads/redexgen/X/N9;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/jk;
    .locals 0

    .line 21925
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/80;->A03:Lcom/facebook/ads/redexgen/X/jk;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/80;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/80;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x51t
        -0x40t
        -0xbt
        -0x13t
        -0x14t
        -0xft
        -0x3t
        -0xbt
        -0x19t
        -0x6t
        -0x13t
        -0x15t
        -0x4t
        -0x17t
        -0xat
        -0x11t
        -0xct
        -0x13t
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/ji;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Z2;)V
    .locals 9

    .line 21926
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v2

    .line 21927
    .local v1, "clientToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21928
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 21929
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 21930
    .end local v2    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const-string v1, "l0iKT0z7S0YTo68xxrsf1qJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FTb7Q8n5ne47CtPUjUxYv1n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 21931
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sv;

    .line 21932
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 21933
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getHeight()I

    move-result v5

    .line 21934
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getWidth()I

    move-result v6

    .line 21935
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0b()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/80;->A03(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 21936
    .local v2, "adIconImageData":Lcom/facebook/ads/redexgen/X/Sv;
    const/4 v2, 0x0

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/T3;-><init>(ZII)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Sv;->A01:Lcom/facebook/ads/redexgen/X/T3;

    .line 21937
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Sx;->A0W()V

    .line 21938
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 21939
    .end local v2    # "adIconImageData":Lcom/facebook/ads/redexgen/X/Sv;
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21940
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sv;

    .line 21941
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 21942
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getHeight()I

    move-result v5

    .line 21943
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getWidth()I

    move-result v6

    .line 21944
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0b()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/80;->A03(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 21945
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 21946
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0e()Ljava/lang/String;

    move-result-object v4

    .line 21947
    .local v2, "videoUrl":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21948
    new-instance v3, Lcom/facebook/ads/redexgen/X/St;

    .line 21949
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0b()Ljava/lang/String;

    move-result-object v5

    .line 21950
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0D()J

    move-result-wide v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/80;->A03(III)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 21951
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0b(Lcom/facebook/ads/redexgen/X/St;)V

    .line 21952
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v4

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/80;->A03(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_5

    .line 21953
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 21954
    invoke-static {v0, p3, v3}, Lcom/facebook/ads/redexgen/X/O0;->A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V

    .line 21955
    :cond_5
    new-instance v2, Lcom/facebook/ads/redexgen/X/jw;

    invoke-direct {v2, p0, p5, p4, p1}, Lcom/facebook/ads/redexgen/X/jw;-><init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/Z2;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/76;)V

    .line 21956
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ji;->A0b()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21957
    invoke-virtual {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 21958
    return-void
.end method


# virtual methods
.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 21959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A04:Lcom/facebook/ads/redexgen/X/ji;

    if-nez v0, :cond_0

    .line 21960
    const/4 v0, 0x0

    return-object v0

    .line 21961
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A04:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 21962
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AAt(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/N9;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V
    .locals 16

    .line 21963
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4N()V

    .line 21964
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/80;->A05:Lcom/facebook/ads/redexgen/X/76;

    .line 21965
    move-object/from16 v1, p4

    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/80;->A01:Lcom/facebook/ads/redexgen/X/N9;

    .line 21966
    new-instance v8, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v8, v3}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 21967
    .local v10, "adCacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/facebook/ads/redexgen/X/80;->A00:J

    .line 21968
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/16 v0, 0x3c

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/80;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21969
    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/NI;->A00(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v14

    .line 21970
    .local v2, "nativeAdModel":Lcom/facebook/ads/redexgen/X/ji;
    iput-object v14, v2, Lcom/facebook/ads/redexgen/X/80;->A04:Lcom/facebook/ads/redexgen/X/ji;

    .line 21971
    move-object/from16 v7, p2

    invoke-static {v3, v14, v7}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21972
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 21973
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/N9;->AEN(Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 21974
    return-void

    .line 21975
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/jy;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/jy;-><init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/76;)V

    .line 21976
    .local v0, "adViewListener":Lcom/facebook/ads/redexgen/X/Z1;
    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/80;->A06:Lcom/facebook/ads/redexgen/X/Z1;

    .line 21977
    new-instance v5, Lcom/facebook/ads/redexgen/X/Z2;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21978
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Tx;->A04()I

    move-result v10

    .line 21979
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Tx;->A07()I

    move-result v11

    .line 21980
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Tx;->A08()I

    move-result v12

    .line 21981
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Tx;->A09()I

    move-result v13

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/80;->A08:Ljava/lang/String;

    move-object v6, v3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/Z2;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/ref/WeakReference;IIIILcom/facebook/ads/redexgen/X/ji;Ljava/lang/String;)V

    .line 21982
    .local v7, "adView":Lcom/facebook/ads/redexgen/X/Z2;
    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/80;->A07:Lcom/facebook/ads/redexgen/X/Z2;

    .line 21983
    new-instance v0, Lcom/facebook/ads/redexgen/X/jx;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/jx;-><init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/N9;)V

    .line 21984
    .local v13, "impressionHelper":Lcom/facebook/ads/redexgen/X/N4;
    new-instance v9, Lcom/facebook/ads/redexgen/X/jk;

    .line 21985
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Z2;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v12

    move-object v10, v3

    move-object v11, v0

    move-object v13, v7

    move-object v14, v14

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/jk;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/N4;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/ji;)V

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/80;->A03:Lcom/facebook/ads/redexgen/X/jk;

    .line 21986
    .end local v0    # "adViewListener":Lcom/facebook/ads/redexgen/X/Z1;
    .local v8, "adViewListener":Lcom/facebook/ads/redexgen/X/Z1;
    move-object/from16 v9, p0

    move-object v10, v3

    .end local v2    # "nativeAdModel":Lcom/facebook/ads/redexgen/X/ji;
    .local v9, "nativeAdModel":Lcom/facebook/ads/redexgen/X/ji;
    move-object v4, v1

    move-object v11, v14

    move-object v12, v8

    move-object v13, v1

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/80;->A05(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/ji;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Z2;)V

    .line 21987
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/80;->A08:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/N9;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/80;->A02:Lcom/facebook/ads/redexgen/X/NA;

    .line 21988
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/80;->A02:Lcom/facebook/ads/redexgen/X/NA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A02()V

    .line 21989
    return-void
.end method

.method public final AKL()Z
    .locals 1

    .line 21990
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 21991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A05:Lcom/facebook/ads/redexgen/X/76;

    if-eqz v0, :cond_0

    .line 21992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A05:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const-string v1, "tMGyCfr9ucO4oWdztKDfdPlDfRrhkMp8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A07:Lcom/facebook/ads/redexgen/X/Z2;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4L(Z)V

    .line 21993
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A07:Lcom/facebook/ads/redexgen/X/Z2;

    if-eqz v0, :cond_1

    .line 21994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A07:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0I()V

    .line 21995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A07:Lcom/facebook/ads/redexgen/X/Z2;

    .line 21996
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A06:Lcom/facebook/ads/redexgen/X/Z1;

    .line 21997
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/80;->A02:Lcom/facebook/ads/redexgen/X/NA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/80;->A0A:[Ljava/lang/String;

    const-string v1, "5ZoCIskAsYlLTmabnaeKVzywNB4LbbVC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 21998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/80;->A02:Lcom/facebook/ads/redexgen/X/NA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A03()V

    .line 21999
    :cond_2
    return-void

    .line 22000
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
