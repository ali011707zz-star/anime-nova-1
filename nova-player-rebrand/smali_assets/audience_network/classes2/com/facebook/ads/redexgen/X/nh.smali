.class public Lcom/facebook/ads/redexgen/X/nh;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nf;,
        Lcom/facebook/ads/redexgen/X/nd;,
        Lcom/facebook/ads/redexgen/X/ng;,
        Lcom/facebook/ads/redexgen/X/Bi;,
        Lcom/facebook/ads/redexgen/X/ne;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/Object;


# instance fields
.field public transient A00:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A01:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A02:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A03:I

.field public transient A04:I

.field public transient A05:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A06:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A07:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A08:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3305
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wSivjbfpZ5vyyNQvPGO2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "feAeK30V825ODXthr2nXiZ2IyDp7foTM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DkUlp4YVWOkxqgis7dBpeo68CZmBo3n0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aa93WRLI7l2jdXj6upMcNohuPuXZSHnj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yd6MpWWB34WJL2xwsTp1Hrf9QPnPIJjU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QxuCDFa1e2lEwJ6Nl0AGtIVp0Ykbd3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6Mqvrbexx8eO9W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SxE34IM9tKvZCcEi8I123n5xI40gl8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nh;->A0M()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/nh;->A0B:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101237
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 101238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0l(I)V

    .line 101239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .line 101240
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 101241
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0l(I)V

    .line 101242
    return-void
.end method

