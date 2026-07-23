.class public final Lcom/facebook/ads/redexgen/X/Sy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/lang/String;

.field public static volatile A06:Lcom/facebook/ads/redexgen/X/Sy;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ge;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Sv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1679
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hUOGynEtmSUNsKdJkghkOGNAWtryygzy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wzPRxUupX2XKUl6NSNI9kT750batbohw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Jhw1FAiFO5yEDnp58HFyVFkAnHcYvwe5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TOMeOtqGrF4uQ0cY9hasq1ESWlFY5vR9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yYpnUvpVzVqKhRvrciBHRtLUwNGFzaUs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hHaB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "31TBXmQRr4tlfWcucEg5Ko3P35yO7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sy;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 1

    .line 64638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64640
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A02:Ljava/util/Map;

    .line 64641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64642
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    .line 64643
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64644
    return-void
.end method

.method private A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 11

    .line 64645
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    if-nez p2, :cond_0

    .line 64646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64647
    return v10

    .line 64648
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sy;->A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64649
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 64650
    .local v3, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 64651
    .local v4, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v0

    .line 64652
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, v1, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 64653
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 64654
    .local v5, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0H(Landroid/content/Context;)I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 64655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x23

    const/16 v1, 0x2a

    const/16 v0, 0x7b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64656
    .local v6, "maxSizeError":Ljava/lang/String;
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64657
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64658
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64659
    return v10

    .line 64660
    .end local v6    # "maxSizeError":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 64661
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 64662
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64663
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64664
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64665
    return v7

    .line 64666
    :catch_0
    move-exception v6

    .line 64667
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64668
    sget-object v5, Lcom/facebook/ads/redexgen/X/Sy;->A05:Ljava/lang/String;

    const/16 v4, 0xb8

    const/16 v1, 0x27

    const/16 v0, 0x50

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64669
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64670
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64671
    return v10

    .line 64672
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 64673
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64674
    sget-object v7, Lcom/facebook/ads/redexgen/X/Sy;->A05:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x94

    const/16 v1, 0x24

    const/16 v0, 0x30

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64675
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64676
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64677
    return v10

    .line 64678
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 64679
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/Sy;->A05:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    const/16 v1, 0x1d

    const/16 v0, 0x3b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64680
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64681
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64682
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64683
    return v10

    .line 64684
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v0

    .end local v5
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64685
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64686
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 64687
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    move-object/from16 v9, p5

    if-eqz v0, :cond_0

    .line 64688
    const/16 v2, 0x10a

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A02:Ljava/util/Map;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64690
    :cond_0
    iget-object v10, p2, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    .line 64691
    .local v0, "url":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/Sz;

    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/Sv;->A06:Ljava/lang/String;

    iget-object v7, p2, Lcom/facebook/ads/redexgen/X/Sv;->A07:Ljava/lang/String;

    const/16 v2, 0x105

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64692
    .local v1, "adCacheDebugData":Lcom/facebook/ads/redexgen/X/Sz;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sy;->A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64693
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 64694
    const/4 v0, 0x0

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/T0;->A04(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sz;Z)V

    .line 64695
    const/16 v2, 0xe8

    const/4 v1, 0x7

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v5, 0xef

    const/16 v4, 0x16

    const/16 v3, 0x77

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const-string v1, "1yvOkimt2rWPU4mmWW1HHQmjZRsiMbmk"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64696
    invoke-direct {p0, v10, p4, p3}, Lcom/facebook/ads/redexgen/X/Sy;->A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 64697
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const-string v1, "mvVz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Sy;->A0B(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64698
    return-object v4

    .line 64699
    :cond_1
    invoke-direct {p0, p1, p2, v9}, Lcom/facebook/ads/redexgen/X/Sy;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const-string v1, "ZqrwEo7e3gbOTkHDiv52cvZJTxj52IUd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Sy;->A0B(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64700
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64701
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v0, 0x1

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/T0;->A04(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sz;Z)V

    .line 64702
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/facebook/ads/redexgen/X/Sy;->A0D(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64703
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/T2;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/T8;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64704
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Sy;->A0B(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 64705
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 64706
    :goto_2
    return-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64707
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 64708
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64709
    const/4 v0, 0x0

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 20

    .line 64710
    move-object/from16 v4, p0

    move-object/from16 v14, p2

    iget-object v6, v14, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    .line 64711
    .local v15, "url":Ljava/lang/String;
    iget v7, v14, Lcom/facebook/ads/redexgen/X/Sv;->A04:I

    .line 64712
    .local v13, "height":I
    iget v5, v14, Lcom/facebook/ads/redexgen/X/Sv;->A05:I

    .line 64713
    .local v12, "width":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 64714
    .local v16, "requestTime":J
    const/4 v0, 0x0

    .line 64715
    .local v2, "storedThrowable":Ljava/lang/Throwable;
    const/16 v3, 0xdf

    const/16 v2, 0x9

    const/16 v1, 0x44

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v3, 0xef

    const/16 v2, 0x16

    const/16 v1, 0x77

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v9, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64716
    .end local v0
    :cond_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64717
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 64718
    .local v0, "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 64719
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 64720
    .local v4, "is":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ge;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 64721
    invoke-direct {v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Sy;->A0D(II)Z

    move-result v1

    if-eqz v1, :cond_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64722
    :try_start_1
    invoke-static {v2, v7, v5}, Lcom/facebook/ads/redexgen/X/T2;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64723
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 64724
    :catch_0
    move-exception v0

    goto :goto_2

    .line 64725
    :catch_1
    move-exception v0

    goto :goto_3

    .line 64726
    :cond_2
    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64727
    .end local p3    # null:Ljava/lang/String;
    .end local p4
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catch_2
    move-exception v0

    .line 64728
    .end local v12    # "width":I
    .end local v13    # "height":I
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4
    :goto_2
    :try_start_3
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64729
    if-eqz v2, :cond_3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64730
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64731
    :cond_3
    return-object v8

    .line 64732
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local p3    # null:Ljava/lang/String;
    .end local p4
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catch_3
    move-exception v0

    .line 64733
    .end local v12    # "width":I
    .end local v13    # "height":I
    .local v0, "e":Ljava/io/IOException;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4
    :goto_3
    :try_start_4
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    goto :goto_5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64734
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v0
    .end local v6
    .end local v18
    .end local p3    # null:Ljava/lang/String;
    .end local p4
    .restart local v2    # "storedThrowable":Ljava/lang/Throwable;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catchall_2
    move-exception v0

    .end local v12    # "width":I
    .end local v13    # "height":I
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4
    :goto_4
    if-eqz v2, :cond_4

    .line 64735
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64736
    :cond_4
    throw v0

    .line 64737
    :goto_5
    if-eqz v2, :cond_5

    .line 64738
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64739
    :cond_5
    return-object v8

    .line 64740
    :cond_6
    invoke-direct {v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Sy;->A0D(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64741
    :try_start_5
    invoke-direct {v4, v6, v7, v5}, Lcom/facebook/ads/redexgen/X/Sy;->A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 64742
    .end local v0
    :catch_4
    move-exception v0

    .line 64743
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0C(Ljava/lang/Throwable;)V

    .line 64744
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/Sy;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 64745
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/Sy;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 64746
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v2, :cond_8

    .line 64747
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64748
    .end local v2    # "storedThrowable":Ljava/lang/Throwable;
    .local v18, "storedThrowable":Ljava/lang/Throwable;
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 64749
    .local v6, "failureReason":Ljava/lang/String;
    :goto_8
    move-object/from16 v15, p3

    move-object/from16 v13, p1

    if-eqz v5, :cond_c

    .line 64750
    invoke-direct {v4, v6, v5}, Lcom/facebook/ads/redexgen/X/Sy;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v3, v0

    .line 64751
    .local v10, "storedSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 64752
    .local v19, "loadTime":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_a

    .line 64753
    sget v16, Lcom/facebook/ads/redexgen/X/T0;->A02:I

    .line 64754
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 64755
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 64756
    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/T0;->A03(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 64757
    return-object v5

    .line 64758
    :cond_9
    move-object/from16 v17, v8

    goto :goto_8

    .line 64759
    :cond_a
    sget v16, Lcom/facebook/ads/redexgen/X/T0;->A01:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v10    # "storedSize":J
    .local p1, "storedSize":J
    .end local v12
    .local p3, "width":I
    .end local v13
    .local p4, "height":I
    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/T0;->A03(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 64760
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/Up;->A11(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64761
    return-object v8

    .line 64762
    :cond_b
    return-object v5

    .line 64763
    .end local v19    # "loadTime":J
    .end local p1    # "storedSize":J
    .end local p3    # "width":I
    .end local p4
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .restart local p3    # "width":I
    .restart local p4
    :cond_c
    sget v16, Lcom/facebook/ads/redexgen/X/T0;->A03:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/T0;->A03(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 64764
    return-object v8
.end method

.method private A03(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 64765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gD;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v1

    .line 64766
    .local v0, "client":Lcom/facebook/ads/redexgen/X/fv;
    new-instance v0, Lcom/facebook/ads/redexgen/X/g9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/g9;-><init>()V

    .line 64767
    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/fv;->AGw(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/fu;

    move-result-object v0

    .line 64768
    .local v1, "response":Lcom/facebook/ads/redexgen/X/fu;
    if-eqz v0, :cond_1

    .line 64769
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fu;->A72()[B

    move-result-object v5

    .line 64770
    .local v2, "bytes":[B
    if-eqz v5, :cond_1

    .line 64771
    const/4 v4, 0x0

    array-length v3, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const-string v1, "99IwdndnBnCK07hgvsXqxjXsnHcettbD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64772
    .end local v2    # "bytes":[B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 64773
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Sy;->A0D(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xe8

    const/4 v1, 0x7

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 64774
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64775
    invoke-static {v1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/T2;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/T8;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 64776
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 64777
    invoke-static {v0, v4, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64778
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/Sy;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 64779
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A11(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64780
    if-lez v1, :cond_2

    .line 64781
    return-object v2

    .line 64782
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "size":I
    :cond_1
    return-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64783
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    :catch_0
    move-exception v6

    .line 64784
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v5, Lcom/facebook/ads/redexgen/X/Sy;->A05:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x69

    const/16 v1, 0x2b

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64785
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    return-object v4
.end method

.method private A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64786
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64787
    .local v0, "urlObj":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 64788
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 64789
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 64790
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 64791
    .local p0, "input":Ljava/io/InputStream;
    invoke-static {v1, p2, p3}, Lcom/facebook/ads/redexgen/X/T2;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64792
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sy;->A0A(Ljava/io/Closeable;)V

    .line 64793
    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Sy;
    .locals 2

    .line 64794
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Sy;

    if-nez v0, :cond_1

    .line 64795
    const-class v1, Lcom/facebook/ads/redexgen/X/Sy;

    monitor-enter v1

    .line 64796
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Sy;

    if-nez v0, :cond_0

    .line 64797
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Sy;

    .line 64798
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64799
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Sy;

    return-object v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;
    .locals 0

    .line 64800
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x115

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x4t
        0x77t
        0x29t
        0x37t
        0x3et
        0x3at
        0x19t
        0x1ct
        0x58t
        0x17t
        0xdt
        0xct
        0x8t
        0xdt
        0xct
        0x58t
        0x1ct
        0x1dt
        0xbt
        0xct
        0x11t
        0x16t
        0x19t
        0xct
        0x11t
        0x17t
        0x16t
        0x58t
        0x50t
        0x1et
        0x11t
        0x14t
        0x1dt
        0x45t
        0x7at
        0x51t
        0x4ct
        0x55t
        0x59t
        0x48t
        0x18t
        0x4bt
        0x51t
        0x42t
        0x5dt
        0x18t
        0x5dt
        0x40t
        0x5bt
        0x5dt
        0x5dt
        0x5ct
        0x4bt
        0x18t
        0x55t
        0x59t
        0x40t
        0x18t
        0x4bt
        0x51t
        0x42t
        0x5dt
        0x18t
        0x5et
        0x57t
        0x4at
        0x18t
        0x4bt
        0x4ct
        0x57t
        0x4at
        0x59t
        0x5ft
        0x5dt
        0x2t
        0x18t
        0x12t
        0x30t
        0x32t
        0x39t
        0x34t
        0x71t
        0x34t
        0x23t
        0x23t
        0x3et
        0x23t
        0x7ft
        0x71t
        0x13t
        0x38t
        0x25t
        0x3ct
        0x30t
        0x21t
        0x71t
        0x38t
        0x22t
        0x71t
        0x3ft
        0x24t
        0x3dt
        0x3dt
        0x7ft
        0x7dt
        0x5at
        0x52t
        0x57t
        0x5et
        0x5ft
        0x1bt
        0x4ft
        0x54t
        0x1bt
        0x58t
        0x54t
        0x4bt
        0x42t
        0x1bt
        0x57t
        0x54t
        0x58t
        0x5at
        0x57t
        0x1bt
        0x52t
        0x56t
        0x5at
        0x5ct
        0x5et
        0x1bt
        0x52t
        0x55t
        0x4ft
        0x54t
        0x1bt
        0x58t
        0x5at
        0x58t
        0x53t
        0x5et
        0x1bt
        0x13t
        0x4et
        0x49t
        0x57t
        0x6t
        0x26t
        0x1dt
        0x12t
        0x11t
        0x1ft
        0x16t
        0x53t
        0x7t
        0x1ct
        0x53t
        0x4t
        0x1t
        0x1at
        0x7t
        0x16t
        0x53t
        0x11t
        0x1at
        0x7t
        0x1et
        0x12t
        0x3t
        0x53t
        0x7t
        0x1ct
        0x53t
        0x15t
        0x1at
        0x1ft
        0x16t
        0x53t
        0x5bt
        0x6t
        0x1t
        0x1ft
        0x4et
        0x46t
        0x7dt
        0x72t
        0x71t
        0x7ft
        0x76t
        0x33t
        0x67t
        0x7ct
        0x33t
        0x64t
        0x61t
        0x7at
        0x67t
        0x76t
        0x33t
        0x71t
        0x7at
        0x67t
        0x7et
        0x72t
        0x63t
        0x33t
        0x67t
        0x7ct
        0x33t
        0x7ct
        0x66t
        0x67t
        0x63t
        0x66t
        0x67t
        0x33t
        0x60t
        0x67t
        0x61t
        0x76t
        0x72t
        0x7et
        0x66t
        0x74t
        0x74t
        0x62t
        0x73t
        0x3dt
        0x28t
        0x28t
        0x28t
        0x55t
        0x5at
        0x5ft
        0x56t
        0x9t
        0x1ct
        0x1ct
        0x52t
        0x5dt
        0x58t
        0x51t
        0xet
        0x1bt
        0x1bt
        0x1bt
        0x55t
        0x5at
        0x50t
        0x46t
        0x5bt
        0x5dt
        0x50t
        0x6bt
        0x55t
        0x47t
        0x47t
        0x51t
        0x40t
        0x1bt
        0x73t
        0x77t
        0x7bt
        0x7dt
        0x7ft
        0xat
        0x9t
        0x7t
        0x2t
        0x2at
        0x31t
        0x34t
        0x31t
        0x30t
        0x28t
        0x31t
    .end array-data
.end method

.method public static A0A(Ljava/io/Closeable;)V
    .locals 0

    .line 64801
    if-nez p0, :cond_0

    .line 64802
    return-void

    .line 64803
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64804
    :catch_0
    return-void
.end method

.method private A0B(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 64805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 64806
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 64807
    .local v0, "aspectRatio":F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 64808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64809
    .end local v0    # "aspectRatio":F
    :cond_0
    return-void
.end method

.method private A0C(Ljava/lang/Throwable;)V
    .locals 6

    .line 64810
    const/16 v2, 0x105

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 64811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1f:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 64812
    :goto_0
    return-void

    .line 64813
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64814
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A1f:I

    const/16 v2, 0x4d

    const/16 v1, 0x1c

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 64815
    invoke-interface {v4, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0
.end method

.method private A0D(II)Z
    .locals 1

    .line 64816
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E(Ljava/lang/String;)F
    .locals 4

    .line 64817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 64819
    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sy;->A04:[Ljava/lang/String;

    const-string v1, "EtgkjkQAQYyyMgrrXA05VcKpExUV0Ywa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Sv;)Landroid/graphics/Bitmap;
    .locals 6

    .line 64820
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    move-object v2, p1

    iget v3, v2, Lcom/facebook/ads/redexgen/X/Sv;->A05:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Sv;->A04:I

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Sv;->A02:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Sy;->A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14

    .line 64821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A02:Ljava/util/Map;

    move-object/from16 v9, p2

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Sv;

    .line 64822
    .local v0, "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    move-object v3, p1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    move-object/from16 v7, p5

    move/from16 v5, p4

    move/from16 v6, p3

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 64823
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Sy;->A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 64824
    :cond_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/Sv;

    const/16 v2, 0x10e

    const/4 v1, 0x7

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x10e

    const/4 v1, 0x7

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v13

    move v10, v6

    move v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Sy;->A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sv;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0H(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 64825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sy;->A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64826
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0I(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 64827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sy;->A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64828
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
