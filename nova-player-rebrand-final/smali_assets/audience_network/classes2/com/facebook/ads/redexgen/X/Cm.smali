.class public final Lcom/facebook/ads/redexgen/X/Cm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fu;


# static fields
.field public static A04:[B


# instance fields
.field public A00:I

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cm;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;[B)V
    .locals 5

    .line 32610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32611
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    .line 32612
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A01:Ljava/lang/String;

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32613
    :catch_0
    move-exception v4

    .line 32614
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32615
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A02:Ljava/util/Map;

    .line 32616
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Cm;->A03:[B

    .line 32617
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cm;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x63t
        0x72t
        0x71t
        0x69t
        0x74t
        0x6dt
        0x26t
        0x63t
        0x74t
        0x74t
        0x69t
        0x74t
    .end array-data
.end method


# virtual methods
.method public final A72()[B
    .locals 1

    .line 32618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A03:[B

    return-object v0
.end method

.method public final A73()Ljava/lang/String;
    .locals 2

    .line 32619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A03:[B

    if-eqz v0, :cond_0

    .line 32620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cm;->A03:[B

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 32621
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A8E()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 32622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A9C()I
    .locals 1

    .line 32623
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 32624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cm;->A01:Ljava/lang/String;

    return-object v0
.end method
