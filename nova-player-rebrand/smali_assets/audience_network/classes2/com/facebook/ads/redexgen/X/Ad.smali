.class public final Lcom/facebook/ads/redexgen/X/Ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010(\n\u0000\n\u0002\u0010*\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0011\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u0019\u001a\u00020\u000c2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001bH\u0016J\u0011\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0010H\u0096\u0002J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020!H\u0096\u0002J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020#H\u0016J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020#2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016J\u001e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0010H\u0016J\u0008\u0010\'\u001a\u00020\u000eH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/collections/EmptyList;",
        "",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "<init>",
        "()V",
        "serialVersionUID",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "size",
        "getSize",
        "()I",
        "isEmpty",
        "contains",
        "element",
        "containsAll",
        "elements",
        "",
        "get",
        "index",
        "indexOf",
        "lastIndexOf",
        "iterator",
        "",
        "listIterator",
        "",
        "subList",
        "fromIndex",
        "toIndex",
        "readResolve",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B = null

.field public static final A01:Lcom/facebook/ads/redexgen/X/Ad;

.field public static final serialVersionUID:J = -0x6690382f581f9fceL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ad;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ad;->A01:Lcom/facebook/ads/redexgen/X/Ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()I
    .locals 1

    .line 29300
    const/4 v0, 0x0

    return v0
.end method

.method private final A01(Ljava/lang/Void;)I
    .locals 3

    const/16 v2, 0x78

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29301
    const/4 v0, -0x1

    return v0
.end method

.method private final A02(Ljava/lang/Void;)I
    .locals 3

    const/16 v2, 0x78

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29302
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ad;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A04(I)Ljava/lang/Void;
    .locals 4

    .line 29303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x2c

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x92

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x35t
        -0x77t
        -0x7ct
        0x5et
        -0x7dt
        0x79t
        0x7at
        -0x73t
        0x4ft
        0x35t
        -0x6dt
        -0x45t
        -0x42t
        -0x3et
        -0x39t
        0x6et
        -0x46t
        -0x49t
        -0x3ft
        -0x3et
        0x6et
        -0x4et
        -0x43t
        -0x4dt
        -0x3ft
        -0x44t
        0x75t
        -0x3et
        0x6et
        -0x4ft
        -0x43t
        -0x44t
        -0x3et
        -0x51t
        -0x49t
        -0x44t
        0x6et
        -0x4dt
        -0x46t
        -0x4dt
        -0x45t
        -0x4dt
        -0x44t
        -0x3et
        0x6et
        -0x51t
        -0x3et
        0x6et
        -0x49t
        -0x44t
        -0x4et
        -0x4dt
        -0x3at
        0x6et
        0x60t
        -0x7bt
        0x7bt
        0x7ct
        -0x71t
        0x51t
        0x37t
        0x78t
        -0x67t
        -0x72t
        -0x65t
        -0x76t
        -0x63t
        -0x6et
        -0x68t
        -0x69t
        0x49t
        -0x6et
        -0x64t
        0x49t
        -0x69t
        -0x68t
        -0x63t
        0x49t
        -0x64t
        -0x62t
        -0x67t
        -0x67t
        -0x68t
        -0x65t
        -0x63t
        -0x72t
        -0x73t
        0x49t
        -0x71t
        -0x68t
        -0x65t
        0x49t
        -0x65t
        -0x72t
        -0x76t
        -0x73t
        0x56t
        -0x68t
        -0x69t
        -0x6bt
        -0x5et
        0x49t
        -0x74t
        -0x68t
        -0x6bt
        -0x6bt
        -0x72t
        -0x74t
        -0x63t
        -0x6et
        -0x68t
        -0x69t
        -0x32t
        -0x30t
        0x6at
        0x7bt
        0x7bt
        0x6at
        -0x7et
        -0x54t
        -0x4dt
        -0x54t
        -0x4ct
        -0x54t
        -0x4bt
        -0x45t
        -0x19t
        -0x12t
        -0x19t
        -0x11t
        -0x19t
        -0x10t
        -0xat
        -0xbt
        -0x30t
        -0x24t
        -0x27t
        -0x29t
        -0x4dt
        -0x28t
        -0x32t
        -0x31t
        -0x1et
        -0x5ct
        -0x76t
    .end array-data
.end method

.method private final A06(Ljava/lang/Void;)Z
    .locals 3

    const/16 v2, 0x78

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29304
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clear()V
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 29305
    const/4 v0, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A06(Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3

    const/16 v2, 0x7f

    const/16 v1, 0x8

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29306
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 29307
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 29308
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ad;->A04(I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .line 29309
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 29310
    const/4 v0, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A01(Ljava/lang/Void;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 29311
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 29312
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ae;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 29313
    const/4 v0, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A02(Ljava/lang/Void;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 29314
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ae;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 4

    .line 29315
    if-nez p1, :cond_0

    .line 29316
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ae;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0

    .line 29317
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/4 v1, 0x7

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/16 v2, 0x3e

    const/16 v1, 0x33

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge size()I
    .locals 1

    .line 29318
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ad;->A00()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 4

    .line 29319
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 29320
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x87

    const/16 v1, 0xb

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qa;->A02(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/16 v2, 0x73

    const/4 v1, 0x5

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/qa;->A03(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 29321
    const/16 v2, 0x71

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
