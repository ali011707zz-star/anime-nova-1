.class public final Lcom/facebook/ads/redexgen/X/Mg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mf;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/kN;

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Mf;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/kL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1400
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nQDli3B322dNyuNUEmcA1lNjVYYmcThQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JG8wfEU3nZ2EADYXO0uZDMHFqmVSkpWr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8K0NmfCVVugnhGVgpCD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5JHmUKWu4ei3dzUY0lNr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xKwnuhTKVDH3YhaAiUGpqwLltg47C3CG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jcwv8MY0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vBOLiuiZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hny3hth3cGmNH4IG9ndqfAmzri4VXjHL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mg;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mg;->A01()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 52284
    sget-object v0, Lcom/facebook/ads/redexgen/X/kN;->A03:Lcom/facebook/ads/redexgen/X/kN;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Mg;-><init>(ILjava/lang/String;Lcom/facebook/ads/redexgen/X/kN;)V

    .line 52285
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/facebook/ads/redexgen/X/kN;)V
    .locals 1

    .line 52286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52287
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    .line 52288
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    .line 52289
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    .line 52290
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    .line 52291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    .line 52292
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mg;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2f

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
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mg;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        -0x39t
        -0x3et
        0x73t
        -0x64t
        -0x46t
        -0x44t
        -0x3ft
        -0x42t
        -0x43t
        -0x64t
        -0x38t
        -0x39t
        -0x33t
        -0x42t
        -0x39t
        -0x33t
        -0x39t
        -0x1et
        -0x16t
        -0x13t
        -0x1at
        -0x1bt
        -0x5ft
        -0xbt
        -0x10t
        -0x5ft
        -0xdt
        -0x1at
        -0x11t
        -0x1et
        -0x12t
        -0x1at
        -0x5ft
    .end array-data
.end method


# virtual methods
.method public final A02(JJ)J
    .locals 10

    .line 52293
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 52294
    cmp-long v0, p3, v1

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 52295
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Mg;->A04(JJ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v5

    .line 52296
    .local v0, "span":Lcom/facebook/ads/redexgen/X/kL;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/MZ;->A03()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52297
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/MZ;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_2
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    neg-long v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    goto :goto_2

    .line 52298
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 52299
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 52300
    :cond_3
    add-long v8, p1, p3

    .line 52301
    .local v4, "queryEndPosition":J
    cmp-long v0, v8, v1

    if-gez v0, :cond_4

    .line 52302
    const-wide v8, 0x7fffffffffffffffL

    .line 52303
    :cond_4
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    add-long/2addr v2, v0

    .line 52304
    .local v2, "currentEndPosition":J
    cmp-long v0, v2, v8

    if-gez v0, :cond_7

    .line 52305
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Mg;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/Mg;->A06:[Ljava/lang/String;

    const-string v1, "31viDRwdD8ErVcI5dXS"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "q1k4diPGE3D0s4ujqDJA"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-virtual {v7, v5, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/kL;

    .line 52306
    .local v6, "next":Lcom/facebook/ads/redexgen/X/kL;
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 52307
    :cond_7
    :goto_3
    sub-long/2addr v2, p1

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 52308
    :cond_8
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v4, v5, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 52309
    cmp-long v0, v2, v8

    if-ltz v0, :cond_6

    goto :goto_3
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/kN;
    .locals 1

    .line 52310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    return-object v0
.end method

.method public final A04(JJ)Lcom/facebook/ads/redexgen/X/kL;
    .locals 6

    .line 52311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/kL;->A03(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v5

    .line 52312
    .local v0, "lookupSpan":Lcom/facebook/ads/redexgen/X/kL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/kL;

    .line 52313
    .local v1, "floorSpan":Lcom/facebook/ads/redexgen/X/kL;
    if-eqz v4, :cond_0

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 52314
    return-object v4

    .line 52315
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kL;

    .line 52316
    .local v2, "ceilSpan":Lcom/facebook/ads/redexgen/X/kL;
    if-eqz v0, :cond_1

    .line 52317
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    sub-long/2addr v1, p1

    .line 52318
    .local v3, "holeLength":J
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_2

    :goto_0
    move-wide p3, v1

    .line 52319
    .end local v3    # "holeLength":J
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/kL;->A04(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    return-object v0

    .line 52320
    :cond_2
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/kL;JZ)Lcom/facebook/ads/redexgen/X/kL;
    .locals 11

    .line 52321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 52322
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 52323
    .local v0, "file":Ljava/io/File;
    move-wide v9, p2

    if-eqz p4, :cond_0

    .line 52324
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 52325
    .local v1, "directory":Ljava/io/File;
    iget-wide v7, p1, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    .line 52326
    .local v8, "position":J
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/kL;->A05(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v5

    .line 52327
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52328
    move-object v4, v5

    .line 52329
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "newFile":Ljava/io/File;
    .end local v8    # "position":J
    :cond_0
    :goto_0
    invoke-virtual {p1, v4, v9, v10}, Lcom/facebook/ads/redexgen/X/kL;->A09(Ljava/io/File;J)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v1

    .line 52330
    .local v1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/kL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 52331
    return-object v1

    .line 52332
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mg;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mg;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    const/16 v1, 0xd

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mg;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A06()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/kL;",
            ">;"
        }
    .end annotation

    .line 52333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final A07(J)V
    .locals 4

    .line 52334
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 52335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mf;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Mf;->A01:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 52336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52337
    return-void

    .line 52338
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52339
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/kL;)V
    .locals 1

    .line 52340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 52341
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 52342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 52343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final A0B(JJ)Z
    .locals 2

    .line 52344
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 52345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Mf;->A00(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52346
    const/4 v0, 0x1

    return v0

    .line 52347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52348
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C(JJ)Z
    .locals 2

    .line 52349
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 52350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Mf;->A01(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52351
    const/4 v0, 0x0

    return v0

    .line 52352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52353
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A03:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Mf;-><init>(JJ)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52354
    const/4 v0, 0x1

    return v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/MZ;)Z
    .locals 4

    .line 52355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52356
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 52357
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 52358
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 52359
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mg;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mg;->A06:[Ljava/lang/String;

    const-string v1, "U4uu0ltzeeg5QMm1KwS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "VtFGErd1YdVsfyUNL3Po"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Ml;)Z
    .locals 2

    .line 52360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    .line 52361
    .local v0, "oldMetadata":Lcom/facebook/ads/redexgen/X/kN;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/kN;->A05(Lcom/facebook/ads/redexgen/X/Ml;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    .line 52362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/kN;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 52363
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 52364
    return v3

    .line 52365
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 52366
    .end local v2
    :cond_1
    return v2

    .line 52367
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Mg;

    .line 52368
    .local v2, "that":Lcom/facebook/ads/redexgen/X/Mg;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    .line 52369
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A04:Ljava/util/TreeSet;

    .line 52370
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    .line 52371
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/kN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52372
    :goto_0
    return v3

    .line 52373
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 52374
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    .line 52375
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 52376
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mg;->A00:Lcom/facebook/ads/redexgen/X/kN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kN;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 52377
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
