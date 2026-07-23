.class public final Lcom/facebook/ads/redexgen/X/Ue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileData"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public final A02:Ljava/io/RandomAccessFile;

.field public final A03:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1933
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EPfM4EfRxbpEP9gtrDRMlskxYfXi3EIy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2RTdQxHpZZ8AiQDKhWe0eMGOKfA6zgcU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "emglrqM7KcB96xrWPAlCT1HSFCX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BYlHqNK3eo406tIlZNUH5uGyHKGLxPsS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SGf6K716h04aYOies8bsBexpWYiEkey6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TSOJfYWCxzAl33AyQiIcTNEFCW2LweGK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8CMs5hd6IV548hO09SYKxFdjcmyhV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SdeZw3a81E33UQl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ue;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ue;->A06()V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;[JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67872
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67873
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A02:Ljava/io/RandomAccessFile;

    .line 67874
    move-object/from16 v3, p2

    iput-object v3, v9, Lcom/facebook/ads/redexgen/X/Ue;->A03:[J

    .line 67875
    move-wide/from16 v6, p3

    iput-wide v6, v9, Lcom/facebook/ads/redexgen/X/Ue;->A01:J

    .line 67876
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v3

    const-wide/16 v14, 0x0

    const/4 v13, 0x1

    if-ge v4, v0, :cond_0

    .line 67877
    aget-wide v1, v3, v4

    cmp-long v0, v1, v14

    if-eqz v0, :cond_0

    .line 67878
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    .line 67879
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67880
    .end local v5    # "i":I
    :cond_0
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    const/4 v5, 0x2

    const/4 v12, 0x0

    if-lez v0, :cond_1

    .line 67881
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Ue;->A01()J

    move-result-wide v10

    .line 67882
    .local v11, "firstOffset":J
    aget-wide v1, v3, v12

    cmp-long v0, v1, v10

    if-nez v0, :cond_8

    .line 67883
    .end local v11    # "firstOffset":J
    :cond_1
    iget v10, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    .restart local v5    # "i":I
    :goto_1
    array-length v0, v3

    const/4 v8, 0x3

    if-ge v10, v0, :cond_3

    .line 67884
    aget-wide v1, v3, v10

    cmp-long v0, v1, v14

    if-nez v0, :cond_2

    .line 67885
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 67886
    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67887
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    .line 67888
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v0, v3, v10

    .line 67889
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v12

    aput-object v2, v3, v13

    aput-object v0, v3, v5

    .line 67890
    const/16 v2, 0x101

    const/16 v1, 0x42

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67891
    .end local v5    # "i":I
    :cond_3
    const/4 v8, 0x1

    .restart local v5    # "i":I
    :goto_2
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    if-ge v8, v0, :cond_5

    .line 67892
    add-int/lit8 v0, v8, -0x1

    aget-wide v10, v3, v0

    aget-wide v1, v3, v8

    cmp-long v0, v10, v1

    if-gtz v0, :cond_4

    .line 67893
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 67894
    :cond_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v0, v8, -0x1

    .line 67895
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v0, v8, -0x1

    aget-wide v0, v3, v0

    .line 67896
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 67897
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v0, v3, v8

    .line 67898
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v7, v3, v12

    aput-object v4, v3, v13

    aput-object v2, v3, v5

    const/4 v0, 0x3

    aput-object v1, v3, v0

    .line 67899
    const/16 v2, 0xcf

    const/16 v1, 0x32

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67900
    .end local v5    # "i":I
    :cond_5
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    if-lez v0, :cond_6

    .line 67901
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    sub-int/2addr v0, v13

    aget-wide v1, v3, v0

    cmp-long v0, v1, v6

    if-gtz v0, :cond_7

    .line 67902
    :cond_6
    return-void

    .line 67903
    :cond_7
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    sub-int/2addr v0, v13

    .line 67904
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ue;->A00:I

    sub-int/2addr v0, v13

    aget-wide v0, v3, v0

    .line 67905
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 67906
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v4, v3, v12

    aput-object v2, v3, v13

    aput-object v1, v3, v5

    .line 67907
    const/16 v2, 0x143

    const/16 v1, 0x32

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67908
    :cond_8
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67909
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget-wide v0, v3, v12

    .line 67910
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v12

    aput-object v0, v3, v13

    .line 67911
    const/16 v2, 0x175

    const/16 v1, 0x2b

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00()J
    .locals 2

    .line 67912
    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method private final A01()J
    .locals 4

    .line 67913
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ue;->A00()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ue;->A03:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static A02(I)J
    .locals 4

    .line 67914
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ue;->A00()J

    move-result-wide v2

    mul-int/lit8 v0, p0, 0x8

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static A03(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/Ue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67915
    const/16 v2, 0x1a0

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67916
    .local v0, "newFile":Ljava/io/RandomAccessFile;
    const-wide v0, -0x4ff04ffffffffffL

    :try_start_0
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 67917
    sget v0, Lcom/facebook/ads/redexgen/X/Uf;->A03:I

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 67918
    sget v0, Lcom/facebook/ads/redexgen/X/Uf;->A03:I

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 67919
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 67920
    sget v0, Lcom/facebook/ads/redexgen/X/Uf;->A03:I

    new-array v3, v0, [J

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ue;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Ue;-><init>(Ljava/io/RandomAccessFile;[JJ)V

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67921
    .local v1, "e":Ljava/io/IOException;
    :catch_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ue;->A07(Ljava/io/Closeable;)V

    .line 67922
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67923
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/Ue;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67924
    const/4 v6, 0x0

    .line 67925
    .local v0, "newFile":Ljava/io/RandomAccessFile;
    const/4 v12, 0x0

    const/4 v5, 0x1

    :try_start_0
    const/16 v2, 0x1a0

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v1

    .line 67926
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ue;->A00()J

    move-result-wide v1

    const/4 v7, 0x2

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    .line 67927
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    .line 67928
    .local v3, "fileMagic":J
    const-wide v8, -0x4ff04ffffffffffL

    cmp-long v0, v10, v8

    if-nez v0, :cond_4

    .line 67929
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 67930
    .local v5, "recordCount":J
    const-wide/16 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ue;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_0

    .line 67931
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67932
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ue;->A05:[Ljava/lang/String;

    const-string v1, "qh47im7POLSb1uwOXceGvb4YvfCz05wk"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "3iy4rWBQ3YjawiJr5gwpSuoHtfNura2H"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    cmp-long v0, v2, v8

    if-ltz v0, :cond_3

    const-wide/32 v8, 0x186a0

    cmp-long v0, v2, v8

    if-gtz v0, :cond_3

    .line 67933
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ue;->A02(I)J

    move-result-wide v8

    cmp-long v0, v10, v8

    if-ltz v0, :cond_2

    .line 67934
    long-to-int v0, v2

    new-array v3, v0, [J

    .line 67935
    .local v7, "recordOffsets":[J
    const/4 v2, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 67936
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    aput-wide v0, v3, v2

    .line 67937
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67938
    :cond_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ue;

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Ue;-><init>(Ljava/io/RandomAccessFile;[JJ)V

    return-object v0

    .line 67939
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v4, 0x75

    const/16 v1, 0x3f

    const/16 v0, 0x38

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 67940
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 67941
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v12

    aput-object v2, v1, v5

    .line 67942
    invoke-static {v8, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newFile":Ljava/io/RandomAccessFile;
    .end local p1
    throw v0

    .line 67943
    :cond_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v4, 0x4d

    const/16 v1, 0x28

    const/16 v0, 0x1b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 67944
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v12

    invoke-static {v7, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local p1
    throw v0

    .line 67945
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0xb4

    const/16 v1, 0x1b

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 67946
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v12

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local p1
    throw v0

    .line 67947
    :cond_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x32

    const/16 v1, 0x1b

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 67948
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ue;->A00()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v12

    aput-object v2, v1, v5

    .line 67949
    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local p1
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67950
    .restart local v0    # "newFile":Ljava/io/RandomAccessFile;
    .restart local p1
    .local v3, "e":Ljava/io/IOException;
    :catch_0
    if-eqz v6, :cond_6

    .line 67951
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ue;->A07(Ljava/io/Closeable;)V

    .line 67952
    :cond_6
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67953
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v12

    const/16 v2, 0x1a

    const/16 v1, 0x18

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ue;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1a3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ue;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x6at
        -0x4ft
        -0x47t
        -0x44t
        -0x4bt
        -0x4ct
        0x70t
        -0x3ct
        -0x41t
        0x70t
        -0x4dt
        -0x3et
        -0x4bt
        -0x4ft
        -0x3ct
        -0x4bt
        0x70t
        -0x4at
        -0x47t
        -0x44t
        -0x4bt
        0x70t
        0x77t
        0x75t
        -0x3dt
        0x77t
        -0x34t
        -0x19t
        -0x11t
        -0xet
        -0x15t
        -0x16t
        -0x5at
        -0x6t
        -0xbt
        -0x5at
        -0xbt
        -0xat
        -0x15t
        -0xct
        -0x5at
        -0x14t
        -0x11t
        -0xet
        -0x15t
        -0x5at
        -0x53t
        -0x55t
        -0x7t
        -0x53t
        -0x45t
        -0x22t
        -0x1ft
        -0x26t
        -0x6bt
        -0x66t
        -0x27t
        -0x6bt
        -0x29t
        -0x12t
        -0x17t
        -0x26t
        -0x18t
        -0x5ft
        -0x6bt
        -0x1ft
        -0x26t
        -0x18t
        -0x18t
        -0x6bt
        -0x17t
        -0x23t
        -0x2at
        -0x1dt
        -0x6bt
        -0x66t
        -0x27t
        0x75t
        -0x68t
        -0x65t
        -0x6ct
        0x4ft
        -0x6dt
        -0x6ct
        -0x6et
        -0x65t
        -0x70t
        -0x5ft
        -0x6ct
        -0x5et
        0x4ft
        -0x70t
        0x4ft
        -0x5dt
        -0x62t
        -0x5dt
        -0x70t
        -0x65t
        0x4ft
        -0x62t
        -0x6bt
        0x4ft
        0x54t
        -0x6dt
        0x4ft
        -0x5ft
        -0x6ct
        -0x6et
        -0x62t
        -0x5ft
        -0x6dt
        0x4ft
        -0x5et
        -0x65t
        -0x62t
        -0x5dt
        -0x5et
        -0x6et
        -0x4bt
        -0x48t
        -0x4ft
        0x6ct
        -0x50t
        -0x4ft
        -0x51t
        -0x48t
        -0x53t
        -0x42t
        -0x4ft
        -0x41t
        0x6ct
        -0x53t
        0x6ct
        -0x40t
        -0x45t
        -0x40t
        -0x53t
        -0x48t
        0x6ct
        -0x45t
        -0x4et
        0x6ct
        0x71t
        -0x50t
        0x6ct
        -0x42t
        -0x4ft
        -0x51t
        -0x45t
        -0x42t
        -0x50t
        0x6ct
        -0x41t
        -0x48t
        -0x45t
        -0x40t
        -0x41t
        0x78t
        0x6ct
        -0x52t
        -0x3ft
        -0x40t
        0x6ct
        -0x45t
        -0x46t
        -0x48t
        -0x3bt
        0x6ct
        -0x4ct
        -0x53t
        -0x41t
        0x6ct
        0x71t
        -0x50t
        0x6ct
        -0x52t
        -0x3bt
        -0x40t
        -0x4ft
        -0x41t
        -0x79t
        -0x56t
        -0x53t
        -0x5at
        0x61t
        -0x52t
        -0x5et
        -0x58t
        -0x56t
        -0x5ct
        0x61t
        0x66t
        -0x5bt
        0x61t
        -0x56t
        -0x51t
        -0x4ct
        -0x4bt
        -0x5at
        -0x5et
        -0x5bt
        0x61t
        -0x50t
        -0x59t
        0x61t
        0x66t
        -0x5bt
        -0x4et
        -0x3bt
        -0x3dt
        -0x31t
        -0x2et
        -0x3ct
        -0x80t
        -0x7bt
        -0x3ct
        -0x80t
        -0x31t
        -0x3at
        -0x3at
        -0x2dt
        -0x3bt
        -0x2ct
        -0x80t
        -0x37t
        -0x2dt
        -0x80t
        -0x7bt
        -0x3ct
        -0x74t
        -0x80t
        -0x3et
        -0x2bt
        -0x2ct
        -0x80t
        -0x2et
        -0x3bt
        -0x3dt
        -0x31t
        -0x2et
        -0x3ct
        -0x80t
        -0x7bt
        -0x3ct
        -0x80t
        -0x31t
        -0x3at
        -0x3at
        -0x2dt
        -0x3bt
        -0x2ct
        -0x80t
        -0x37t
        -0x2dt
        -0x80t
        -0x7bt
        -0x3ct
        -0x61t
        -0x4et
        -0x50t
        -0x44t
        -0x41t
        -0x4ft
        0x6dt
        0x72t
        -0x4ft
        0x6dt
        -0x44t
        -0x4dt
        -0x4dt
        -0x40t
        -0x4et
        -0x3ft
        0x6dt
        -0x40t
        -0x4bt
        -0x44t
        -0x3et
        -0x47t
        -0x4ft
        0x6dt
        -0x51t
        -0x4et
        0x6dt
        0x7dt
        0x6dt
        -0x51t
        -0x4et
        -0x50t
        -0x52t
        -0x3et
        -0x40t
        -0x4et
        0x6dt
        -0x41t
        -0x4et
        -0x50t
        -0x44t
        -0x41t
        -0x4ft
        0x6dt
        -0x50t
        -0x44t
        -0x3et
        -0x45t
        -0x3ft
        0x6dt
        -0x4at
        -0x40t
        0x6dt
        0x72t
        -0x4ft
        0x79t
        0x6dt
        -0x51t
        -0x3et
        -0x3ft
        0x6dt
        -0x4at
        -0x40t
        0x6dt
        0x72t
        -0x4ft
        -0x25t
        -0x12t
        -0x14t
        -0x8t
        -0x5t
        -0x13t
        -0x57t
        -0x52t
        -0x13t
        -0x57t
        -0x4t
        -0x3t
        -0x16t
        -0x5t
        -0x3t
        -0x4t
        -0x57t
        -0x16t
        -0x3t
        -0x57t
        -0x8t
        -0x11t
        -0x11t
        -0x4t
        -0x12t
        -0x3t
        -0x57t
        -0x52t
        -0x13t
        -0x4bt
        -0x57t
        -0x15t
        -0x2t
        -0x3t
        -0x57t
        -0x11t
        -0xet
        -0xbt
        -0x12t
        -0x57t
        -0x4t
        -0xet
        0x3t
        -0x12t
        -0x57t
        -0xet
        -0x4t
        -0x57t
        -0x52t
        -0x13t
        -0x3ft
        -0x2ct
        -0x2et
        -0x22t
        -0x1ft
        -0x2dt
        -0x71t
        -0x61t
        -0x71t
        -0x22t
        -0x2bt
        -0x2bt
        -0x1et
        -0x2ct
        -0x1dt
        -0x71t
        -0x2ct
        -0x19t
        -0x21t
        -0x2ct
        -0x2et
        -0x1dt
        -0x2ct
        -0x2dt
        -0x71t
        -0x30t
        -0x1dt
        -0x71t
        -0x6ct
        -0x2dt
        -0x71t
        -0x2ft
        -0x1ct
        -0x1dt
        -0x71t
        -0x28t
        -0x1et
        -0x71t
        -0x30t
        -0x1dt
        -0x71t
        -0x6ct
        -0x2dt
        -0x59t
        -0x54t
        -0x58t
    .end array-data
.end method

.method public static A07(Ljava/io/Closeable;)V
    .locals 0

    .line 67954
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67955
    :catch_0
    return-void
.end method
