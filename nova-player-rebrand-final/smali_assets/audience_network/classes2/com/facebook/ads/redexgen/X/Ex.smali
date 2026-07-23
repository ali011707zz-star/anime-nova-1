.class public final Lcom/facebook/ads/redexgen/X/Ex;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/pY;

.field public final A02:Ljava/lang/Object;

.field public final A03:[Lcom/facebook/ads/redexgen/X/7s;

.field public final A04:[Lcom/facebook/ads/redexgen/X/nE;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 720
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LpJTwMN2G"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VgMO4aUKUhad1vQS8qeWccWG6TZwybQB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ACcLkDhyx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Vz4L8Yk2qa8xi00BpA99exXw347yn2OW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "M93qmyVYUpuFuHp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ixo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WCFkueysi57ip8GEP7BFiSRGMX4T5ofH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFY6A3GYQmBEHARGrOHSwwc2jPi1aXj0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ex;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/7s;[Lcom/facebook/ads/redexgen/X/nE;Lcom/facebook/ads/redexgen/X/pY;Ljava/lang/Object;)V
    .locals 1

    .line 35311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:[Lcom/facebook/ads/redexgen/X/7s;

    .line 35313
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/nE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    .line 35314
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ex;->A01:Lcom/facebook/ads/redexgen/X/pY;

    .line 35315
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ex;->A02:Ljava/lang/Object;

    .line 35316
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A00:I

    .line 35317
    return-void
.end method


# virtual methods
.method public final A00(I)Z
    .locals 1

    .line 35318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:[Lcom/facebook/ads/redexgen/X/7s;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Ex;I)Z
    .locals 6

    .line 35319
    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 35320
    return v5

    .line 35321
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ex;->A03:[Lcom/facebook/ads/redexgen/X/7s;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ex;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ex;->A05:[Ljava/lang/String;

    const-string v1, "2a41zxf8OUQisEdMYeAN8aC4JNcLEgEy"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v1, v3, p2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ex;->A03:[Lcom/facebook/ads/redexgen/X/7s;

    aget-object v0, v0, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    aget-object v4, v0, p2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    aget-object v3, v0, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ex;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 35322
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ex;->A05:[Ljava/lang/String;

    const-string v1, "ShAZgc6gkhlm9OR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .line 35323
    :cond_3
    return v5
.end method
