.class public final Lcom/facebook/ads/redexgen/X/82;
.super Lcom/facebook/ads/redexgen/X/Lp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/81;->A0F(Lcom/facebook/ads/redexgen/X/Tx;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Vp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/81;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/jn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 491
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dvnbyrX9L5Wlup6c2JnWkpTYBAz3QIun"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ITj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KqeTcLSx6Zay5vtxcnHqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bGeXa7nDz1byFpBCq22utpLnb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UYph9iPsD3jee8BOLuPQ6r57rjKJpmVb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DfaYbRSw6X21pxGApii0qweOJ64z1eNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "52vckdype7aS5lLwU46sLHF0XTMQAze7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uuBWL9In1wjj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/82;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/82;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/81;Lcom/facebook/ads/redexgen/X/jn;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22121
    .local p0, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/82;->A01:Lcom/facebook/ads/redexgen/X/jn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lp;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/82;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x69

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

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/82;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x74t
        0x74t
        0x69t
        0x74t
        0x26t
        0x63t
        0x7et
        0x63t
        0x65t
        0x73t
        0x72t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x67t
        0x65t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x77t
        0x75t
        0x78t
        0x78t
        0x71t
        0x66t
        0x40t
        0x6dt
        0x64t
        0x71t
        0x74t
        0x70t
        0x73t
        0x76t
        0x51t
        0x4at
        0x4dt
        0x55t
        0x51t
        0x41t
        0x6dt
        0x40t
    .end array-data
.end method


# virtual methods
.method public final ACz()V
    .locals 2

    .line 22122
    .local p0, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/81;->A0I(Lcom/facebook/ads/redexgen/X/81;Z)Z

    .line 22123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A0H(Lcom/facebook/ads/redexgen/X/81;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A0D(Lcom/facebook/ads/redexgen/X/81;)V

    .line 22125
    :cond_0
    return-void
.end method

.method public final ADN(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22126
    .local v8, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    .local v10, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4P()V

    .line 22127
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 22128
    .local v0, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/82;->A00(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p2

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 22130
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A09(Lcom/facebook/ads/redexgen/X/81;)Ljava/lang/String;

    move-result-object v3

    .line 22131
    const/16 v2, 0x24

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/82;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 22133
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 22134
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A04(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A01:Lcom/facebook/ads/redexgen/X/jn;

    .line 22135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A7O()Ljava/lang/String;

    move-result-object v7

    .line 22136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v10, v4

    .line 22137
    :goto_0
    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v1

    .line 22138
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22139
    .local v2, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 22140
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    sget-object v1, Lcom/facebook/ads/redexgen/X/82;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/82;->A03:[Ljava/lang/String;

    const-string v1, "7FoTEC4l3Pv3ceMVIqf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v10

    goto :goto_0

    .line 22141
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4M()V

    .line 22142
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Mt;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v3

    .line 22143
    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22144
    :catch_0
    move-exception v5

    .line 22145
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/81;->A07()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/82;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22146
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/82;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22147
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mu;->A04(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 22148
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A00(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v3, v0, :cond_2

    .line 22149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A00(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADC(Lcom/facebook/ads/redexgen/X/k8;)V

    .line 22150
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEA()V
    .locals 2

    .line 22151
    .local p0, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4Q(Z)V

    .line 22152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N3;->A03()V

    .line 22154
    :cond_0
    return-void

    .line 22155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AF8()V
    .locals 1

    .line 22156
    .local p0, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4S()V

    .line 22157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jl;->A09()V

    .line 22158
    return-void
.end method

.method public final AGg()V
    .locals 0

    .line 22159
    .local p0, "this":Lcom/facebook/ads/redexgen/X/82;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    return-void
.end method
