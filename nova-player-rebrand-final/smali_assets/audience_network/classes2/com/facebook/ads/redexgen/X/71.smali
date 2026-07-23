.class public final Lcom/facebook/ads/redexgen/X/71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZH;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/ge;

.field public final A02:Lcom/facebook/ads/redexgen/X/TH;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 453
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u3ex4KQMIW041lf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3AptpGjhH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gmUldlaQs1iDW8SjyulR1SveXx4W0WHx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1qDQcvNZxrP96rda7KCur1LyuVNWU8kp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CAWPS90lsy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t8qLCZBFlDEhGKoHyGYF6SljofbMSV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "olmaGtOYwcY5nta5it0d5AQEWYClhN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QuuHkAQHaV7iF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/71;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/71;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 1

    .line 18255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A00:Z

    .line 18257
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/71;->A01:Lcom/facebook/ads/redexgen/X/ge;

    .line 18258
    new-instance v0, Lcom/facebook/ads/redexgen/X/TH;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    .line 18259
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/71;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18260
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 18261
    .local v0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 18262
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18263
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 18264
    .local v1, "eventObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A04:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18265
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A09:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18266
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A0A:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18267
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A08:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    .line 18268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    .line 18269
    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18270
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A07:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    .line 18271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 18272
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    .line 18273
    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18274
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A06:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    .line 18275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 18276
    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18277
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18278
    .local v2, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18279
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A02:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A01:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->A8N()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18281
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18282
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 18283
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 18284
    :cond_1
    return-object v5
.end method

