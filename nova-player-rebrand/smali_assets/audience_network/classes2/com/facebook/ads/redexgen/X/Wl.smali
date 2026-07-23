.class public final Lcom/facebook/ads/redexgen/X/Wl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/Wl;

.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/T8;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wk;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2225
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5MKMOaVWDDOIRCHctWxXh6vg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GTC1GbhELwGgGpWjZKevJ0k3Uxf5MI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MErkTVrLaasGcwo7fnbPc0zPsPKQVooy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ww5tByWtz7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O4OPIcLjmjm8Tl1QjT4vF9B23yTFDVzh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ARYbvHkkpIBkY7WVIiyXY2IMU7tTgba1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T0IhwzJuni2c17YqQ80jTeD3w7vBm05R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Etvi9wSKDpLI2gJoBB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wl;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 1

    .line 71220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71221
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 71222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    .line 71223
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    .line 71224
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;
    .locals 1

    .line 71225
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A03:Lcom/facebook/ads/redexgen/X/Wl;

    if-nez v0, :cond_0

    .line 71226
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A03:Lcom/facebook/ads/redexgen/X/Wl;

    .line 71227
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A03:Lcom/facebook/ads/redexgen/X/Wl;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wl;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 71228
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0xb5

    const/4 v1, 0x2

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private A03(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 71229
    const/16 v2, 0x1e

    const/16 v1, 0x8

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 71230
    .local v0, "metadataObject":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 71231
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71232
    :cond_0
    const/4 v2, 0x2

    const/16 v1, 0x9

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71233
    .local v1, "height":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71234
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71235
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xb7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x6dt
        -0x72t
        -0x39t
        -0x36t
        -0x3bt
        -0x32t
        -0x35t
        -0x31t
        -0x33t
        -0x32t
        -0x26t
        0xet
        0x11t
        0x20t
        0x11t
        0x22t
        0x1t
        -0x2t
        0x11t
        -0x2t
        -0x2dt
        -0x2ct
        -0x2bt
        -0x28t
        -0x23t
        -0x28t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x5at
        -0x62t
        -0x53t
        -0x66t
        -0x63t
        -0x66t
        -0x53t
        -0x66t
        -0x9t
        -0xdt
        -0x18t
        -0x16t
        -0x14t
        -0xct
        -0x14t
        -0xbt
        -0x5t
        -0x6t
        -0x4bt
        -0x4at
        -0x4ft
        -0x4ct
        -0x59t
        -0x5at
        -0x7ct
        -0x5dt
        -0x50t
        -0x50t
        -0x59t
        -0x4ct
        -0x7bt
        -0x4ft
        -0x49t
        -0x50t
        -0x4at
        0x1at
        0x1bt
        0x16t
        0x19t
        0xct
        0xbt
        -0x10t
        0x15t
        0x1bt
        0xct
        0x19t
        0x1at
        0x1bt
        0x10t
        0x1bt
        0x10t
        0x8t
        0x13t
        -0x16t
        0x16t
        0x1ct
        0x15t
        0x1bt
        0x13t
        0x14t
        0xft
        0x12t
        0x5t
        0x4t
        -0x13t
        0x5t
        0x4t
        0x9t
        0x15t
        0xdt
        -0xet
        0x5t
        0x3t
        0x14t
        0x1t
        0xet
        0x7t
        0xct
        0x5t
        -0x1dt
        0xft
        0x15t
        0xet
        0x14t
        -0x1bt
        -0x1at
        -0x1ft
        -0x1ct
        -0x29t
        -0x2at
        -0x40t
        -0x2dt
        -0x1at
        -0x25t
        -0x18t
        -0x29t
        -0x4ct
        -0x2dt
        -0x20t
        -0x20t
        -0x29t
        -0x1ct
        -0x4bt
        -0x1ft
        -0x19t
        -0x20t
        -0x1at
        -0x58t
        -0x57t
        -0x5ct
        -0x59t
        -0x66t
        -0x67t
        -0x7dt
        -0x6at
        -0x57t
        -0x62t
        -0x55t
        -0x66t
        0x78t
        -0x5ct
        -0x56t
        -0x5dt
        -0x57t
        -0x20t
        -0x1ft
        -0x24t
        -0x21t
        -0x2et
        -0x2ft
        -0x41t
        -0x3dt
        -0x50t
        -0x24t
        -0x1et
        -0x25t
        -0x1ft
        -0x50t
        -0x5bt
        -0x57t
        -0x5ft
        -0x65t
        -0x51t
        -0x50t
        -0x63t
        -0x57t
        -0x54t
        0x22t
        0x27t
        0x1et
        0x13t
        0x4t
        0x6t
    .end array-data
.end method

.method private A05(Ljava/lang/String;)V
    .locals 5

    .line 71236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A06(Ljava/lang/String;I)V

    .line 71237
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0xb5

    const/4 v1, 0x2

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)V

    .line 71238
    return-void
.end method

