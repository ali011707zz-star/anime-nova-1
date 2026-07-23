.class public final Lcom/facebook/ads/redexgen/X/6a;
.super Lcom/facebook/ads/redexgen/X/E4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MI;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6a;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6a;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6a;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6a;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x26t
        0x39t
        0x34t
        0x35t
        0x3ft
        0x19t
        0x3et
        0x24t
        0x35t
        0x22t
        0x23t
        0x24t
        0x39t
        0x24t
        0x31t
        0x3ct
        0x15t
        0x26t
        0x35t
        0x3et
        0x24t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 4

    .line 17681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6a;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 17682
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17683
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6a;->A02(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
