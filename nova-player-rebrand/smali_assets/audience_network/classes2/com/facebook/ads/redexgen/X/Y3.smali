.class public final Lcom/facebook/ads/redexgen/X/Y3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Uc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Y8;,
        Lcom/facebook/ads/redexgen/X/Ug;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Uc<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UU;

.field public A01:Lcom/facebook/ads/redexgen/X/UU;

.field public A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Y3<",
            "TT;>.RecordFileBasedFetch;>;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/UT;

.field public final A05:Lcom/facebook/ads/redexgen/X/Uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2416
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EKA8QeB4steRJ5RPBpFUjw3mjvi5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fve4ITv79qbm2xvzEK1yqXI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ABPapESs8CyLRtVNwfFPA7A05iROvZsV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0Lyphf8QRYP2FOEDF4CKVyWqrMlG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sjHSRvprFPL1Hzs2shXil"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0UuY0i89chpuUt8804PTKlfzEuvvqf4a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FkeetCIpWmPLoPieiedf1X3IWnyHYH7Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bw9eqk6z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y3;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y3;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UZ;Lcom/facebook/ads/redexgen/X/Uh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73389
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73390
    const/16 v2, 0x203

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/UZ;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uj;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Uj;-><init>(Lcom/facebook/ads/redexgen/X/UZ;Lcom/facebook/ads/redexgen/X/Uh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73391
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UZ;->A05()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x1fd

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/UT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UT;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A04:Lcom/facebook/ads/redexgen/X/UT;

    .line 73392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A04:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->A03()Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/util/List;

    .line 73394
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Y3;->A05(Lcom/facebook/ads/redexgen/X/Uh;)V

    .line 73395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 73396
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y3;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x207

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y3;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y3;->A07:[Ljava/lang/String;

    const-string v1, "G0nCZJj0prSQWtMWq2fjymNjpmI3wJ1o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hmxAaa3VGXWJOtMylrC9mnhyviZ0JnjG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Y3;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x66t
        0x69t
        0x27t
        0x68t
        0x69t
        0x6bt
        0x7et
        0x27t
        0x63t
        0x62t
        0x6bt
        0x62t
        0x73t
        0x62t
        0x27t
        0x64t
        0x72t
        0x75t
        0x74t
        0x68t
        0x75t
        0x74t
        0x27t
        0x77t
        0x68t
        0x6et
        0x69t
        0x73t
        0x6et
        0x69t
        0x60t
        0x27t
        0x66t
        0x73t
        0x27t
        0x73t
        0x6ft
        0x62t
        0x27t
        0x63t
        0x66t
        0x73t
        0x66t
        0x65t
        0x66t
        0x74t
        0x62t
        0x27t
        0x74t
        0x73t
        0x66t
        0x75t
        0x73t
        0x57t
        0x61t
        0x66t
        0x67t
        0x7bt
        0x66t
        0x34t
        0x64t
        0x7bt
        0x67t
        0x7dt
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x34t
        0x7dt
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x38t
        0x34t
        0x75t
        0x7at
        0x70t
        0x34t
        0x66t
        0x71t
        0x77t
        0x7bt
        0x66t
        0x70t
        0x34t
        0x72t
        0x7dt
        0x78t
        0x71t
        0x34t
        0x67t
        0x71t
        0x65t
        0x61t
        0x71t
        0x7at
        0x77t
        0x71t
        0x34t
        0x67t
        0x60t
        0x75t
        0x66t
        0x60t
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x2et
        0x34t
        0x70t
        0x75t
        0x60t
        0x75t
        0x34t
        0x7ct
        0x75t
        0x67t
        0x34t
        0x64t
        0x66t
        0x7bt
        0x76t
        0x75t
        0x76t
        0x78t
        0x6dt
        0x34t
        0x76t
        0x71t
        0x71t
        0x7at
        0x34t
        0x78t
        0x7bt
        0x67t
        0x60t
        0x1ct
        0x2at
        0x2dt
        0x2ct
        0x30t
        0x2dt
        0x7ft
        0x2ft
        0x30t
        0x2ct
        0x36t
        0x2bt
        0x36t
        0x30t
        0x31t
        0x7ft
        0x36t
        0x2ct
        0x7ft
        0x3et
        0x2bt
        0x7ft
        0x77t
        0x7at
        0x3bt
        0x73t
        0x7at
        0x3bt
        0x76t
        0x73t
        0x7ft
        0x3dt
        0x2at
        0x2bt
        0x7ft
        0x2dt
        0x3at
        0x3ct
        0x30t
        0x2dt
        0x3bt
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x2ct
        0x3at
        0x2et
        0x2at
        0x3at
        0x31t
        0x3ct
        0x3at
        0x7ft
        0x30t
        0x31t
        0x33t
        0x26t
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x7at
        0x3bt
        0x65t
        0x7ft
        0x3bt
        0x3et
        0x2bt
        0x3et
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x2ft
        0x2dt
        0x30t
        0x3dt
        0x3et
        0x3dt
        0x33t
        0x26t
        0x7ft
        0x3dt
        0x3at
        0x3at
        0x31t
        0x7ft
        0x33t
        0x30t
        0x2ct
        0x2bt
        0x61t
        0x46t
        0x4et
        0x4bt
        0x42t
        0x43t
        0x7t
        0x53t
        0x48t
        0x7t
        0x46t
        0x43t
        0x43t
        0x7t
        0x43t
        0x46t
        0x53t
        0x46t
        0x7t
        0x53t
        0x48t
        0x7t
        0x4bt
        0x48t
        0x40t
        0x8t
        0x2ft
        0x27t
        0x22t
        0x2bt
        0x2at
        0x6et
        0x3at
        0x21t
        0x6et
        0x2dt
        0x22t
        0x2bt
        0x2ft
        0x3ct
        0x6et
        0x2at
        0x2ft
        0x3at
        0x2ft
        0x2ct
        0x2ft
        0x3dt
        0x2bt
        0xbt
        0x2ct
        0x24t
        0x21t
        0x28t
        0x29t
        0x6dt
        0x39t
        0x22t
        0x6dt
        0x2bt
        0x28t
        0x39t
        0x2et
        0x25t
        0x6dt
        0x29t
        0x2ct
        0x39t
        0x2ct
        0x6dt
        0x2bt
        0x3ft
        0x22t
        0x20t
        0x6dt
        0x21t
        0x22t
        0x2at
        0x66t
        0x41t
        0x49t
        0x4ct
        0x45t
        0x44t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x47t
        0x45t
        0x54t
        0x0t
        0x52t
        0x45t
        0x43t
        0x4ft
        0x52t
        0x44t
        0x0t
        0x43t
        0x4ft
        0x55t
        0x4et
        0x54t
        0x49t
        0x6et
        0x66t
        0x63t
        0x6at
        0x6bt
        0x2ft
        0x7bt
        0x60t
        0x2ft
        0x7at
        0x7ft
        0x6bt
        0x6et
        0x7bt
        0x6at
        0x2ft
        0x69t
        0x66t
        0x63t
        0x6at
        0x2ft
        0x7ct
        0x6at
        0x7et
        0x7at
        0x6at
        0x61t
        0x6ct
        0x6at
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x24t
        0xbt
        0xet
        0x7t
        0x20t
        0x3t
        0x11t
        0x7t
        0x6t
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x26t
        0x3t
        0x16t
        0x3t
        0x0t
        0x3t
        0x11t
        0x7t
        0x42t
        0x1t
        0xet
        0xdt
        0x11t
        0x7t
        0x6t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x63t
        0x4ct
        0x49t
        0x40t
        0x67t
        0x44t
        0x56t
        0x40t
        0x41t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x61t
        0x44t
        0x51t
        0x44t
        0x47t
        0x44t
        0x56t
        0x40t
        0x5t
        0x4ct
        0x56t
        0x5t
        0x46t
        0x49t
        0x4at
        0x56t
        0x40t
        0x41t
        0x77t
        0x4ct
        0x49t
        0x4ct
        0x4dt
        0x55t
        0x4ct
        0x2t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x64t
        0x4bt
        0x4et
        0x47t
        0x60t
        0x43t
        0x51t
        0x47t
        0x46t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x66t
        0x43t
        0x56t
        0x43t
        0x40t
        0x43t
        0x51t
        0x47t
        0x2t
        0x44t
        0x47t
        0x56t
        0x41t
        0x4at
        0x46t
        0x50t
        0x57t
        0x56t
        0x4at
        0x57t
        0x1at
        0x1ft
        0xat
        0x1ft
    .end array-data
.end method

.method private A02(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73397
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A04:Lcom/facebook/ads/redexgen/X/UT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A04(Lcom/facebook/ads/redexgen/X/UU;)V

    .line 73399
    return-void
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/Y8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Y3<",
            "TT;>.RecordFileBasedFetch;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local p1, "fetch":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 73400
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    if-nez v0, :cond_6

    .line 73401
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Y3;->A06(Lcom/facebook/ads/redexgen/X/Y8;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73402
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A6X()I

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73403
    monitor-exit p0

    return-void

    .line 73404
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A00()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A02:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A04(Lcom/facebook/ads/redexgen/X/UU;)I

    move-result v0

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73405
    :try_start_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ug;

    .line 73406
    .local v1, "location":Lcom/facebook/ads/redexgen/X/Ug;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A07()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73407
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A0D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A02(II)V

    goto :goto_0

    .line 73409
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .restart local v1    # "location":Lcom/facebook/ads/redexgen/X/Ug;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73410
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A00()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    .line 73411
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A02(II)V

    .line 73412
    .end local v1    # "location":Lcom/facebook/ads/redexgen/X/Ug;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A04(Lcom/facebook/ads/redexgen/X/UU;)I

    move-result v0

    if-gez v0, :cond_3

    .line 73413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73414
    :cond_3
    monitor-exit p0

    return-void

    .line 73415
    :catch_0
    move-exception v3

    .line 73416
    :try_start_3
    const/16 v2, 0x169

    const/16 v1, 0x1e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73417
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73418
    :cond_5
    const/16 v2, 0x1d2

    const/16 v1, 0x2b

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73419
    :cond_6
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73420
    .end local p1    # "fetch":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Y3;Lcom/facebook/ads/redexgen/X/Y8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .line 73421
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Y3;->A03(Lcom/facebook/ads/redexgen/X/Y8;)V

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Uh;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73422
    .local v11, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73423
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v0

    const/4 v5, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    .line 73424
    .local v0, "recordSequenceStart":Lcom/facebook/ads/redexgen/X/UU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UU;->A04(Lcom/facebook/ads/redexgen/X/UU;)I

    move-result v0

    const/4 v4, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-lez v0, :cond_1

    .line 73425
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73426
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73427
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 73428
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73429
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v9, v6, v5

    aput-object v8, v6, v10

    aput-object v2, v6, v11

    aput-object v1, v6, v4

    .line 73430
    const/16 v2, 0x36

    const/16 v1, 0x66

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73431
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Uh;->AIc(Ljava/lang/String;)V

    .line 73432
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73433
    :cond_0
    return-void

    .line 73434
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 73435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A0D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73436
    new-instance v3, Lcom/facebook/ads/redexgen/X/UU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v0

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    goto :goto_0

    .line 73437
    :cond_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73438
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73439
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73440
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v1, v6, v10

    aput-object v0, v6, v11

    .line 73441
    const/16 v2, 0x9c

    const/16 v1, 0x65

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73442
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Uh;->AIc(Ljava/lang/String;)V

    .line 73443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    .line 73445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A07()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    .line 73446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A04:Lcom/facebook/ads/redexgen/X/UT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A04(Lcom/facebook/ads/redexgen/X/UU;)V

    goto :goto_0
.end method

.method private declared-synchronized A06(Lcom/facebook/ads/redexgen/X/Y8;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Y3<",
            "TT;>.RecordFileBasedFetch;)Z"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local p2, "fetch":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 73447
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 73448
    .local v0, "removed":Z
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73449
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 73450
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A6X()I

    move-result v0

    if-lez v0, :cond_1

    .line 73451
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A01()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ug;->A02:Lcom/facebook/ads/redexgen/X/UU;

    .line 73452
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A01()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A05(I)Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 73453
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73454
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y8;->A00()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A02:Lcom/facebook/ads/redexgen/X/UU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73455
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 73456
    .end local v0    # "removed":Z
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Y3;Lcom/facebook/ads/redexgen/X/Y8;)Z
    .locals 0

    .line 73457
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Y3;->A06(Lcom/facebook/ads/redexgen/X/Y8;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized A6W([B[I)Lcom/facebook/ads/redexgen/X/Ub;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .local v11, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 73458
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    if-nez v0, :cond_5

    .line 73459
    const/4 v9, 0x0

    .line 73460
    .local v0, "storageOffset":I
    const/4 v11, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73461
    .local v1, "countsOffset":I
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73462
    .local v2, "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    const/4 v3, 0x1

    .line 73463
    .local v3, "mayHaveMoreData":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 73464
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 73465
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v7

    .line 73466
    move-object v10, p2

    move-object v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Uj;->A0A(II[BI[II)Lcom/facebook/ads/redexgen/X/UX;

    move-result-object v5

    .line 73467
    .local v4, "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/UX;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A00()I

    move-result v2

    .line 73468
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 73469
    .local v5, "fetchedRecords":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A02()I

    move-result v0

    add-int/2addr v9, v0

    .line 73470
    add-int/2addr v11, v2

    .line 73471
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A03()Lcom/facebook/ads/redexgen/X/UV;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/UV;

    if-ne v1, v0, :cond_0

    .line 73472
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73473
    .end local v11    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A03()Lcom/facebook/ads/redexgen/X/UV;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/UV;

    if-ne v1, v0, :cond_1

    .line 73474
    .end local v4    # "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/UX;
    .end local v5    # "fetchedRecords":I
    :goto_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Y8;

    invoke-direct {v2, p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Y8;-><init>(Lcom/facebook/ads/redexgen/X/Y3;Ljava/util/List;Z)V

    .line 73475
    .local v4, "fetch":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73476
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73477
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Y8;->A01()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ug;->A02:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Y8;->A01()Lcom/facebook/ads/redexgen/X/Ug;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A05(I)Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    goto :goto_2

    .line 73478
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UW;->A03()Lcom/facebook/ads/redexgen/X/UV;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/UV;->A05:Lcom/facebook/ads/redexgen/X/UV;

    if-ne v1, v0, :cond_3

    .line 73479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 73480
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_2

    .line 73481
    const/4 v3, 0x0

    .line 73482
    goto :goto_1

    .line 73483
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    goto/16 :goto_0

    .line 73484
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/UU;->A05(I)Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/UU;

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73485
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    .line 73486
    .end local v0    # "storageOffset":I
    .end local v1    # "countsOffset":I
    .end local v2    # "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    .end local v3    # "mayHaveMoreData":Z
    :catch_0
    move-exception v3

    .line 73487
    :try_start_2
    const/16 v2, 0x132

    const/16 v1, 0x1d

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73488
    :cond_5
    const/16 v2, 0x187

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73489
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Y3;
    .end local p1    # null:[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8s()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 73490
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73491
    .local v0, "count":I
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A09()I

    move-result v2

    .line 73492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 73493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Lcom/facebook/ads/redexgen/X/UU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UU;->A03()I

    move-result v0

    sub-int/2addr v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73494
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 73495
    :catch_0
    move-exception v3

    .line 73496
    :try_start_2
    const/16 v2, 0x14f

    const/16 v1, 0x1a

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73497
    :cond_1
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AKH([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .local v3, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 73499
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73500
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Uj;->A0C([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73501
    monitor-exit p0

    return-void

    .line 73502
    .end local v3    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catch_0
    move-exception v3

    .line 73503
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x19

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73504
    :cond_0
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73505
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Y3;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .local v3, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 73506
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A0B()V

    .line 73507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A02(II)V

    .line 73508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73509
    monitor-exit p0

    return-void

    .line 73510
    :catch_0
    move-exception v3

    .line 73511
    :try_start_1
    const/16 v2, 0x11a

    const/16 v1, 0x18

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73512
    .end local v3    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    .end local v0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 73513
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73514
    monitor-exit p0

    return-void

    .line 73515
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A03:Z

    .line 73516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A04:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->close()V

    .line 73518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A05:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uj;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73519
    monitor-exit p0

    return-void

    .line 73520
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Y3;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
