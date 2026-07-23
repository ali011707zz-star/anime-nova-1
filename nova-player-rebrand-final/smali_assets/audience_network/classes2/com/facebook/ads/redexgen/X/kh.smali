.class public final Lcom/facebook/ads/redexgen/X/kh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ll;


# static fields
.field public static A07:Ljava/lang/String;

.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Ljava/io/InputStream;

.field public A02:Ljava/net/HttpURLConnection;

.field public final A03:Ljava/lang/String;

.field public volatile A04:I

.field public volatile A05:I

.field public volatile A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3166
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "76RHNajjOom"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Mjpn3pRzDJalybdRDXibpwNEIm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yniKdbkjQS3x88FVx9CeVftqblxxQhpu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Bjsdcl6Zd1aHs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xxeVE5WeJXBB6h2Smwfm1cLqVC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jWBIYbGBA8wTLtSAwtOQxldoJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SNbZ6FPeFicMqudBak9DrYkQXr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PSBHzZzFGATU6u0TdgIgliGoBbccT2bp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kh;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kh;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/kh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kh;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 91374
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/kh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91375
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 91376
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kh;-><init>(Ljava/lang/String;)V

    .line 91377
    iput p2, p0, Lcom/facebook/ads/redexgen/X/kh;->A00:I

    .line 91378
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91380
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    .line 91381
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A00:I

    .line 91382
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lk;->A00(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    .line 91383
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kh;->A06:Ljava/lang/String;

    .line 91384
    return-void
.end method

.method private A00(Ljava/net/HttpURLConnection;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91385
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 91386
    .local v0, "contentLength":I
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    :goto_0
    return v1

    .line 91387
    :cond_0
    const/16 v0, 0xce

    if-ne p3, v0, :cond_1

    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kh;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02(II)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91388
    const/4 v3, 0x0

    .line 91389
    .local v0, "redirectCount":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    .line 91390
    .local v1, "url":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xea

    const/16 v1, 0x10

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91391
    if-lez p1, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0xf

    const/4 v1, 0x4

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91392
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 91393
    .local v2, "connection":Ljava/net/HttpURLConnection;
    if-lez p1, :cond_1

    .line 91394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x142

    const/4 v1, 0x6

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x32

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xfa

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91395
    :cond_1
    if-lez p2, :cond_3

    .line 91396
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/kh;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 91397
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/kh;->A09:[Ljava/lang/String;

    const-string v1, "1Ss55MOjwkg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91398
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 91399
    .local v3, "code":I
    iput v6, p0, Lcom/facebook/ads/redexgen/X/kh;->A04:I

    .line 91400
    const/16 v0, 0x12d

    if-eq v6, v0, :cond_4

    const/16 v7, 0x12e

    sget-object v2, Lcom/facebook/ads/redexgen/X/kh;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    if-eq v6, v7, :cond_4

    :goto_1
    const/16 v0, 0x12f

    if-ne v6, v0, :cond_6

    :cond_4
    const/4 v6, 0x1

    .line 91401
    .local v4, "redirected":Z
    :goto_2
    if-eqz v6, :cond_5

    .line 91402
    const/16 v2, 0xe2

    const/16 v1, 0x8

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91403
    add-int/lit8 v3, v3, 0x1

    .line 91404
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91405
    :cond_5
    const/4 v0, 0x5

    if-gt v3, v0, :cond_9

    .line 91406
    .end local v3    # "code":I
    if-nez v6, :cond_0

    .line 91407
    return-object v5

    .line 91408
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/kh;->A09:[Ljava/lang/String;

    const-string v1, "p6lJtanqIpTVtR8wvrkpKJ2zYO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "gJMCNOhCywWTIArSLN7pAqKg27"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v6, v7, :cond_4

    goto :goto_1

    .line 91409
    :cond_8
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91410
    .restart local v3    # "code":I
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x14

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A03()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xff

    const/16 v1, 0x17

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91412
    const/4 v7, 0x0

    .line 91413
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 91414
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    const/16 v0, 0x2710

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A02(II)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 91415
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    .line 91416
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A06:Ljava/lang/String;

    .line 91417
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 91418
    sget-object v4, Lcom/facebook/ads/redexgen/X/kh;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4a

    const/16 v1, 0x12

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x139

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x12

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91419
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lj;->A05(Ljava/io/Closeable;)V

    .line 91420
    if-eqz v7, :cond_0

    goto :goto_0

    .line 91421
    :catch_0
    move-exception v5

    .line 91422
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/kh;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x81

    const/16 v1, 0x19

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91423
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lj;->A05(Ljava/io/Closeable;)V

    .line 91424
    if-eqz v7, :cond_0

    .line 91425
    :goto_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91426
    :cond_0
    return-void

    .line 91427
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lj;->A05(Ljava/io/Closeable;)V

    .line 91428
    if-eqz v7, :cond_1

    .line 91429
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91430
    :cond_1
    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x149

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kh;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x62t
        0x78t
        0x2bt
        0x62t
        0x65t
        0x7ft
        0x6et
        0x79t
        0x79t
        0x7et
        0x7bt
        0x7ft
        0x6et
        0x6ft
        0x21t
        0x75t
        0x6et
        0x21t
        0x66t
        0x31t
        0x2ft
        0x32t
        0x2et
        0x66t
        0x29t
        0x20t
        0x20t
        0x35t
        0x23t
        0x32t
        0x66t
        0x6ct
        0x60t
        0x23t
        0x2ft
        0x2et
        0x34t
        0x25t
        0x2et
        0x34t
        0x6dt
        0x2ct
        0x25t
        0x2et
        0x27t
        0x34t
        0x28t
        0x7at
        0x60t
        0x5t
        0x14t
        0xet
        0x4dt
        0x41t
        0x40t
        0x40t
        0x4bt
        0x4dt
        0x5at
        0x47t
        0x41t
        0x40t
        0xet
        0x47t
        0x5dt
        0xet
        0x4ft
        0x4ct
        0x5dt
        0x4bt
        0x40t
        0x5at
        0xft
        0x14t
        0x38t
        0x39t
        0x23t
        0x32t
        0x39t
        0x23t
        0x77t
        0x3et
        0x39t
        0x31t
        0x38t
        0x77t
        0x31t
        0x38t
        0x25t
        0x77t
        0x37t
        0x18t
        0x2ft
        0x2ft
        0x32t
        0x2ft
        0x7dt
        0x39t
        0x34t
        0x2et
        0x3et
        0x32t
        0x33t
        0x33t
        0x38t
        0x3et
        0x29t
        0x34t
        0x33t
        0x3at
        0x7dt
        0x15t
        0x29t
        0x29t
        0x2dt
        0x8t
        0x2ft
        0x31t
        0x1et
        0x32t
        0x33t
        0x33t
        0x38t
        0x3et
        0x29t
        0x34t
        0x32t
        0x33t
        0x15t
        0x22t
        0x22t
        0x3ft
        0x22t
        0x70t
        0x36t
        0x35t
        0x24t
        0x33t
        0x38t
        0x39t
        0x3et
        0x37t
        0x70t
        0x39t
        0x3et
        0x36t
        0x3ft
        0x70t
        0x36t
        0x22t
        0x3ft
        0x3dt
        0x70t
        0x1bt
        0x2ct
        0x2ct
        0x31t
        0x2ct
        0x7et
        0x31t
        0x2et
        0x3bt
        0x30t
        0x37t
        0x30t
        0x39t
        0x7et
        0x3dt
        0x31t
        0x30t
        0x30t
        0x3bt
        0x3dt
        0x2at
        0x37t
        0x31t
        0x30t
        0x7et
        0x38t
        0x31t
        0x2ct
        0x7et
        0x23t
        0x14t
        0x14t
        0x9t
        0x14t
        0x46t
        0x14t
        0x3t
        0x7t
        0x2t
        0xft
        0x8t
        0x1t
        0x46t
        0x2t
        0x7t
        0x12t
        0x7t
        0x46t
        0x0t
        0x14t
        0x9t
        0xbt
        0x46t
        0x5ct
        0x60t
        0x60t
        0x64t
        0x41t
        0x66t
        0x78t
        0x47t
        0x7bt
        0x61t
        0x66t
        0x77t
        0x71t
        0x6ft
        0x61t
        0x66t
        0x78t
        0x29t
        0x33t
        0x65t
        0x46t
        0x4at
        0x48t
        0x5dt
        0x40t
        0x46t
        0x47t
        0x0t
        0x3ft
        0x2at
        0x21t
        0x6ft
        0x2ct
        0x20t
        0x21t
        0x21t
        0x2at
        0x2ct
        0x3bt
        0x26t
        0x20t
        0x21t
        0x6ft
        0x55t
        0x66t
        0x69t
        0x60t
        0x62t
        0x6dt
        0x5at
        0x5et
        0x5bt
        0x1ft
        0x5ct
        0x50t
        0x51t
        0x4bt
        0x5at
        0x51t
        0x4bt
        0x1ft
        0x56t
        0x51t
        0x59t
        0x50t
        0x1ft
        0x59t
        0x4dt
        0x50t
        0x52t
        0x1ft
        0x6at
        0x5dt
        0x59t
        0x5ct
        0x51t
        0x56t
        0x5ft
        0x18t
        0x4bt
        0x57t
        0x4dt
        0x4at
        0x5bt
        0x5dt
        0x18t
        0x21t
        0x1at
        0x1at
        0x55t
        0x18t
        0x14t
        0x1bt
        0xct
        0x55t
        0x7t
        0x10t
        0x11t
        0x1ct
        0x7t
        0x10t
        0x16t
        0x1t
        0x6t
        0x4ft
        0x55t
        0x5ct
        0x6t
        0x1ct
        0x51t
        0x55t
        0x51t
        0x59t
        0x6t
        0x1ct
        0x1et
        0x5t
        0x8t
        0x19t
        0xft
        0x41t
        0x63t
    .end array-data
.end method

.method private final A05(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91431
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kh;->A02(II)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    .line 91432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A06:Ljava/lang/String;

    .line 91433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v1, 0x2000

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A01:Ljava/io/InputStream;

    .line 91434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A00(Ljava/net/HttpURLConnection;II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    .line 91435
    return-void
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91436
    :catch_0
    move-exception v4

    .line 91437
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9a

    const/16 v1, 0x1d

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/kn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 91438
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A04:I

    return v0
.end method

.method public final AGj(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91439
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A00:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A05(II)V

    .line 91440
    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 91442
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91443
    :catch_0
    move-exception v3

    .line 91444
    .local v0, "e":Ljava/lang/NullPointerException;
    const/16 v2, 0x5c

    const/16 v1, 0x25

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/kn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91445
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized length()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    monitor-enter p0

    .line 91446
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_0

    .line 91447
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kh;->A03()V

    .line 91448
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kh;
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A05:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 91449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kn;
        }
    .end annotation

    .line 91450
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kh;->A01:Ljava/io/InputStream;

    const/16 v2, 0xb7

    const/16 v1, 0x18

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 91451
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kh;->A01:Ljava/io/InputStream;

    array-length v1, p1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91452
    :catch_0
    move-exception v2

    .line 91453
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/kn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91454
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 91455
    .local v0, "e":Ljava/io/InterruptedIOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x116

    const/16 v1, 0xf

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8K;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/8K;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91456
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x33

    const/16 v1, 0x17

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 91457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xcf

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kh;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x148

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kh;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
