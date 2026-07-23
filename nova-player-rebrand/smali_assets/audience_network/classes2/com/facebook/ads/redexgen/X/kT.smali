.class public final Lcom/facebook/ads/redexgen/X/kT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/5V;

.field public A03:Lcom/facebook/ads/redexgen/X/5Y;

.field public A04:Lcom/facebook/ads/redexgen/X/5Y;

.field public A05:Lcom/facebook/ads/redexgen/X/MP;

.field public A06:Lcom/facebook/ads/redexgen/X/MY;

.field public A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3163
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FmqEYLEjOBovlIuvu7xTusZ6GIuR3pge"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QeU0DUuOAkxor0HSqOzEAO6P6r4bp110"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WNDsEfwHyCZVTn6rYNycLV5FNYvDeUGR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9kl6sBOZXnbWpCxdvxnR8wYz13jzyZGc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QdIGCZBZzwjOBdbigrYBFiKU6cV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYM92CzuhlmQLmzBChoRToTytAMTrYW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W1yocJmlBB3ILJesLtmFt5l7ilHzoTT3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kT;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90285
    new-instance v0, Lcom/facebook/ads/redexgen/X/pB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pB;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A03:Lcom/facebook/ads/redexgen/X/5Y;

    .line 90286
    sget-object v0, Lcom/facebook/ads/redexgen/X/MY;->A00:Lcom/facebook/ads/redexgen/X/MY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A06:Lcom/facebook/ads/redexgen/X/MY;

    .line 90287
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/8B;
    .locals 3

    .line 90288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v2

    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A01:I

    .line 90289
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kT;->A01(Lcom/facebook/ads/redexgen/X/pF;II)Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    return-object v0

    .line 90290
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/pF;II)Lcom/facebook/ads/redexgen/X/8B;
    .locals 15

    .line 90291
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kT;->A05:Lcom/facebook/ads/redexgen/X/MP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/MP;

    .line 90292
    .local v1, "cache":Lcom/facebook/ads/redexgen/X/MP;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/kT;->A07:Z

    move-object/from16 v6, p1

    if-nez v0, :cond_0

    if-nez v6, :cond_1

    .line 90293
    .end local v2
    :cond_0
    const/4 v8, 0x0

    .line 90294
    .local v13, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/5W;
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/8B;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kT;->A03:Lcom/facebook/ads/redexgen/X/5Y;

    .line 90295
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v7

    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/kT;->A06:Lcom/facebook/ads/redexgen/X/MY;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p3

    move/from16 v10, p2

    invoke-direct/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/8B;-><init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/MY;ILcom/facebook/ads/redexgen/X/3d;ILcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 90296
    return-object v4

    .line 90297
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kT;->A02:Lcom/facebook/ads/redexgen/X/5V;

    if-eqz v0, :cond_2

    .line 90298
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/kT;->A02:Lcom/facebook/ads/redexgen/X/5V;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kT;->A08:[Ljava/lang/String;

    const-string v1, "BsDku37cs2h0edzjFuAGMntAOCTwp5qB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0s0KxP1bBIf3QxkhX8XEl0TpXhOFUtvY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/5V;->A5H()Lcom/facebook/ads/redexgen/X/kU;

    move-result-object v8

    .local v2, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/5W;
    goto :goto_0

    .line 90299
    .end local v2    # "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/5W;
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/kV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kV;-><init>()V

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/kV;->A00(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kV;->A5H()Lcom/facebook/ads/redexgen/X/kU;

    move-result-object v8

    .restart local v2    # "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/5W;
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/3d;
    .locals 1

    .line 90300
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A03(I)Lcom/facebook/ads/redexgen/X/kT;
    .locals 0

    .line 90301
    iput p1, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:I

    .line 90302
    return-object p0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/5Y;)Lcom/facebook/ads/redexgen/X/kT;
    .locals 0

    .line 90303
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kT;->A03:Lcom/facebook/ads/redexgen/X/5Y;

    .line 90304
    return-object p0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/5Y;)Lcom/facebook/ads/redexgen/X/kT;
    .locals 0

    .line 90305
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kT;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    .line 90306
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kT;
    .locals 0

    .line 90307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kT;->A05:Lcom/facebook/ads/redexgen/X/MP;

    .line 90308
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/8B;
    .locals 3

    .line 90309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v2

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kT;->A00:I

    or-int/lit8 v1, v0, 0x1

    .line 90310
    const/16 v0, -0x3e8

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kT;->A01(Lcom/facebook/ads/redexgen/X/pF;II)Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    return-object v0

    .line 90311
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic A5I()Lcom/facebook/ads/redexgen/X/pF;
    .locals 1

    .line 90312
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kT;->A00()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    return-object v0
.end method
