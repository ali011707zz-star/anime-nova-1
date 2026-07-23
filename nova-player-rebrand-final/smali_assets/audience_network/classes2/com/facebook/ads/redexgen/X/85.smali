.class public final Lcom/facebook/ads/redexgen/X/85;
.super Lcom/facebook/ads/redexgen/X/kH;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/85;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22198
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/kH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;ZZ)V

    .line 22199
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/85;->A01:Landroid/net/Uri;

    .line 22200
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/85;->A00:Ljava/util/Map;

    .line 22201
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

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

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/85;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x21t
        0x26t
        0x23t
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 2

    .line 22202
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A00:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Mq;)V

    .line 22203
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0
.end method

.method public final A0M()Landroid/net/Uri;
    .locals 4

    .line 22204
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/85;->A01:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22205
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 22206
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 22207
    :cond_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