.method private A06(Ljava/lang/String;I)V
    .locals 5

    .line 71239
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71240
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x9a

    const/16 v1, 0xd

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    .line 71241
    :cond_0
    :goto_0
    return-void

    .line 71242
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71243
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x41

    const/16 v1, 0x17

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    goto :goto_0

    .line 71244
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71245
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x30

    const/16 v1, 0x11

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    goto :goto_0

    .line 71246
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71247
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x58

    const/16 v1, 0x1a

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    goto :goto_0

    .line 71248
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71249
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x89

    const/16 v1, 0x11

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    goto :goto_0

    .line 71250
    :cond_5
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71251
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x72

    const/16 v1, 0x17

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private final A07(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 71252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71254
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71255
    return-void
.end method

.method private A08(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 71256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0J(Landroid/content/Context;)I

    move-result v1

    .line 71257
    .local v0, "maxLoadedAdsAllowed":I
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 71258
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71259
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 71260
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71261
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A09(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    .line 71262
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 71263
    :goto_0
    return v0

    .line 71264
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09(Ljava/lang/String;)I
    .locals 1

    .line 71265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71266
    const/4 v0, 0x0

    return v0

    .line 71267
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final A0A(Ljava/lang/String;)I
    .locals 7

    .line 71268
    const/4 v1, 0x0

    .line 71269
    .local v0, "count":I
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 71270
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x9a

    const/16 v1, 0xd

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    .line 71271
    :cond_0
    :goto_0
    return v1

    .line 71272
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71273
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x41

    const/16 v1, 0x17

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 71274
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71275
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x30

    const/16 v1, 0x11

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 71276
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71277
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 71278
    const/16 v2, 0x58

    const/16 v1, 0x1a

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 71279
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71280
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x89

    const/16 v1, 0x11

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 71281
    :cond_5
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71282
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0x72

    const/16 v1, 0x17

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wl;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A05:[Ljava/lang/String;

    const-string v1, "fotbcTaHfC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/Wk;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0
.end method

.method public final A0B(Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71283
    const/16 v2, 0xa7

    const/16 v1, 0xa

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71284
    .local v1, "storedResponsesString":Ljava/lang/String;
    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 71285
    return-object v10

    .line 71286
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71287
    .local v3, "storedResponses":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 71288
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 71289
    .local v5, "storedAdWithToken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71290
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71291
    .local v6, "clientToken":Ljava/lang/String;
    invoke-direct {p0, p1, v6}, Lcom/facebook/ads/redexgen/X/Wl;->A08(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71292
    :cond_2
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71293
    .local v7, "storedAdResponse":Lorg/json/JSONObject;
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sub-long/2addr v4, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 71295
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A02(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 71296
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71297
    invoke-direct {p0, p1, v6}, Lcom/facebook/ads/redexgen/X/Wl;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71298
    :cond_3
    invoke-virtual {p0, p1, v6}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71299
    :cond_4
    :goto_1
    return-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71300
    .end local v5    # "storedAdWithToken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A05(Ljava/lang/String;)V

    .line 71301
    return-object v10

    .line 71302
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "storedResponses":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v0    # "e":Lorg/json/JSONException;
    :catch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A05(Ljava/lang/String;)V

    .line 71303
    return-object v10
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 7

    .line 71304
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71305
    .local v0, "responseJSON":Lorg/json/JSONObject;
    const/16 v2, 0x26

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 71306
    .local v1, "placementJSON":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x3

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71307
    .local v3, "ads":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 71308
    return-void

    .line 71309
    :cond_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71310
    .local v4, "adData":Lorg/json/JSONObject;
    const/16 v3, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71311
    .local v5, "clientToken":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v5, 0x14

    const/16 v1, 0xa

    const/16 v0, 0x3f

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v5, 0xb1

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71312
    .local v2, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Wl;->A0F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71313
    return-void

    .line 71314
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71315
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Wl;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 71316
    :cond_2
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Wl;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71317
    .local v6, "storedAdResponse":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 71318
    return-void

    .line 71319
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71320
    .local p0, "storedResponses":Lorg/json/JSONObject;
    const/16 v2, 0xa7

    const/16 v1, 0xa

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71321
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71322
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)V

    .line 71323
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Wl;->A0A(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A06(Ljava/lang/String;I)V

    .line 71324
    invoke-direct {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Wl;->A07(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71325
    :catch_0
    return-void
.end method

.method public final A0D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71326
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 71327
    :cond_0
    return-void

    .line 71328
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 71329
    return-void

    .line 71330
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71331
    return-void
.end method

.method public final A0E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 71332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A02(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 71333
    return-void

    .line 71334
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A0A(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 71335
    .local v0, "newStoredCount":I
    if-gez v0, :cond_1

    .line 71336
    const/4 v0, 0x0

    .line 71337
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A06(Ljava/lang/String;I)V

    .line 71338
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71339
    .local v1, "storedResponses":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 71340
    return-void

    .line 71341
    .local v2, "storedResponsesJSON":Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71342
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 71343
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:Lcom/facebook/ads/redexgen/X/Wk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)V

    .line 71344
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wl;->A0D(Ljava/lang/String;Ljava/lang/String;)V

    .line 71345
    return-void

    .line 71346
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    return-void
.end method

.method public final A0F(Ljava/lang/String;)Z
    .locals 1

    .line 71347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 71348
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 71349
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 71350
    :goto_0
    return v0

    .line 71351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
