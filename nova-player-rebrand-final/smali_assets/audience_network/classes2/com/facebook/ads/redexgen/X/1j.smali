.class public final Lcom/facebook/ads/redexgen/X/1j;
.super Lcom/facebook/ads/redexgen/X/AQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pA;,
        Lcom/facebook/ads/redexgen/X/5k;,
        Lcom/facebook/ads/redexgen/X/pB;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/RandomAccessFile;

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 113
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EpUFNdKyF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ElnVCWkanZ28CNZmVbXI8Cgdfk8l0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X39VUuGfeiZ7XA2vCr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EABpQNGHZAa4ZPAJBF04BZM7WLurFTC9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "chwMXTauvlPIh4ZEXg6aw7fxDLbtX6Fs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XZGBORnRKKQlpHrvvOBFjnqbRPoZpqW4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uC2aRCtD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rZqfEylCjzpizgmEVXgae15ipmvYBT3W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1j;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8033
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Z)V

    .line 8034
    return-void
.end method

.method public static A00(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pA;
        }
    .end annotation

    .line 8035
    const/16 v3, 0x7d6

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v2, 0x1d

    const/4 v1, 0x1

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8036
    :catch_0
    move-exception v2

    .line 8037
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 8038
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 8039
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 8040
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 8041
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "uF4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8042
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5k;->A01(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8043
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_1
    const/16 v3, 0x7d5

    goto :goto_0

    .line 8044
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 8045
    const/16 v2, 0x1e

    const/16 v1, 0xc0

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x3ec

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1j;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

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
    .locals 4

    const/16 v0, 0xde

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "X0VoZl0WlZuonvRnqv5GR18rztIlLTBl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "XOIDFuTAWw0P55lYRHi5z3HfEt22MTH0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/1j;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x6ct
        0x69t
        0x60t
        0x56t
        0x77t
        0x66t
        0x57t
        0x60t
        0x64t
        0x61t
        0x4at
        0x75t
        0x60t
        0x6bt
        0x6ft
        0x60t
        0x65t
        0x6ct
        0x5at
        0x7bt
        0x6at
        0x5bt
        0x6ct
        0x68t
        0x6dt
        0x5bt
        0x48t
        0x4ft
        0x2ft
        0x24t
        0x23t
        0x38t
        0x71t
        0x39t
        0x30t
        0x22t
        0x71t
        0x20t
        0x24t
        0x34t
        0x23t
        0x28t
        0x71t
        0x30t
        0x3ft
        0x35t
        0x7et
        0x3et
        0x23t
        0x71t
        0x37t
        0x23t
        0x30t
        0x36t
        0x3ct
        0x34t
        0x3ft
        0x25t
        0x7dt
        0x71t
        0x26t
        0x39t
        0x38t
        0x32t
        0x39t
        0x71t
        0x30t
        0x23t
        0x34t
        0x71t
        0x3ft
        0x3et
        0x25t
        0x71t
        0x22t
        0x24t
        0x21t
        0x21t
        0x3et
        0x23t
        0x25t
        0x34t
        0x35t
        0x7ft
        0x71t
        0x15t
        0x38t
        0x35t
        0x71t
        0x28t
        0x3et
        0x24t
        0x71t
        0x32t
        0x30t
        0x3dt
        0x3dt
        0x71t
        0x4t
        0x23t
        0x38t
        0x7ft
        0x21t
        0x30t
        0x23t
        0x22t
        0x34t
        0x79t
        0x78t
        0x71t
        0x3et
        0x3ft
        0x71t
        0x30t
        0x71t
        0x22t
        0x25t
        0x23t
        0x38t
        0x3ft
        0x36t
        0x71t
        0x32t
        0x3et
        0x3ft
        0x25t
        0x30t
        0x38t
        0x3ft
        0x38t
        0x3ft
        0x36t
        0x71t
        0x76t
        0x6et
        0x76t
        0x71t
        0x3et
        0x23t
        0x71t
        0x76t
        0x72t
        0x76t
        0x6et
        0x71t
        0x4t
        0x22t
        0x34t
        0x71t
        0x4t
        0x23t
        0x38t
        0x7ft
        0x37t
        0x23t
        0x3et
        0x3ct
        0x17t
        0x38t
        0x3dt
        0x34t
        0x79t
        0x3ft
        0x34t
        0x26t
        0x71t
        0x17t
        0x38t
        0x3dt
        0x34t
        0x79t
        0x21t
        0x30t
        0x25t
        0x39t
        0x78t
        0x78t
        0x71t
        0x25t
        0x3et
        0x71t
        0x30t
        0x27t
        0x3et
        0x38t
        0x35t
        0x71t
        0x25t
        0x39t
        0x38t
        0x22t
        0x7ft
        0x71t
        0x21t
        0x30t
        0x25t
        0x39t
        0x6ct
        0x74t
        0x22t
        0x7dt
        0x20t
        0x24t
        0x34t
        0x23t
        0x28t
        0x6ct
        0x74t
        0x22t
        0x7dt
        0x37t
        0x23t
        0x30t
        0x36t
        0x3ct
        0x34t
        0x3ft
        0x25t
        0x6ct
        0x74t
        0x22t
    .end array-data
.end method


# virtual methods
.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 8046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "FB tracing added in D4783963 for calls to TraceUtil.beginSection and TraceUtil.endSection"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pA;
        }
    .end annotation

    .line 8047
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 8048
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    .line 8049
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Landroid/net/Uri;

    .line 8050
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0G(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8051
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1j;->A00(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    .line 8052
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8053
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    sub-long/2addr v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    goto :goto_1

    :cond_0
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8054
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 8055
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 8056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    .line 8057
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8058
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "xa7zJISj9"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "YSvWE2PgVF009LXgrm"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    return-wide v2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8059
    :cond_2
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v1, v1, v2}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 8060
    :catch_0
    move-exception v2

    .line 8061
    :try_start_1
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local p2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8062
    :catchall_0
    move-exception v0

    .end local v1
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local p2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 8063
    throw v0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pA;
        }
    .end annotation

    .line 8064
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Landroid/net/Uri;

    .line 8065
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 8066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8067
    :cond_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    .line 8068
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "OaGc5WGUg2QUkWgGCbKJpnMVI4k73TqR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7y85lWdOal5lz5BxO7mJ0PPL1NIIxTrt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 8069
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    .line 8070
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8071
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8072
    :catch_0
    move-exception v2

    .line 8073
    :try_start_1
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8074
    :catchall_0
    move-exception v5

    .end local v2
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    .line 8075
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "Vm3YcALUN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "c4edS4Kr4EVyTdnKAl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 8076
    :goto_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    .line 8077
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8078
    :cond_3
    throw v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/1j;->A05:[Ljava/lang/String;

    const-string v1, "xGGiO6aoc87d3bdrOM0514KxVU6xxq2z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rL55lenIs2jXGgYduJCww9Rx5eQkWv1P"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "FB tracing added in D4783963 for calls to TraceUtil.beginSection and TraceUtil.endSection"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pA;
        }
    .end annotation

    .line 8079
    if-nez p3, :cond_0

    .line 8080
    const/4 v0, 0x0

    return v0

    .line 8081
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 8082
    const/4 v0, -0x1

    return v0

    .line 8083
    :cond_1
    :try_start_0
    const/16 v2, 0xf

    const/16 v1, 0xe

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 8084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8085
    .local v0, "bytesRead":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 8086
    if-lez v4, :cond_2

    .line 8087
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:J

    .line 8088
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 8089
    :cond_2
    return v4

    .line 8090
    :catch_0
    move-exception v2

    .line 8091
    :try_start_1
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pA;-><init>(Ljava/lang/Throwable;I)V

    .end local p1    # null:[B
    .end local p2    # null:I
    .end local p3    # null:I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8092
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v0

    .end local v0
    .restart local p1    # null:[B
    .restart local p2    # null:I
    .restart local p3    # null:I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 8093
    throw v0
.end method
