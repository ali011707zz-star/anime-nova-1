.class public abstract synthetic Lcom/facebook/ads/redexgen/X/HC;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 774
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wHtRKEBukZjKIrpSU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KQV7yl47xeC6fjXtW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UG5CitEtgdl75emExY5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pfqy0gPt3ROcELLNICUZQiBgsDMXNZBn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dUZ8ILNBo4Zn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RWmhci0aCmwtP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9q5Ps1M8ZePbnZiwL1zoMcSZvwXjO0qk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tuKMVdtKzyAhwIlA8z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HC;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A00()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 4

    .line 38514
    const/4 v0, 0x0

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/H9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HC;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HC;->A00:[Ljava/lang/String;

    const-string v1, "rY4nngwynExDvlAlC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HZhfAk8uG8hJDFaZD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/HD;Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/H9;
    .locals 0

    .line 38515
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/HD;->A5N()[Lcom/facebook/ads/redexgen/X/H9;

    move-result-object p0

    return-object p0
.end method
