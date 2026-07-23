.class public final Lcom/facebook/ads/redexgen/X/B8;
.super Lcom/facebook/ads/redexgen/X/qK;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/qK<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/B8;

.field public static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 650
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VpDQNWoK0mmjrFci3J1ES8becoOn0yPT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Vr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dVgvDtkQ8cSY7jysLBul"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4dcdEYs2txrJkBrXjBMi1LqbKTa90ufq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PVumC7zyVZC9p2BLxPfo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qAFwV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B8;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B8;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/B8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/B8;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/B8;->A02:Lcom/facebook/ads/redexgen/X/B8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30111
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qK;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)I"
        }
    .end annotation

    .line 30112
    .local v2, "left":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    .local v3, "right":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30113
    if-ne p1, p2, :cond_1

    .line 30114
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B8;->A01:[Ljava/lang/String;

    const-string v1, "QsSMXmf1NPN173cjiLSi9PN2wuQJFCPh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30115
    :cond_1
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/B8;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

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
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x12t
        0x2ft
        0x39t
        0x38t
        0x2ft
        0x34t
        0x33t
        0x3at
        0x73t
        0x33t
        0x3ct
        0x29t
        0x28t
        0x2ft
        0x3ct
        0x31t
        0x75t
        0x74t
        0x73t
        0x2ft
        0x38t
        0x2bt
        0x38t
        0x2ft
        0x2et
        0x38t
        0x75t
        0x74t
    .end array-data
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/qK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/facebook/ads/redexgen/X/qK<",
            "TS;>;"
        }
    .end annotation

    .line 30116
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 30117
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B8;->A00(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 30118
    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B8;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
