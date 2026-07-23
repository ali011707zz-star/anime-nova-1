.class public abstract Lcom/facebook/ads/redexgen/X/dL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dK;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dL;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/cz;Z)Lcom/facebook/ads/redexgen/X/dK;
    .locals 10

    .line 80076
    move p0, p5

    const/16 v2, 0x65

    const/4 v1, 0x3

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 80077
    .local v1, "urlsUpdated":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 80078
    .local p0, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80079
    .local p1, "videoUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80080
    .local p2, "fileUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0x33

    const/16 v2, 0x1a

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    move-object v5, p1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80081
    .local p3, "htmlFileUrl":Ljava/lang/String;
    .local v2, "updatedHtmlFileUrl":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80082
    if-eqz p0, :cond_1

    .line 80083
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80084
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80085
    const/4 p0, 0x0

    .line 80086
    const/4 v2, 0x0

    .line 80087
    .end local p12
    .local v3, "updateUrls":Z
    .end local v1    # "urlsUpdated":Z
    .end local v2    # "updatedHtmlFileUrl":Ljava/lang/String;
    .end local p12
    .local p4, "updateUrls":Z
    .local p5, "urlsUpdated":Z
    .local p6, "updatedHtmlFileUrl":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0P:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {p3, v3, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    goto :goto_1

    .line 80088
    .end local v3    # "updateUrls":Z
    .restart local p12
    :cond_0
    move v2, p0

    goto :goto_0

    .line 80089
    :cond_1
    move v2, p0

    move-object v6, v0

    goto :goto_0

    .line 80090
    :goto_1
    :try_start_0
    const/16 v4, 0x5c

    const/4 v3, 0x4

    const/16 v0, 0x31

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 80091
    .local v1, "iconObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80092
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80093
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80094
    if-eqz v2, :cond_2

    .line 80095
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80096
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80097
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x4d

    const/16 v1, 0xf

    const/16 v0, 0x71

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 80098
    .local v0, "endCardsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    .line 80099
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 80100
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 80101
    .local v3, "cardImageUrl":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80102
    if-eqz v2, :cond_3

    .line 80103
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 80104
    .end local v3    # "cardImageUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80105
    .end local v2    # "i":I
    :cond_4
    const/16 v3, 0x2b

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 80106
    .local v2, "carouselItems":Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    .line 80107
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 80108
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 80109
    invoke-static {v7, v8, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/dL;->A03(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Sx;Z)V

    .line 80110
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 80111
    :cond_5
    invoke-static {v7, v8, v5, p2, v2}, Lcom/facebook/ads/redexgen/X/dL;->A03(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Sx;Z)V

    goto :goto_4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80112
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A15:I

    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Lcom/facebook/ads/redexgen/X/cz;->A04(ILjava/lang/String;)V

    .line 80113
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    :goto_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/dK;

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/dK;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dL;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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

    const/16 v0, 0x71

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/dL;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x2at
        -0x2dt
        -0x2at
        -0x7ct
        -0x28t
        -0x2at
        -0x3bt
        -0x2et
        -0x29t
        -0x36t
        -0x2dt
        -0x2at
        -0x2ft
        -0x33t
        -0x2et
        -0x35t
        -0x7ct
        -0x52t
        -0x49t
        -0x4dt
        -0x4et
        -0x7ct
        -0x33t
        -0x2et
        -0x7ct
        -0x27t
        -0x2ct
        -0x38t
        -0x3bt
        -0x28t
        -0x37t
        -0x59t
        -0x3bt
        -0x39t
        -0x34t
        -0x37t
        -0x38t
        -0x47t
        -0x2at
        -0x30t
        -0x29t
        -0x37t
        -0x39t
        -0x28t
        -0x2bt
        -0x25t
        -0x27t
        -0x35t
        -0x2et
        0xdt
        0x22t
        0x17t
        0xat
        0x16t
        0x12t
        0xct
        0x8t
        0x1ct
        0xdt
        0x14t
        0x8t
        0x15t
        0xat
        0x22t
        0xet
        0x1bt
        0x8t
        0x11t
        0x1dt
        0x16t
        0x15t
        0x8t
        0x1et
        0x1bt
        0x15t
        0x17t
        0x20t
        0x16t
        0x11t
        0x15t
        0x13t
        0x24t
        0x16t
        0x11t
        0x1bt
        0x1ft
        0x13t
        0x19t
        0x17t
        0x25t
        -0x25t
        -0x2bt
        -0x1ft
        -0x20t
        -0x23t
        -0x1ft
        -0x2bt
        -0x25t
        -0x27t
        -0x21t
        -0x24t
        -0x2at
        -0x20t
        -0x2dt
        -0x32t
        -0x31t
        -0x27t
        -0x37t
        -0x21t
        -0x24t
        -0x2at
    .end array-data
.end method

.method public static A03(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Sx;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/Sx;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80114
    .local p0, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "videoUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v2, 0x60

    const/4 v1, 0x5

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 80115
    .local v0, "imageObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    const/16 v2, 0x65

    const/4 v1, 0x3

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80116
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80117
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80118
    if-eqz p4, :cond_0

    .line 80119
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80120
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x68

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80121
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80122
    .local v2, "videoUrl":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80123
    if-eqz p4, :cond_1

    .line 80124
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80125
    .end local v2    # "videoUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method
