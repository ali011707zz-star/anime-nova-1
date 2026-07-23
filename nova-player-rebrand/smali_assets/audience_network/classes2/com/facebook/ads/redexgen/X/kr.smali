.class public abstract Lcom/facebook/ads/redexgen/X/kr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lg;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3168
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4DAkvqHjWkdxtsENcWrDGdSG98sD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CPIXB1o90MQiuPbP92eKhpVYkKPF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DGtgBZoK51CqJxDDYeEGQpaHQi4s0SFq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q2rpceA7xA4MlkiWDdlnsMZ7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2r2XHRwXRNnyuB7hHeEjqCG0ly7MmAbM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cNy8DIpXdd1zCdtjTt40y0Ha9veHBSdV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PaSGUfk9UsvkFfO4ZJ4PfqMh8E4Xd1Uq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2zViWo7DbInVze1qYqueOVIk3x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kr;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kr;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/kr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kr;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91609
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kr;->A00:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private A02(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 91610
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v3, 0x0

    .line 91611
    .local v0, "totalSize":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 91612
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 91613
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 91614
    :cond_0
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kr;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kr;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kr;->A02:[Ljava/lang/String;

    const-string v1, "APyHxukBWXIF2vPxbwif9xgIaD7vOq8q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ZPgmzBD45Cog9pfLf6p2hYnwtjTNY0Gq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x38

    int-to-byte p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/kr;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kr;->A02:[Ljava/lang/String;

    const-string v1, "glcddFxLpqFQC46fw4icMEpE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kr;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x73t
        -0x2dt
        -0x24t
        -0x21t
        -0x73t
        -0x1ft
        -0x21t
        -0x2at
        -0x26t
        -0x26t
        -0x2at
        -0x25t
        -0x2ct
        -0x73t
        -0x30t
        -0x32t
        -0x30t
        -0x2bt
        -0x2et
        0x7ft
        -0x38t
        -0x2et
        0x7ft
        -0x3dt
        -0x3ct
        -0x35t
        -0x3ct
        -0x2dt
        -0x3ct
        -0x3dt
        0x7ft
        -0x3ft
        -0x3ct
        -0x3et
        -0x40t
        -0x2ct
        -0x2et
        -0x3ct
        0x7ft
        -0x38t
        -0x2dt
        0x7ft
        -0x3ct
        -0x29t
        -0x3et
        -0x3ct
        -0x3ct
        -0x3dt
        -0x2et
        0x7ft
        -0x3et
        -0x40t
        -0x3et
        -0x39t
        -0x3ct
        0x7ft
        -0x35t
        -0x38t
        -0x34t
        -0x38t
        -0x2dt
        -0x65t
        -0x47t
        -0x45t
        -0x40t
        -0x43t
        0x78t
        -0x42t
        -0x3ft
        -0x3ct
        -0x43t
        0x78t
        -0x27t
        0x6t
        0x6t
        0x3t
        0x6t
        -0x4ct
        -0x8t
        -0x7t
        0x0t
        -0x7t
        0x8t
        -0x3t
        0x2t
        -0x5t
        -0x4ct
        -0x6t
        -0x3t
        0x0t
        -0x7t
        -0x4ct
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/kr;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91615
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kr;->A06(Ljava/io/File;)V

    return-void
.end method

.method private A06(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91616
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A03(Ljava/io/File;)V

    .line 91617
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lf;->A01(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 91618
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kr;->A07(Ljava/util/List;)V

    .line 91619
    return-void
.end method

.method private A07(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 91620
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kr;->A02(Ljava/util/List;)J

    move-result-wide v1

    .line 91621
    .local v0, "totalSize":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 91622
    .local v2, "totalCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 91623
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p0, v8, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/kr;->A08(Ljava/io/File;JI)Z

    move-result v0

    .line 91624
    .local v5, "accepted":Z
    if-nez v0, :cond_0

    .line 91625
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 91626
    .local v6, "fileSize":J
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    .line 91627
    .local v8, "deleted":Z
    if-eqz v0, :cond_1

    .line 91628
    add-int/lit8 v6, v6, -0x1

    .line 91629
    sub-long/2addr v1, v3

    .line 91630
    sget-object v7, Lcom/facebook/ads/redexgen/X/kr;->A03:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3d

    const/16 v3, 0xb

    const/16 v0, 0x20

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x13

    const/16 v3, 0x2a

    const/16 v0, 0x27

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91631
    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/kr;->A03:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x48

    const/16 v3, 0x14

    const/16 v0, 0x5c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x13

    const/16 v0, 0x35

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91632
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract A08(Ljava/io/File;JI)Z
.end method

.method public AKR(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kr;->A00:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(Lcom/facebook/ads/redexgen/X/kr;Ljava/io/File;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 91634
    return-void
.end method
