.class public abstract Lcom/facebook/ads/redexgen/X/ki;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3167
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rIY6scqdx44s0lYhNsVasOWOliCxkCUS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XG17z2bEBjC2W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Vem1quc5hPIJuUrE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UcFFOKOZJEGoXQOYNnqMCDDpRLrphEx7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nkZ3L4NSKd4uHuOS6chXEBDQJqUE8doa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6xQ37guYp3oV6tn7J9L0pQx9gviAFZKh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tb0XI9b9KZ2bW8CyI06iyuXMMlzfJONe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u0lWMQq9JRx7ZEcoLF7IwO0fOB8k5dGw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ki;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ki;->A0A()V

    return-void
.end method

.method public static A00(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "size"
        }
    .end annotation

    .line 91458
    const/16 v2, 0xa7

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A02(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static A01(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "size"
        }
    .end annotation

    .line 91459
    const/16 v2, 0xa7

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A03(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static A02(IILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "size",
            "desc"
        }
    .end annotation

    .line 91460
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 91461
    return p0

    .line 91462
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ki;->A08(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A03(IILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "size",
            "desc"
        }
    .end annotation

    .line 91463
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    .line 91464
    return p0

    .line 91465
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ki;->A09(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A04(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 91466
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 91467
    return-object p0

    .line 91468
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 91469
    .local p2, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 91470
    return-object p0

    .line 91471
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ki;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ki;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ki;->A01:[Ljava/lang/String;

    const-string v1, "4hJwB50Ffda8q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "BvOy7f3XfmcoPFEY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    xor-int/2addr p1, p2

    xor-int/lit8 v0, p1, 0x6c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "size"
        }
    .end annotation

    .line 91472
    if-ltz p0, :cond_0

    if-le p0, p2, :cond_1

    .line 91473
    :cond_0
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/ki;->A09(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91474
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, p2, :cond_3

    .line 91475
    :cond_2
    const/16 v2, 0x69

    const/16 v1, 0x9

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/ki;->A09(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91476
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/16 v2, 0x72

    const/16 v1, 0x35

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A08(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "size",
            "desc"
        }
    .end annotation

    .line 91477
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-gez p0, :cond_0

    .line 91478
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v0, v3, v6

    const/16 v2, 0x4d

    const/16 v1, 0x1c

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91479
    :cond_0
    if-ltz p1, :cond_1

    .line 91480
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v2, v3, v6

    aput-object v1, v3, v4

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91481
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xac

    const/16 v1, 0xf

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A09(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "size",
            "desc"
        }
    .end annotation

    .line 91482
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-gez p0, :cond_0

    .line 91483
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v0, v3, v6

    const/16 v2, 0x4d

    const/16 v1, 0x1c

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91484
    :cond_0
    if-ltz p1, :cond_1

    .line 91485
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v2, v3, v6

    aput-object v1, v3, v4

    const/16 v2, 0x23

    const/16 v1, 0x2a

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91486
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xac

    const/16 v1, 0xf

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xc6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ki;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x75t
        0x26t
        0x2et
        0x23t
        0x75t
        0x2ft
        0x26t
        0x6bt
        0x73t
        0x75t
        0x72t
        0x26t
        0x64t
        0x63t
        0x26t
        0x6at
        0x63t
        0x75t
        0x75t
        0x26t
        0x72t
        0x6et
        0x67t
        0x68t
        0x26t
        0x75t
        0x6ft
        0x7ct
        0x63t
        0x26t
        0x2et
        0x23t
        0x75t
        0x2ft
        0x26t
        0x70t
        0x23t
        0x2bt
        0x26t
        0x70t
        0x2at
        0x23t
        0x6et
        0x76t
        0x70t
        0x77t
        0x23t
        0x6dt
        0x6ct
        0x77t
        0x23t
        0x61t
        0x66t
        0x23t
        0x64t
        0x71t
        0x66t
        0x62t
        0x77t
        0x66t
        0x71t
        0x23t
        0x77t
        0x6bt
        0x62t
        0x6dt
        0x23t
        0x70t
        0x6at
        0x79t
        0x66t
        0x23t
        0x2bt
        0x26t
        0x70t
        0x2at
        0x3bt
        0x6dt
        0x3et
        0x36t
        0x3bt
        0x6dt
        0x37t
        0x3et
        0x73t
        0x6bt
        0x6dt
        0x6at
        0x3et
        0x70t
        0x71t
        0x6at
        0x3et
        0x7ct
        0x7bt
        0x3et
        0x70t
        0x7bt
        0x79t
        0x7ft
        0x6at
        0x77t
        0x68t
        0x7bt
        0x32t
        0x39t
        0x33t
        0x77t
        0x3et
        0x39t
        0x33t
        0x32t
        0x2ft
        0x72t
        0x79t
        0x73t
        0x37t
        0x7et
        0x79t
        0x73t
        0x72t
        0x6ft
        0x37t
        0x3ft
        0x32t
        0x64t
        0x3et
        0x37t
        0x7at
        0x62t
        0x64t
        0x63t
        0x37t
        0x79t
        0x78t
        0x63t
        0x37t
        0x75t
        0x72t
        0x37t
        0x7bt
        0x72t
        0x64t
        0x64t
        0x37t
        0x63t
        0x7ft
        0x76t
        0x79t
        0x37t
        0x64t
        0x63t
        0x76t
        0x65t
        0x63t
        0x37t
        0x7et
        0x79t
        0x73t
        0x72t
        0x6ft
        0x37t
        0x3ft
        0x32t
        0x64t
        0x3et
        0x7at
        0x7dt
        0x77t
        0x76t
        0x6bt
        0x39t
        0x32t
        0x30t
        0x36t
        0x23t
        0x3et
        0x21t
        0x32t
        0x77t
        0x24t
        0x3et
        0x2dt
        0x32t
        0x6dt
        0x77t
        0x7ft
        0x78t
        0x6dt
        0x7et
        0x78t
        0x2ct
        0x65t
        0x62t
        0x68t
        0x69t
        0x74t
    .end array-data
.end method

.method public static A0B(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "size"
        }
    .end annotation

    .line 91487
    if-ltz p0, :cond_0

    if-lt p1, p0, :cond_0

    if-gt p1, p2, :cond_0

    .line 91488
    return-void

    .line 91489
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ki;->A07(III)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A0C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .line 91490
    if-eqz p0, :cond_0

    .line 91491
    return-void

    .line 91492
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static A0D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .line 91493
    if-eqz p0, :cond_0

    .line 91494
    return-void

    .line 91495
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static A0E(ZLjava/lang/Object;)V
    .locals 0
    .param p0    # Z
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessage"
        }
    .end annotation

    .line 91496
    if-eqz p0, :cond_0

    .line 91497
    return-void

    .line 91498
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A0F(ZLjava/lang/Object;)V
    .locals 0
    .param p0    # Z
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessage"
        }
    .end annotation

    .line 91499
    if-eqz p0, :cond_0

    .line 91500
    return-void

    .line 91501
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static A0G(ZLjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessageTemplate",
            "p1",
            "p2"
        }
    .end annotation

    .line 91502
    if-eqz p0, :cond_0

    .line 91503
    return-void

    .line 91504
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0H(ZLjava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessageTemplate",
            "p1"
        }
    .end annotation

    .line 91505
    if-eqz p0, :cond_0

    .line 91506
    return-void

    .line 91507
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
