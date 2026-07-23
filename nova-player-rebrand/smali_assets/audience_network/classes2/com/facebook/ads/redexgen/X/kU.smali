.class public final Lcom/facebook/ads/redexgen/X/kU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kW;,
        Lcom/facebook/ads/redexgen/X/kV;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/5i;

.field public A04:Lcom/facebook/ads/redexgen/X/Mo;

.field public A05:Ljava/io/File;

.field public A06:Ljava/io/OutputStream;

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/MP;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3164
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZvdLZTVfwuIBTQP4GzYBT5X"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wbAZGHQ6rgrE49QWGCHGfuBznSfuy1uN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V6XwnsY6foGeZeUf6zKrOXNqPWCT5H6x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YVOcTVGnehAK6q3v9MTNJvITraIKZiNA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KHrBPZHANML419JBBjaM9uFMM5JItkLu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1WIXy5Awt7B4E86DpiV0tl9iGx9sIFx0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LtMYCkXqs5nSRMey4EGdy6S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9S3XCAL9m1K226khzcMpmZ28hR6Taq7A"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kU;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kU;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MP;JI)V
    .locals 6

    .line 90313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90314
    const-wide/16 v1, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    cmp-long v0, p2, v4

    if-nez v0, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x73

    const/16 v1, 0x30

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3y;->A0A(ZLjava/lang/Object;)V

    .line 90315
    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    const-wide/32 v1, 0x200000

    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 90316
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kU;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0x66

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 90317
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A09:Lcom/facebook/ads/redexgen/X/MP;

    .line 90318
    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    const-wide p2, 0x7fffffffffffffffL

    :cond_2
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/kU;->A08:J

    .line 90319
    iput p4, p0, Lcom/facebook/ads/redexgen/X/kU;->A07:I

    .line 90320
    return-void

    .line 90321
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kU;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 90323
    return-void

    .line 90324
    :cond_0
    const/4 v2, 0x0

    .line 90325
    .local v0, "success":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90326
    const/4 v4, 0x1

    .line 90327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90328
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    .line 90329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 90330
    .local v2, "fileToCommit":Ljava/io/File;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kU;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 90331
    sget-object v2, Lcom/facebook/ads/redexgen/X/kU;->A0B:[Ljava/lang/String;

    const-string v1, "UqCq1nJSNUsM2UdGgnorxCQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "6grM2eqzP4bpAc7X7xQexiC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 90332
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A09:Lcom/facebook/ads/redexgen/X/MP;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/MP;->A55(Ljava/io/File;J)V

    .line 90333
    .end local v2    # "fileToCommit":Ljava/io/File;
    :goto_0
    return-void

    .line 90334
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90335
    :catchall_0
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90336
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    .line 90337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 90338
    .local v3, "fileToCommit":Ljava/io/File;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    .line 90339
    if-eqz v2, :cond_3

    .line 90340
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A09:Lcom/facebook/ads/redexgen/X/MP;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/MP;->A55(Ljava/io/File;J)V

    .line 90341
    .end local v3    # "fileToCommit":Ljava/io/File;
    :goto_1
    throw v4

    .line 90342
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kU;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x74t
        0x76t
        0x7dt
        0x70t
        0x51t
        0x74t
        0x61t
        0x74t
        0x46t
        0x7ct
        0x7bt
        0x7et
        0x20t
        0x34t
        0x27t
        0x21t
        0x2bt
        0x23t
        0x28t
        0x32t
        0x15t
        0x2ft
        0x3ct
        0x23t
        0x66t
        0x2ft
        0x35t
        0x66t
        0x24t
        0x23t
        0x2at
        0x29t
        0x31t
        0x66t
        0x32t
        0x2et
        0x23t
        0x66t
        0x2bt
        0x2ft
        0x28t
        0x2ft
        0x2bt
        0x33t
        0x2bt
        0x66t
        0x34t
        0x23t
        0x25t
        0x29t
        0x2bt
        0x2bt
        0x23t
        0x28t
        0x22t
        0x23t
        0x22t
        0x66t
        0x30t
        0x27t
        0x2at
        0x33t
        0x23t
        0x66t
        0x29t
        0x20t
        0x66t
        0x74t
        0x76t
        0x7ft
        0x71t
        0x77t
        0x73t
        0x74t
        0x68t
        0x66t
        0x12t
        0x2et
        0x2ft
        0x35t
        0x66t
        0x2bt
        0x27t
        0x3ft
        0x66t
        0x25t
        0x27t
        0x33t
        0x35t
        0x23t
        0x66t
        0x36t
        0x29t
        0x29t
        0x34t
        0x66t
        0x25t
        0x27t
        0x25t
        0x2et
        0x23t
        0x66t
        0x36t
        0x23t
        0x34t
        0x20t
        0x29t
        0x34t
        0x2bt
        0x27t
        0x28t
        0x25t
        0x23t
        0x68t
        0x23t
        0x37t
        0x24t
        0x22t
        0x28t
        0x20t
        0x2bt
        0x31t
        0x16t
        0x2ct
        0x3ft
        0x20t
        0x65t
        0x28t
        0x30t
        0x36t
        0x31t
        0x65t
        0x27t
        0x20t
        0x65t
        0x35t
        0x2at
        0x36t
        0x2ct
        0x31t
        0x2ct
        0x33t
        0x20t
        0x65t
        0x2at
        0x37t
        0x65t
        0x6t
        0x6bt
        0x9t
        0x0t
        0xbt
        0x2t
        0x11t
        0xdt
        0x1at
        0x10t
        0xbt
        0x16t
        0x0t
        0x11t
        0x6bt
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90343
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v6, -0x1

    cmp-long v0, v1, v6

    if-nez v0, :cond_2

    .line 90344
    .local p0, "length":J
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A09:Lcom/facebook/ads/redexgen/X/MP;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    .line 90345
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    add-long/2addr v4, v0

    .line 90346
    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/MP;->AK8(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    .line 90347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A05:Ljava/io/File;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90348
    .local v0, "underlyingFileOutputStream":Ljava/io/FileOutputStream;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A07:I

    if-lez v0, :cond_1

    .line 90349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    if-nez v0, :cond_0

    .line 90350
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A07:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mo;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mo;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    .line 90351
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    .line 90352
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    .line 90353
    return-void

    .line 90354
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Mo;->A00(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 90355
    :cond_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    goto :goto_2

    .line 90356
    :cond_2
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0
.end method


# virtual methods
.method public final AGk(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kW;
        }
    .end annotation

    .line 90357
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90358
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 90359
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/5i;

    .line 90361
    return-void

    .line 90362
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/5i;

    .line 90363
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A08:J

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    .line 90364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    goto :goto_1

    .line 90365
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 90366
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kU;->A03(Lcom/facebook/ads/redexgen/X/5i;)V

    goto :goto_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90367
    :catch_0
    move-exception v1

    .line 90368
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/kW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 90369
    :goto_2
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kW;
        }
    .end annotation

    .line 90370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/5i;

    if-nez v0, :cond_0

    .line 90371
    return-void

    .line 90372
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kU;->A01()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90373
    :catch_0
    move-exception v1

    .line 90374
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/kW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 90375
    :goto_0
    return-void
.end method

.method public final write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kW;
        }
    .end annotation

    .line 90376
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/5i;

    .line 90377
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/5i;
    if-nez v7, :cond_0

    .line 90378
    return-void

    .line 90379
    :cond_0
    const/4 v6, 0x0

    .line 90380
    .local v1, "bytesWritten":I
    :goto_0
    if-ge v6, p3, :cond_2

    .line 90381
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 90382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kU;->A01()V

    .line 90383
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/kU;->A03(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 90384
    :cond_1
    sub-int v0, p3, v6

    int-to-long v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    sub-long/2addr v0, v2

    .line 90385
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 90386
    .local v3, "bytesToWrite":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    add-int v0, p2, v6

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 90387
    add-int/2addr v6, v4

    .line 90388
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:J

    .line 90389
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90390
    .end local v1    # "bytesWritten":I
    :catch_0
    move-exception v1

    .line 90391
    .local v1, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/kW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 90392
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
