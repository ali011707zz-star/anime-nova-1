.class public final enum Lcom/facebook/ads/redexgen/X/p7;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/p9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmptyModifiableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/p7;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/p7;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/p7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3342
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MtVTs5cDzTkaqvg8NuH3vwobapVBE0st"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ArMYDbI1ZOKb1PqTCippk6Br36HImDMz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "toSUZKKd1UGhUJ4QalyaWathzboIF5UW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VPzDHjdriWPgU4d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Di5eRoJ6h3CuCR5uxiNB2s29p0t6qO11"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B6Kcd5hxdA7PPWxpRUkmfJ1syAdRnb1r"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "u5nu3DOOZeH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WD4F9WHgG47OHFbe2E6bcqFaZ5qcCEPl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/p7;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/p7;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/p7;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/p7;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/p7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/p7;->A03:Lcom/facebook/ads/redexgen/X/p7;

    .line 3343
    invoke-static {}, Lcom/facebook/ads/redexgen/X/p7;->A02()[Lcom/facebook/ads/redexgen/X/p7;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/p7;->A02:[Lcom/facebook/ads/redexgen/X/p7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103941
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/p7;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x76

    sget-object v1, Lcom/facebook/ads/redexgen/X/p7;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/p7;->A01:[Ljava/lang/String;

    const-string v1, "SHVGlB8lB2rly5Sbj1O4M1TTC2AUnN6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/p7;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x65t
        0x78t
        0x7ft
        0x6at
        0x65t
        0x68t
        0x6et
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/p7;
    .locals 3

    .line 103942
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/p7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/p7;->A03:Lcom/facebook/ads/redexgen/X/p7;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/p7;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 103947
    const-class v0, Lcom/facebook/ads/redexgen/X/p7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/p7;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/p7;
    .locals 1

    .line 103948
    sget-object v0, Lcom/facebook/ads/redexgen/X/p7;->A02:[Lcom/facebook/ads/redexgen/X/p7;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/p7;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 103943
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 103944
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 103945
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nJ;->A04(Z)V

    .line 103946
    return-void
.end method
