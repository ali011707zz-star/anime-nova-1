.class public final Lcom/facebook/ads/redexgen/X/AM;
.super Lcom/facebook/ads/redexgen/X/p5;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CleartextNotPermittedException"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 622
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IiHFHpE70aCOc94efxOlf2iC0Ng8zMr5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b3mzaytlZJgoRVhs4UINeaUr6S0G0E41"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6IHqdrhMw9UxFnoc7iMNxZeDC0DTO0yB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "go0dTVggBQ2s7heaJCrnqGQgIh6JhPx1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bkC24C7HhnNqTiNutYzB4zMXotuBenI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "te5qRCwogDd297VgLok2fv8nwYFOdDR1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xjDDw5bsf4CogqtV7hhNk6k9HWMs2JIA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oLDdWjUmHvVvISH87gP40QDZoo9t6EZz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AM;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AM;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 6

    .line 29001
    const/16 v4, 0x7d7

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x79

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AM;->A01(III)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    .line 29002
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/AM;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AM;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AM;->A01:[Ljava/lang/String;

    const-string v1, "31sOmOCDO5yq31NNiMqquOfpDH8J50WI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x27

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x79

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AM;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x4ft
        0x46t
        0x42t
        0x51t
        0x57t
        0x46t
        0x5bt
        0x57t
        0x3t
        0x6bt
        0x77t
        0x77t
        0x73t
        0x3t
        0x57t
        0x51t
        0x42t
        0x45t
        0x45t
        0x4at
        0x40t
        0x3t
        0x4dt
        0x4ct
        0x57t
        0x3t
        0x53t
        0x46t
        0x51t
        0x4et
        0x4at
        0x57t
        0x57t
        0x46t
        0x47t
        0xdt
        0x3t
        0x70t
        0x46t
        0x46t
        0x3t
        0x4bt
        0x57t
        0x57t
        0x53t
        0x50t
        0x19t
        0xct
        0xct
        0x47t
        0x46t
        0x55t
        0x46t
        0x4ft
        0x4ct
        0x53t
        0x46t
        0x51t
        0xdt
        0x42t
        0x4dt
        0x47t
        0x51t
        0x4ct
        0x4at
        0x47t
        0xdt
        0x40t
        0x4ct
        0x4et
        0xct
        0x44t
        0x56t
        0x4at
        0x47t
        0x46t
        0xct
        0x57t
        0x4ct
        0x53t
        0x4at
        0x40t
        0x50t
        0xct
        0x4et
        0x46t
        0x47t
        0x4at
        0x42t
        0xct
        0x4at
        0x50t
        0x50t
        0x56t
        0x46t
        0x50t
        0xct
        0x40t
        0x4ft
        0x46t
        0x42t
        0x51t
        0x57t
        0x46t
        0x5bt
        0x57t
        0xet
        0x4dt
        0x4ct
        0x57t
        0xet
        0x53t
        0x46t
        0x51t
        0x4et
        0x4at
        0x57t
        0x57t
        0x46t
        0x47t
    .end array-data
.end method