.method private A02(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18285
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 18286
    .local v0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 18287
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18288
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 18289
    .local v1, "eventObject":Lorg/json/JSONObject;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18290
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18291
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18292
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18293
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18294
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18295
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18296
    .local v2, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18297
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A01:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->A8N()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18299
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18300
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 18301
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 18302
    :cond_1
    return-object v5
.end method

.method public static A03(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18303
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 18304
    .local v0, "tokensObject":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18305
    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    .line 18306
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A02:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    .line 18307
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18308
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 18309
    :cond_0
    return-object v2
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/71;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        -0x4t
        -0x3t
        0x4t
        -0x3t
        0xct
        -0x3t
        -0x48t
        -0x7t
        0xct
        0xct
        -0x3t
        0x5t
        0x8t
        0xct
        0xbt
        -0x48t
        -0x3t
        0x10t
        -0x5t
        -0x3t
        -0x3t
        -0x4t
        -0x3t
        -0x4t
        -0x48t
        -0x3t
        0xet
        -0x3t
        0x6t
        0xct
        0xbt
        -0x3at
        -0x57t
        -0x54t
        -0x42t
        -0x4ft
        -0x54t
        -0x1t
        0x12t
        0x12t
        0x3t
        0xbt
        0xet
        0x12t
        0x8t
        0x5t
        0x18t
        0x5t
        -0x4bt
        -0x50t
        -0x21t
        -0x2ft
        -0x21t
        -0x21t
        -0x2bt
        -0x25t
        -0x26t
        -0x35t
        -0x2bt
        -0x30t
        -0x33t
        -0x41t
        -0x33t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x47t
        -0x32t
        -0x3dt
        -0x39t
        -0x41t
        0x12t
        0x7t
        0xbt
        0x3t
        0x3t
        -0x2t
        -0x6t
        -0xct
        -0x3t
        -0x12t
        -0x8t
        -0xdt
        -0x12t
        -0xdt
        -0x16t
        -0x21t
    .end array-data
.end method


# virtual methods
.method public final A50(I)I
    .locals 6

    .line 18310
    const/4 v5, 0x0

    .line 18311
    .local v0, "attemptsExceededEventsCount":I
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 18312
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A08(I)I

    move-result v5

    .line 18313
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18314
    :catch_0
    move-exception v4

    .line 18315
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A01:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18316
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZH;->A00:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18317
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0I()V

    .line 18318
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A00:Z

    if-eqz v0, :cond_1

    .line 18319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0J()V

    .line 18320
    :cond_1
    return v5
.end method

.method public final A51()V
    .locals 1

    .line 18321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0H()V

    .line 18322
    return-void
.end method

.method public final A5q(Ljava/lang/String;)Z
    .locals 1

    .line 18323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A0K(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final A6s()Lorg/json/JSONArray;
    .locals 3

    .line 18324
    const/4 v2, 0x0

    .line 18325
    .local v0, "eventsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0A()Landroid/database/Cursor;

    move-result-object v2

    .line 18326
    const/4 v0, 0x0

    .line 18327
    .local v1, "events":Lorg/json/JSONArray;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 18328
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/71;->A01(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v0

    .line 18329
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18330
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18331
    :cond_1
    return-object v0

    .line 18332
    .end local v1    # "events":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 18333
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18334
    :cond_2
    throw v0

    .line 18335
    .local v1, "jsone":Lorg/json/JSONException;
    :catch_0
    if-eqz v2, :cond_3

    .line 18336
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18337
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A6t()Lorg/json/JSONObject;
    .locals 3

    .line 18338
    const/4 v2, 0x0

    .line 18339
    .local v0, "tokensCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0B()Landroid/database/Cursor;

    move-result-object v2

    .line 18340
    const/4 v0, 0x0

    .line 18341
    .local v1, "tokens":Lorg/json/JSONObject;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 18342
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/71;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v0

    .line 18343
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18344
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18345
    :cond_1
    return-object v0

    .line 18346
    .end local v1    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 18347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18348
    :cond_2
    throw v0

    .line 18349
    .local v1, "jsone":Lorg/json/JSONException;
    :catch_0
    if-eqz v2, :cond_3

    .line 18350
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18351
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A82()I
    .locals 3

    .line 18352
    const/4 v2, 0x0

    .line 18353
    .local v0, "eventCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TH;->A09()Landroid/database/Cursor;

    move-result-object v2

    .line 18354
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 18355
    :cond_0
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18356
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18357
    :cond_1
    return v0

    .line 18358
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 18359
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18360
    :cond_2
    throw v0
.end method

.method public final A85(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 18361
    const/4 v5, 0x0

    .line 18362
    .local v0, "eventType":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A0D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 18363
    .local v1, "eventDebugCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 18364
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/71;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/71;->A04:[Ljava/lang/String;

    const-string v1, "rCLG4kGmKo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2rihfjjJxsL3teC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 18365
    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A0A:Lcom/facebook/ads/redexgen/X/TF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A01:Ljava/lang/String;

    .line 18366
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 18367
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 18368
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 18369
    :cond_1
    return-object v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9I(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 18370
    const/4 v3, 0x0

    .line 18371
    .local v0, "payloadCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A0C(I)Landroid/database/Cursor;

    move-result-object v3

    .line 18372
    const/4 v1, 0x0

    .line 18373
    .local v1, "events":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 18374
    .local v2, "tokens":Lorg/json/JSONObject;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 18375
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/71;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v2

    .line 18376
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/71;->A02(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v1

    .line 18377
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18378
    if-eqz v3, :cond_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18379
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 18380
    :cond_1
    return-object v0

    .line 18381
    :catch_0
    :try_start_1
    const/4 v1, 0x0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18382
    if-eqz v3, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18383
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 18384
    :cond_2
    return-object v0

    .line 18385
    .end local v1    # "events":Lorg/json/JSONArray;
    .end local v2    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    .end local v1
    if-eqz v3, :cond_3

    .line 18386
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 18387
    :cond_3
    throw v0
.end method

.method public final AA5(Ljava/lang/String;)Z
    .locals 1

    .line 18388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A0L(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AL6(Lcom/facebook/ads/redexgen/X/V7;Lcom/facebook/ads/redexgen/X/UO;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/V7;",
            "Lcom/facebook/ads/redexgen/X/UO<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18389
    .local p1, "callback":Lcom/facebook/ads/redexgen/X/UO;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/71;->A02:Lcom/facebook/ads/redexgen/X/TH;

    .line 18390
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A08()Ljava/lang/String;

    move-result-object v2

    .line 18391
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A05()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/VC;->A00:I

    .line 18392
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A06()Lcom/facebook/ads/redexgen/X/VD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VD;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18393
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A04()D

    move-result-wide v5

    .line 18394
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A03()D

    move-result-wide v7

    .line 18395
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A07()Ljava/lang/String;

    move-result-object v9

    .line 18396
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V7;->A09()Ljava/util/Map;

    move-result-object v10

    .line 18397
    move-object v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/TH;->A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/UO;)Landroid/os/AsyncTask;

    .line 18398
    return-void
.end method
