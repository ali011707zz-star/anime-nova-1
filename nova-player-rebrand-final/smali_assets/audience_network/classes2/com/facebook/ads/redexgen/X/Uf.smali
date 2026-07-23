.class public final Lcom/facebook/ads/redexgen/X/Uf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ue;
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ue;

.field public A01:Z

.field public final A02:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1934
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "60vC7Tqxq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iit"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yZ8WhL2SKbyHWFuqrbqyqX6q9YBqbSbq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zou4kHpYoYqOWULjtQgwmQsgY48o5sQE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jj1CAbkpCkmlTw2dBaB6fKsG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LIdASrcH6z6LtpFKNKqsX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9qyYxkloNYGFw4rMCbrwSMHZV85hWfZp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eAI5s54jDPvvLg6GHfi1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uf;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uf;->A02()V

    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/ads/redexgen/X/Uf;->A03:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67957
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uf;->A02:Ljava/io/File;

    .line 67958
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67959
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ue;->A03(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    .line 67960
    :goto_0
    return-void

    .line 67961
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 67962
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67963
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x19

    const/16 v1, 0x20

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Ue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67964
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A01:Z

    if-nez v0, :cond_1

    .line 67965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    if-nez v0, :cond_0

    .line 67966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A02:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ue;->A04(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    .line 67967
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    return-object v0

    .line 67968
    :cond_1
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uf;->A04:[B

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
    .locals 4

    const/16 v0, 0x72

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uf;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uf;->A05:[Ljava/lang/String;

    const-string v1, "hp8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "JPe8szfYYKMd1bH3O09b0bU9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Uf;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        -0x2t
        0x6t
        0x9t
        0x2t
        0x1t
        -0x43t
        0x11t
        0xct
        -0x43t
        0x1t
        0x2t
        0x9t
        0x2t
        0x11t
        0x2t
        -0x43t
        0x3t
        0x6t
        0x9t
        0x2t
        -0x43t
        -0x3ct
        -0x3et
        0x10t
        -0x77t
        -0x54t
        -0x51t
        -0x58t
        0x63t
        0x6at
        0x68t
        -0x4at
        0x6at
        0x63t
        -0x54t
        -0x4at
        0x63t
        -0x4ft
        -0x4et
        -0x49t
        0x63t
        -0x5ct
        0x63t
        -0x4bt
        -0x58t
        -0x5ct
        -0x59t
        -0x5ct
        -0x5bt
        -0x51t
        -0x58t
        0x63t
        -0x57t
        -0x54t
        -0x51t
        -0x58t
        -0x61t
        -0x3ct
        -0x34t
        -0x49t
        -0x3et
        -0x41t
        -0x46t
        0x76t
        -0x44t
        -0x45t
        -0x36t
        -0x47t
        -0x42t
        0x76t
        -0x37t
        -0x36t
        -0x49t
        -0x38t
        -0x36t
        0x76t
        -0x41t
        -0x3ct
        -0x46t
        -0x45t
        -0x32t
        -0x70t
        0x76t
        0x7bt
        -0x46t
        -0x4bt
        -0x38t
        -0x3at
        -0x2et
        -0x2bt
        -0x39t
        -0x7dt
        -0x37t
        -0x34t
        -0x31t
        -0x38t
        -0x7dt
        -0x3ct
        -0x31t
        -0x2bt
        -0x38t
        -0x3ct
        -0x39t
        -0x24t
        -0x7dt
        -0x39t
        -0x34t
        -0x2at
        -0x2dt
        -0x2et
        -0x2at
        -0x38t
        -0x39t
    .end array-data
.end method

.method private A03(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ue;->A03:[J

    aput-wide p2, v0, p1

    .line 67970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ue;->A02(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 67972
    return-void
.end method

.method private A04(J[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 67975
    return-void
.end method


# virtual methods
.method public final declared-synchronized A05()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67976
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uf;->A00()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    .line 67977
    .local v0, "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ue;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 67978
    .end local v0    # "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06(I[BI[II)Lcom/facebook/ads/redexgen/X/UW;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67979
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Uf;->A00()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v9

    .line 67980
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    const/4 v5, 0x1

    move/from16 v3, p1

    if-ltz v3, :cond_7

    .line 67981
    move v8, v3

    .line 67982
    .local v7, "lastIdx":I
    const/4 v7, 0x0

    .line 67983
    .local v8, "fetchBytes":I
    const-wide/16 v1, -0x1

    .line 67984
    .local v9, "startOffset":J
    const/16 v16, 0x0

    .line 67985
    .local v11, "hasMoreToFetch":Z
    :goto_0
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    move/from16 v6, p3

    move-object/from16 v11, p2

    if-lt v8, v0, :cond_0

    goto :goto_4

    .line 67986
    :cond_0
    sub-int v4, v8, v3

    add-int v4, v4, p5

    move-object/from16 v10, p4

    array-length v0, v10

    if-lt v4, v0, :cond_1

    goto :goto_2

    .line 67987
    :cond_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A03:[J

    aget-wide v14, v0, v8

    .line 67988
    .local v12, "offset":J
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    sub-int/2addr v0, v5

    if-ne v8, v0, :cond_2

    .line 67989
    iget-wide v4, v9, Lcom/facebook/ads/redexgen/X/Ue;->A01:J

    goto :goto_1

    .line 67990
    .end local p3    # null:I
    :cond_2
    iget-object v4, v9, Lcom/facebook/ads/redexgen/X/Ue;->A03:[J

    add-int/lit8 v0, v8, 0x1

    aget-wide v4, v4, v0

    .line 67991
    .local v14, "end":J
    :goto_1
    sub-long/2addr v4, v14

    .line 67992
    .local v5, "recordBytes":J
    const-wide/16 v12, -0x1

    cmp-long v0, v1, v12

    if-nez v0, :cond_3

    .line 67993
    move-wide v1, v14

    .line 67994
    .end local v9    # "startOffset":J
    .local p0, "startOffset":J
    :cond_3
    long-to-int v12, v4

    add-int/2addr v12, v7

    add-int/2addr v12, v6

    array-length v0, v11

    if-le v12, v0, :cond_4

    goto :goto_3

    .line 67995
    .end local v9
    .restart local v5    # "recordBytes":J
    .restart local v12    # "offset":J
    .restart local v14    # "end":J
    .restart local p0    # "startOffset":J
    :cond_4
    long-to-int v0, v4

    add-int/2addr v7, v0

    .line 67996
    sub-int v6, v8, v3

    add-int v6, v6, p5

    long-to-int v0, v4

    aput v0, v10, v6

    .line 67997
    .end local v5    # "recordBytes":J
    .end local v12    # "offset":J
    .end local v14    # "end":J
    add-int/lit8 v8, v8, 0x1

    .line 67998
    const/4 v5, 0x1

    goto :goto_0

    .line 67999
    :goto_2
    const/16 v16, 0x1

    .line 68000
    goto :goto_4

    .line 68001
    :goto_3
    const/16 v16, 0x1

    .line 68002
    .end local v5
    .end local v12
    .end local v14
    .end local p0    # "startOffset":J
    .restart local v9    # "startOffset":J
    :goto_4
    if-le v8, v3, :cond_5

    .line 68003
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68004
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v11, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 68005
    sget-object v1, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/UV;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, v1, v3, v8, v7}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Lcom/facebook/ads/redexgen/X/UV;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 68006
    :cond_5
    if-eqz v16, :cond_6

    .line 68007
    :try_start_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/UV;

    goto :goto_5

    .line 68008
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A05:Lcom/facebook/ads/redexgen/X/UV;

    :goto_5
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Lcom/facebook/ads/redexgen/X/UV;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68009
    monitor-exit p0

    return-object v0

    .line 68010
    :cond_7
    :try_start_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x39

    const/16 v1, 0x1d

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 68011
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68012
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    .end local p4    # null:[I
    .end local p5    # null:I
    .end local p6
    .end local p7
    .end local p8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68013
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A01:Z

    .line 68014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68015
    monitor-exit p0

    return-void

    .line 68016
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    .line 68017
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Lcom/facebook/ads/redexgen/X/Ue;

    .line 68018
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68019
    monitor-exit p0

    return-void

    .line 68020
    .end local v0    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Uf;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68021
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A01:Z

    if-nez v0, :cond_1

    .line 68022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uf;->A07()V

    .line 68023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A02:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68024
    monitor-exit p0

    return-void

    .line 68025
    :cond_0
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uf;->A02:Ljava/io/File;

    .line 68026
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68027
    :cond_1
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68028
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68029
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uf;->A00()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v5

    .line 68030
    .local v0, "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uf;->A05()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Uf;->A03:I

    if-ne v1, v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68031
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 68032
    :cond_0
    :try_start_1
    iget v2, v5, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Ue;->A01:J

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Uf;->A03(IJ)V

    .line 68033
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Ue;->A01:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Uf;->A04(J[B)V

    .line 68034
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 68035
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v5, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    .line 68036
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/Ue;->A01:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/Ue;->A01:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68037
    monitor-exit p0

    return v4

    .line 68038
    .end local v0    # "fileData":Lcom/facebook/ads/redexgen/X/Ue;
    .end local p1    # null:[B
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
