.class public final Lcom/facebook/ads/redexgen/X/5w;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5w;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/d4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15398
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5w;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5w;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x37t
        0x2at
        0x35t
        0x26t
        0x37t
        0x2at
        0x29t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 5

    .line 15399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/d4;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/d4;->A0L(Lcom/facebook/ads/redexgen/X/d4;Z)Z

    .line 15400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d4;->A00(Lcom/facebook/ads/redexgen/X/d4;)Lcom/facebook/ads/redexgen/X/d3;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d4;->A05(Lcom/facebook/ads/redexgen/X/d4;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/d3;->AGR(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15401
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

    .line 15402
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5w;->A02(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
