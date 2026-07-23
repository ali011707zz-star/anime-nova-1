.class public final Lcom/facebook/ads/redexgen/X/Ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\t\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/collections/EmptyIterator;",
        "",
        "",
        "<init>",
        "()V",
        "hasNext",
        "",
        "hasPrevious",
        "nextIndex",
        "",
        "previousIndex",
        "next",
        "previous",
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
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/Ae;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ae;->A03()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ae;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ae;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01()Ljava/lang/Void;
    .locals 1

    .line 29323
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private final A02()Ljava/lang/Void;
    .locals 1

    .line 29324
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ae;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x5ft
        -0x3et
        -0x49t
        -0x3ct
        -0x4dt
        -0x3at
        -0x45t
        -0x3ft
        -0x40t
        0x72t
        -0x45t
        -0x3bt
        0x72t
        -0x40t
        -0x3ft
        -0x3at
        0x72t
        -0x3bt
        -0x39t
        -0x3et
        -0x3et
        -0x3ft
        -0x3ct
        -0x3at
        -0x49t
        -0x4at
        0x72t
        -0x48t
        -0x3ft
        -0x3ct
        0x72t
        -0x3ct
        -0x49t
        -0x4dt
        -0x4at
        0x7ft
        -0x3ft
        -0x40t
        -0x42t
        -0x35t
        0x72t
        -0x4bt
        -0x3ft
        -0x42t
        -0x42t
        -0x49t
        -0x4bt
        -0x3at
        -0x45t
        -0x3ft
        -0x40t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ae;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 29325
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 29326
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 29327
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ae;->A01()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 29328
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 29329
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ae;->A02()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 29330
    const/4 v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ae;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ae;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