.method private A00()I
    .locals 2

    .line 101243
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private A01(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 101244
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private A02(IIII)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldMask",
            "newCapacity",
            "targetHash",
            "targetEntryIndex"
        }
    .end annotation

    .line 101245
    .local p2, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object v9, p0

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/nk;->A07(I)Ljava/lang/Object;

    move-result-object v8

    .line 101246
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v10, p2, -0x1

    .line 101247
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 101248
    and-int/2addr p3, v10

    add-int/lit8 v0, p4, 0x1

    invoke-static {v8, p3, v0}, Lcom/facebook/ads/redexgen/X/nk;->A0B(Ljava/lang/Object;II)V

    .line 101249
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v11

    .line 101250
    .local v4, "oldTable":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v7

    .line 101251
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "oldTableIndex":I
    :goto_0
    if-gt v6, p1, :cond_2

    .line 101252
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/nk;->A05(Ljava/lang/Object;I)I

    move-result v5

    .line 101253
    .local v7, "oldNext":I
    :goto_1
    if-eqz v5, :cond_1

    .line 101254
    add-int/lit8 v4, v5, -0x1

    .line 101255
    .local v8, "entryIndex":I
    aget v3, v7, v4

    .line 101256
    .local v9, "oldEntry":I
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/nk;->A02(II)I

    move-result v2

    or-int/2addr v2, v6

    .line 101257
    .local v10, "hash":I
    and-int v1, v2, v10

    .line 101258
    .local v11, "newTableIndex":I
    invoke-static {v8, v1}, Lcom/facebook/ads/redexgen/X/nk;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 101259
    .local p0, "newNext":I
    invoke-static {v8, v1, v5}, Lcom/facebook/ads/redexgen/X/nk;->A0B(Ljava/lang/Object;II)V

    .line 101260
    invoke-static {v2, v0, v10}, Lcom/facebook/ads/redexgen/X/nk;->A04(III)I

    move-result v0

    aput v0, v7, v4

    .line 101261
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/nk;->A03(II)I

    move-result v5

    .line 101262
    .end local v8    # "entryIndex":I
    .end local v9    # "oldEntry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local p0    # "newNext":I
    goto :goto_1

    .line 101263
    .end local v7    # "oldNext":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101264
    .end local v6    # "oldTableIndex":I
    :cond_2
    iput-object v8, v9, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    .line 101265
    invoke-direct {p0, v10}, Lcom/facebook/ads/redexgen/X/nh;->A0O(I)V

    .line 101266
    return v10
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/nh;)I
    .locals 0

    .line 101267
    iget p0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/nh;)I
    .locals 2

    .line 101268
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    return v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/nh;)I
    .locals 0

    .line 101269
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()I

    move-result p0

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/nh;Ljava/lang/Object;)I
    .locals 0

    .line 101270
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A07(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private A07(Ljava/lang/Object;)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 101271
    .local p2, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    .line 101272
    return v5

    .line 101273
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/oI;->A02(Ljava/lang/Object;)I

    move-result v2

    .line 101274
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()I

    move-result v4

    .line 101275
    .local v2, "mask":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v1

    and-int v0, v2, v4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nk;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 101276
    .local v3, "next":I
    if-nez v0, :cond_1

    .line 101277
    return v5

    .line 101278
    :cond_1
    invoke-static {v2, v4}, Lcom/facebook/ads/redexgen/X/nk;->A02(II)I

    move-result v3

    .line 101279
    .local v4, "hashPrefix":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 101280
    .local v5, "entryIndex":I
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A01(I)I

    move-result v1

    .line 101281
    .local p0, "entry":I
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/nk;->A02(II)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 101282
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A0E(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101283
    return v2

    .line 101284
    :cond_3
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/nk;->A03(II)I

    move-result v0

    .line 101285
    .end local v5    # "entryIndex":I
    .end local p0    # "entry":I
    if-nez v0, :cond_2

    .line 101286
    return v5
.end method

.method private final A08()Lcom/facebook/ads/redexgen/X/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 101287
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/nd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nd;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method private final A09()Lcom/facebook/ads/redexgen/X/nf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 101288
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/nf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nf;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method private final A0A()Lcom/facebook/ads/redexgen/X/ng;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 101289
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/ng;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ng;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method public static A0B(I)Lcom/facebook/ads/redexgen/X/nh;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/facebook/ads/redexgen/X/nh<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101290
    new-instance v0, Lcom/facebook/ads/redexgen/X/nh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nh;-><init>(I)V

    return-object v0
.end method

.method private A0C()Ljava/lang/Object;
    .locals 1

    .line 101291
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0D()Ljava/lang/Object;
    .locals 1

    .line 101292
    sget-object v0, Lcom/facebook/ads/redexgen/X/nh;->A0B:Ljava/lang/Object;

    return-object v0
.end method

.method private A0E(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 101293
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0F(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 101294
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/nh;)Ljava/lang/Object;
    .locals 0

    .line 101295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;
    .locals 0

    .line 101296
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0E(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;
    .locals 0

    .line 101297
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0F(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/nh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101298
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private A0K(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 101299
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101300
    sget-object v0, Lcom/facebook/ads/redexgen/X/nh;->A0B:Ljava/lang/Object;

    return-object v0

    .line 101301
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()I

    move-result v3

    .line 101302
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v4

    .line 101303
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v5

    .line 101304
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v6

    .line 101305
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/nk;->A06(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 101306
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 101307
    sget-object v3, Lcom/facebook/ads/redexgen/X/nh;->A0B:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "F8ZzCx46VEt3o6V5ZJCH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RA5kHayy5QpfLDjl1dNEtk1yryeED7Tz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 101308
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A0F(I)Ljava/lang/Object;

    move-result-object v1

    .line 101309
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/nh;->A0n(II)V

    .line 101310
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    .line 101311
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0j()V

    .line 101312
    return-object v1
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nh;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nh;->A09:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "IoFO5J0AFYg4y0jUjWJp7QnfwHFEsl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "MD8kR9gChUuO1ad3jnDINjX3f2IxRH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x12t
        0x1ft
        0x1ft
        0xet
        0x26t
        0x20t
        -0x33t
        0xet
        0x19t
        0x1ft
        0x12t
        0xet
        0x11t
        0x26t
        -0x33t
        0xet
        0x19t
        0x19t
        0x1ct
        0x10t
        0xet
        0x21t
        0x12t
        0x11t
        -0x77t
        -0x44t
        -0x4ct
        -0x57t
        -0x59t
        -0x48t
        -0x57t
        -0x58t
        0x64t
        -0x49t
        -0x53t
        -0x42t
        -0x57t
        0x64t
        -0x4ft
        -0x47t
        -0x49t
        -0x48t
        0x64t
        -0x5at
        -0x57t
        0x64t
        -0x7et
        -0x7ft
        0x64t
        0x74t
        -0x6ct
        -0x47t
        -0x3ft
        -0x54t
        -0x49t
        -0x4ct
        -0x51t
        0x6bt
        -0x42t
        -0x4ct
        -0x3bt
        -0x50t
        -0x7bt
        0x6bt
    .end array-data
.end method

.method private A0N(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    .line 101313
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v0

    array-length v2, v0

    .line 101314
    .local v0, "entriesSize":I
    if-le p1, v2, :cond_0

    .line 101315
    ushr-int/lit8 v1, v2, 0x1

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    or-int/2addr v1, v0

    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101316
    .local v1, "newCapacity":I
    if-eq v0, v2, :cond_0

    .line 101317
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0m(I)V

    .line 101318
    .end local v1    # "newCapacity":I
    :cond_0
    return-void
.end method

.method private A0O(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    .line 101319
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x20

    .line 101320
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101321
    const/16 v0, 0x1f

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/nk;->A04(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101322
    return-void
.end method

.method private A0P(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .line 101323
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v0

    aput p2, v0, p1

    .line 101324
    return-void
.end method

.method private A0Q(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 101325
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 101326
    return-void
.end method

.method private A0R(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 101327
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 101328
    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/nh;ILjava/lang/Object;)V
    .locals 0

    .line 101329
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/nh;->A0R(ILjava/lang/Object;)V

    return-void
.end method

.method private A0T()[I
    .locals 1

    .line 101330
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/nh;)[I
    .locals 0

    .line 101331
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object p0

    return-object p0
.end method

.method private A0V()[Ljava/lang/Object;
    .locals 1

    .line 101332
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A01:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private A0W()[Ljava/lang/Object;
    .locals 1

    .line 101333
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A02:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/nh;)[Ljava/lang/Object;
    .locals 0

    .line 101334
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/nh;)[Ljava/lang/Object;
    .locals 0

    .line 101335
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 101494
    .local v4, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 101495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 101496
    .local v0, "elementCount":I
    if-ltz v4, :cond_1

    .line 101497
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/nh;->A0l(I)V

    .line 101498
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 101499
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 101500
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 101501
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101502
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101503
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 101504
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0xe

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101513
    .local v3, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 101514
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 101515
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0d()Ljava/util/Iterator;

    move-result-object v4

    .line 101516
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "lZkXti1hHETGLNP2mJng"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UqMxjQlbiD6IC1mODYXJWocLTdBCXsJ0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 101517
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101518
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 101519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 101520
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 101521
    :cond_1
    return-void
.end method


# virtual methods
.method public A0Z()I
    .locals 4

    .line 101336
    .local v3, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0F(ZLjava/lang/Object;)V

    .line 101337
    iget v2, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101338
    .local v0, "expectedSize":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/nk;->A01(I)I

    move-result v1

    .line 101339
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/nk;->A07(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    .line 101340
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0O(I)V

    .line 101341
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:[I

    .line 101342
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A01:[Ljava/lang/Object;

    .line 101343
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A02:[Ljava/lang/Object;

    .line 101344
    return v2
.end method

.method public A0a()I
    .locals 1

    .line 101345
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0b(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryIndex"
        }
    .end annotation

    .line 101346
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v1, p1, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public A0c(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indexBeforeRemove",
            "indexRemoved"
        }
    .end annotation

    .line 101347
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public final A0d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 101348
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101349
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101350
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 101351
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bl;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method public final A0e()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 101352
    .local v2, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101353
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 101354
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "GopoyTSNvP2uUGwCw8coQru7y5edTQ0w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101355
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bm;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method public final A0f()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 101356
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101357
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101358
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 101359
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bj;-><init>(Lcom/facebook/ads/redexgen/X/nh;)V

    return-object v0
.end method

.method public A0g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101360
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0i(I)Ljava/util/Map;

    move-result-object v3

    .line 101361
    .local v0, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0a()I

    move-result v2

    .local v1, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 101362
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A0E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101363
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/nh;->A0b(I)I

    move-result v2

    goto :goto_0

    .line 101364
    .end local v1    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    .line 101365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:[I

    .line 101366
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A01:[Ljava/lang/Object;

    .line 101367
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A02:[Ljava/lang/Object;

    .line 101368
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0j()V

    .line 101369
    return-object v3
.end method

.method public final A0h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 101370
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 101371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 101372
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0i(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tableSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101373
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method public final A0j()V
    .locals 1

    .line 101374
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101375
    return-void
.end method

.method public A0k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 101376
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method public A0l(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .line 101377
    .local v3, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v4, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x18

    const/16 v1, 0x1a

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0E(ZLjava/lang/Object;)V

    .line 101378
    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/As;->A01(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101379
    return-void

    .line 101380
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public A0m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    .line 101381
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:[I

    .line 101382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A01:[Ljava/lang/Object;

    .line 101383
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A02:[Ljava/lang/Object;

    .line 101384
    return-void
.end method

.method public A0n(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstIndex",
            "mask"
        }
    .end annotation

    .line 101385
    .local p3, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v3

    .line 101386
    .local v0, "table":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v8

    .line 101387
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v7

    .line 101388
    .local v2, "keys":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v2

    .line 101389
    .local v3, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 101390
    .local v4, "srcIndex":I
    const/4 v6, 0x0

    const/4 v1, 0x0

    if-ge p1, v4, :cond_1

    .line 101391
    aget-object v5, v7, v4

    .line 101392
    .local v7, "key":Ljava/lang/Object;
    aput-object v5, v7, p1

    .line 101393
    aget-object v0, v2, v4

    aput-object v0, v2, p1

    .line 101394
    aput-object v1, v7, v4

    .line 101395
    aput-object v1, v2, v4

    .line 101396
    aget v0, v8, v4

    aput v0, v8, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 101397
    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "JpifJf2kbZdDbZEcWvjQntDjOJA2HcxY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput v6, v8, v4

    .line 101398
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/oI;->A02(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 101399
    .local v8, "tableIndex":I
    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/nk;->A05(Ljava/lang/Object;I)I

    move-result v2

    .line 101400
    .local v5, "next":I
    add-int/lit8 v0, v4, 0x1

    .line 101401
    .local p0, "srcNext":I
    if-ne v2, v0, :cond_0

    .line 101402
    add-int/lit8 v0, p1, 0x1

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/nk;->A0B(Ljava/lang/Object;II)V

    .line 101403
    :goto_0
    return-void

    .line 101404
    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 101405
    .local v6, "entryIndex":I
    aget v1, v8, v4

    .line 101406
    .local p1, "entry":I
    invoke-static {v1, p2}, Lcom/facebook/ads/redexgen/X/nk;->A03(II)I

    move-result v2

    .line 101407
    if-ne v2, v0, :cond_0

    .line 101408
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/nk;->A04(III)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "ewyZpZbIi25h1LX0jZUdN0qrqZxWH2dV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput v3, v8, v4

    goto :goto_0

    .line 101409
    :cond_1
    aput-object v1, v7, p1

    .line 101410
    aput-object v1, v2, p1

    .line 101411
    aput v6, v8, p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0o(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entryIndex",
            "key",
            "value",
            "hash",
            "mask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 101412
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p4, v0, p5}, Lcom/facebook/ads/redexgen/X/nk;->A04(III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0P(II)V

    .line 101413
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/nh;->A0Q(ILjava/lang/Object;)V

    .line 101414
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/nh;->A0R(ILjava/lang/Object;)V

    .line 101415
    return-void
.end method

.method public final A0p()Z
    .locals 1

    .line 101416
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .line 101417
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101418
    return-void

    .line 101419
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0j()V

    .line 101420
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v5

    .line 101421
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz v5, :cond_1

    .line 101422
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v2

    const/4 v1, 0x3

    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A01(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A03:I

    .line 101423
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 101424
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/nh;->A05:Ljava/lang/Object;

    .line 101425
    iput v3, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    .line 101426
    :goto_0
    return-void

    .line 101427
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 101428
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 101429
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nk;->A0A(Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    .line 101430
    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "HEGfGjMW8cX3B6hZei5dHcacBQ1QHslD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    invoke-static {v1, v3, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 101431
    iput v3, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 101432
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101433
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A07(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 101434
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101435
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101436
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 101437
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    if-ge v1, v0, :cond_2

    .line 101438
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/nh;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101439
    const/4 v0, 0x1

    return v0

    .line 101440
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101441
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 101442
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A07:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A08()Lcom/facebook/ads/redexgen/X/nd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A07:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A07:Ljava/util/Set;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 101443
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101444
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101445
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101446
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A07(Ljava/lang/Object;)I

    move-result v1

    .line 101447
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 101448
    const/4 v0, 0x0

    return-object v0

    .line 101449
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/nh;->A0k(I)V

    .line 101450
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/nh;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 101451
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 101452
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A08:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A09()Lcom/facebook/ads/redexgen/X/nf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A08:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A08:Ljava/util/Set;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 101453
    .local p4, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p5, "key":Ljava/lang/Object;, "TK;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    move-object v3, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101454
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0Z()I

    .line 101455
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101456
    .local v9, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v12, p2

    move-object/from16 v11, p1

    if-eqz v0, :cond_1

    .line 101457
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101458
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0T()[I

    move-result-object v9

    .line 101459
    .local v10, "entries":[I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0V()[Ljava/lang/Object;

    move-result-object v8

    .line 101460
    .local v11, "keys":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0W()[Ljava/lang/Object;

    move-result-object v7

    .line 101461
    .local v12, "values":[Ljava/lang/Object;
    iget v10, v3, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    .line 101462
    .local v13, "newEntryIndex":I
    add-int/lit8 v4, v10, 0x1

    .line 101463
    .local v14, "newSize":I
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/oI;->A02(Ljava/lang/Object;)I

    move-result v13

    .line 101464
    .local p0, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()I

    move-result v14

    .line 101465
    .local v0, "mask":I
    and-int v2, v13, v14

    .line 101466
    .local v5, "tableIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/nk;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 101467
    .local v1, "next":I
    if-nez v0, :cond_4

    .line 101468
    if-le v4, v14, :cond_3

    .line 101469
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/nk;->A00(I)I

    move-result v0

    invoke-direct {v3, v14, v0, v13, v10}, Lcom/facebook/ads/redexgen/X/nh;->A02(IIII)I

    move-result v14

    .line 101470
    .end local v0    # "mask":I
    .end local v1    # "next":I
    .end local v3
    .end local v4
    .end local v5    # "tableIndex":I
    .local p1, "mask":I
    .local p3, "next":I
    :goto_0
    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/nh;->A0N(I)V

    .line 101471
    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/nh;->A0o(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 101472
    iput v4, v3, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    .line 101473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0j()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_9

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101474
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0C()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/nk;->A0B(Ljava/lang/Object;II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "2ZAiwLyczl80nzcVv99ytgXWx8HMLtqx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    goto :goto_0

    .line 101475
    :cond_4
    invoke-static {v13, v14}, Lcom/facebook/ads/redexgen/X/nk;->A02(II)I

    move-result v6

    .line 101476
    .local v2, "hashPrefix":I
    const/4 v5, 0x0

    .line 101477
    .local v3, "bucketLength":I
    :cond_5
    add-int/lit8 v1, v0, -0x1

    .line 101478
    .local v4, "entryIndex":I
    .end local v1
    .local p1, "next":I
    aget v2, v9, v1

    .line 101479
    .local v1, "entry":I
    .end local v5
    .local p2, "tableIndex":I
    invoke-static {v2, v14}, Lcom/facebook/ads/redexgen/X/nk;->A02(II)I

    move-result v0

    if-ne v0, v6, :cond_6

    aget-object v0, v8, v1

    .line 101480
    invoke-static {v11, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101481
    aget-object v0, v7, v1

    .line 101482
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v12, v7, v1

    .line 101483
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/nh;->A0k(I)V

    .line 101484
    return-object v0

    .line 101485
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-static {v2, v14}, Lcom/facebook/ads/redexgen/X/nk;->A03(II)I

    move-result v0

    .line 101486
    .end local p1    # "next":I
    .local v5, "next":I
    add-int/lit8 v5, v5, 0x1

    .line 101487
    if-nez v0, :cond_5

    .line 101488
    .end local v2    # "hashPrefix":I
    .local p1, "hashPrefix":I
    const/16 v0, 0x9

    if-lt v5, v0, :cond_7

    .line 101489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101490
    :cond_7
    if-le v4, v14, :cond_8

    .line 101491
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/nk;->A00(I)I

    move-result v0

    invoke-direct {v3, v14, v0, v13, v10}, Lcom/facebook/ads/redexgen/X/nh;->A02(IIII)I

    move-result v14

    goto :goto_0

    .line 101492
    :cond_8
    add-int/lit8 v0, v10, 0x1

    invoke-static {v2, v0, v14}, Lcom/facebook/ads/redexgen/X/nk;->A04(III)I

    move-result v0

    aput v0, v9, v1

    goto/16 :goto_0

    .line 101493
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/nh;->A0A:[Ljava/lang/String;

    const-string v1, "efczO3YJEcN3CoMhojB5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "vhmQa5OnZZeWmVDY77t31AOxDsfMGclq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 101505
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101506
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101507
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101508
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101509
    .local v1, "oldValue":Ljava/lang/Object;
    sget-object v0, Lcom/facebook/ads/redexgen/X/nh;->A0B:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 101510
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101511
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A04:I

    goto :goto_0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 101512
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nh;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A06:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A0A()Lcom/facebook/ads/redexgen/X/ng;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A06:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A06:Ljava/util/Collection;

    goto :goto_0
.end method
