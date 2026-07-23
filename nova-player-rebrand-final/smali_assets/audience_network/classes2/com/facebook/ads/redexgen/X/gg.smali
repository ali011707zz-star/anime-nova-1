.class public final enum Lcom/facebook/ads/redexgen/X/gg;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/gg;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/gg;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/gg;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/gg;


# instance fields
.field public A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 2895
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4MR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ox3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IUsSI7rcrCx1ERgKd0rYF5wqQshT9MFY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XMpLbdKCI8ptDt9BVBTjCKDwrbbZ39Yk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "reDnu4iC6gOf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "58W6JAylc1sA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T5hdxNMEH3a8tXz2YdYKh9bF2ZTD6zRG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CM8HCV1eVyulF3snUIL5CjajvzNLA86A"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gg;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gg;->A01()V

    const/4 v4, 0x0

    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gg;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gg;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gg;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/gg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gg;->A04:Lcom/facebook/ads/redexgen/X/gg;

    .line 2896
    const/4 v4, 0x1

    const/16 v2, 0xe

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gg;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x6

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gg;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gg;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/gg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gg;->A05:Lcom/facebook/ads/redexgen/X/gg;

    .line 2897
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gg;->A02()[Lcom/facebook/ads/redexgen/X/gg;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gg;->A03:[Lcom/facebook/ads/redexgen/X/gg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83368
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gg;->A00:Ljava/lang/String;

    .line 83369
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gg;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/gg;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/gg;->A02:[Ljava/lang/String;

    const-string v1, "zM61rMpjrvDScug74JUjCxPutIg5FxhC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "TMGBJitMUu1pxt90KbWrvOLR2BVfJ6J0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gg;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x53t
        -0x50t
        -0x50t
        -0x68t
        -0x6dt
        -0x79t
        -0x7ct
        -0x69t
        -0x78t
        -0x74t
        -0x71t
        -0x6et
        -0x6et
        -0x58t
        -0x5dt
        -0x69t
        -0x6ct
        -0x59t
        -0x68t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/gg;
    .locals 6

    .line 83370
    const/4 v0, 0x2

    new-array v5, v0, [Lcom/facebook/ads/redexgen/X/gg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gg;->A04:Lcom/facebook/ads/redexgen/X/gg;

    const/4 v0, 0x0

    aput-object v1, v5, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/gg;->A05:Lcom/facebook/ads/redexgen/X/gg;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/gg;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/gg;->A02:[Ljava/lang/String;

    const-string v1, "lJSENTz9psORZi9A2zDcPU2PQxg7yytN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-object v4, v5, v3

    return-object v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gg;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83372
    const-class v0, Lcom/facebook/ads/redexgen/X/gg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gg;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/gg;
    .locals 1

    .line 83373
    sget-object v0, Lcom/facebook/ads/redexgen/X/gg;->A03:[Lcom/facebook/ads/redexgen/X/gg;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/gg;

    return-object v0
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 83371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gg;->A00:Ljava/lang/String;

    return-object v0
.end method
