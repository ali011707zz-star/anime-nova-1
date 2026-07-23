.class public final Lcom/facebook/ads/redexgen/X/eC;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/U2;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

.field public final synthetic A01:Lcom/facebook/ads/AudienceNetworkAds$InitResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 80739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eC;->A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/eC;->A01:Lcom/facebook/ads/AudienceNetworkAds$InitResult;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eC;->A02:[B

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

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eC;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x50t
        0x50t
        0x52t
        0x6t
        0x1t
        0x55t
        0x53t
        0x10t
        0x7t
        0x8t
        0x63t
        0x2at
        0x2dt
        0x2at
        0x37t
        0x2at
        0x22t
        0x2ft
        0x2at
        0x39t
        0x22t
        0x37t
        0x2at
        0x2ct
        0x2dt
        0x63t
        0x20t
        0x2ct
        0x2et
        0x33t
        0x2ft
        0x26t
        0x37t
        0x26t
        0x11t
        0x16t
        0xdt
        0x30t
        0x2t
        0x5t
        0x6t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    const/16 v2, 0x8

    const/16 v1, 0x1b

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eC;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eC;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x23

    const/4 v1, 0x7

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eC;->A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eC;->A01:Lcom/facebook/ads/AudienceNetworkAds$InitResult;

    invoke-interface {v1, v0}, Lcom/facebook/ads/AudienceNetworkAds$InitListener;->onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    .line 80741
    return-void
.end method
