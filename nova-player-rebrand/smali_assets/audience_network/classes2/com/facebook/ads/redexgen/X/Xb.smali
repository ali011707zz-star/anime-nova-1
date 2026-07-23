.class public abstract Lcom/facebook/ads/redexgen/X/Xb;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2379
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CrCy7lrq6K7x8XfVc2fNdD07yQrJARzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2MxjV7VZ3w9mO7JRBJp513kJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rmUL5G3ocM8QXPjdZtuh6zbaNsDgif4G"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2yiBwXDvjLEglhUZ76UGTCKc6ACbYUli"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XTHqKjDvfaB7R0kK8woS2JMLPY9kkXKh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8qNbzU9VaySgM9v1BVYKE0up"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2SD8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5eH9HzTGPv5UTtfJbfYv5z17pUBai2pZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xb;->A03()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xb;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72833
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 72834
    .local v0, "errorMsgObj":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xf

    const/4 v1, 0x4

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72835
    const/16 v2, 0x13

    const/16 v1, 0xb

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72836
    const/16 v2, 0x1e

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72837
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A01:[Ljava/lang/String;

    const-string v1, "VgY5LYgsJRJxHdOPZ6f9tdfdxgenUCo4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72838
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A00(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 72839
    return-object v2

    .line 72840
    :cond_0
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72841
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72842
    return-object v2

    .line 72843
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xb;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x1bt
        0x1bt
        0x17t
        0x14t
        0xet
        0xct
        0x1ft
        0x14t
        0x1at
        0x19t
        -0x26t
        0x1bt
        0xft
        0x11t
        -0x3t
        0x9t
        -0x2t
        -0x1t
        0x28t
        0x29t
        0x37t
        0x27t
        0x36t
        0x2dt
        0x34t
        0x38t
        0x2dt
        0x33t
        0x32t
        -0x18t
        -0x1bt
        -0x21t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;)Z
    .locals 3

    .line 72844
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Xb;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
