.class public final Lcom/facebook/ads/redexgen/X/GU;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->A0C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37147
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GU;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

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

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GU;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x59t
        0x54t
        0x55t
        0x5ft
        0x10t
        0x47t
        0x51t
        0x43t
        0x10t
        0x5et
        0x55t
        0x46t
        0x55t
        0x42t
        0x10t
        0x40t
        0x42t
        0x55t
        0x40t
        0x51t
        0x42t
        0x55t
        0x54t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 37148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A0U(Lcom/facebook/ads/redexgen/X/4V;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37149
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/4V;

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4V;->A0M(Lcom/facebook/ads/redexgen/X/4V;Ljava/lang/String;)V

    .line 37150
    :cond_0
    return-void
.end method
