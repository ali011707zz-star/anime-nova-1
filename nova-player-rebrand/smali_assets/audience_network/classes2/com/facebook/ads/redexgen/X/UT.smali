.class public final Lcom/facebook/ads/redexgen/X/UT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UU;

.field public A01:Z

.field public final A02:Ljava/io/RandomAccessFile;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1926
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t11y9BgCyC0qQkG3mYUymtEDmEyKV4hc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7ce9erzyyNrxlxET0sEMje4IREmhCp4i"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4ENs57XqgWmyHBJWN23MJhXXMCaaLz6e"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dr2xNsWDGhc5qlQtklfNqpJl8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q35Tkz9qNjTEzRlngCIyL7KdK6wO30wH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vPiuZupP6WnF44bZrTOwEQFi3wuHod3P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "O8XwwgRKslyLqfo5O4ZQvZ7SdPHYsu5Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UT;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UT;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67715
    const/16 v2, 0x35

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    .line 67716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x8

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 67717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 67718
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 67719
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UT;->A01()V

    .line 67720
    .end local v0
    .end local v1
    :goto_0
    return-void

    .line 67721
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 67722
    .local v0, "fileIdx":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 67723
    .local v1, "index":I
    if-ltz v2, :cond_1

    if-gez v1, :cond_2

    .line 67724
    :cond_1
    const/4 v2, 0x0

    .line 67725
    const/4 v1, 0x0

    .line 67726
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UT;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67727
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 67729
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 67730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 67731
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UT;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x4ct
        0x49t
        0x4at
        0x46t
        0x49t
        0x1dt
        0x40t
        0x43t
        0x3ct
        -0x9t
        0x40t
        0x4at
        -0x9t
        0x38t
        0x43t
        0x49t
        0x3ct
        0x38t
        0x3bt
        0x50t
        -0x9t
        0x3at
        0x43t
        0x46t
        0x4at
        0x3ct
        0x3bt
        0x27t
        0x4ct
        0x54t
        0x3ft
        0x4at
        0x47t
        0x42t
        -0x2t
        0x4et
        0x4dt
        0x51t
        0x47t
        0x52t
        0x47t
        0x4dt
        0x4ct
        0x18t
        -0x2t
        0x6t
        0x3t
        0x42t
        0xat
        0x3t
        0x42t
        0x7t
        0x20t
        0x25t
        0x21t
    .end array-data
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/UU;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67732
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Z

    if-nez v0, :cond_0

    .line 67733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    return-object v0

    .line 67734
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/UU;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67735
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Z

    if-nez v0, :cond_2

    .line 67736
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A04:[Ljava/lang/String;

    const-string v1, "wZJ8kWRxyYeI3b89D2ZfjwX8MEoFWOZU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    if-ltz v0, :cond_0

    .line 67737
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 67738
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UT;->A01()V

    .line 67739
    return-void

    .line 67740
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67741
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 67742
    const/16 v2, 0x1c

    const/16 v1, 0x19

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67743
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Z

    if-eqz v0, :cond_0

    .line 67745
    return-void

    .line 67746
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Z

    .line 67747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 67748
    return-void
.end method
