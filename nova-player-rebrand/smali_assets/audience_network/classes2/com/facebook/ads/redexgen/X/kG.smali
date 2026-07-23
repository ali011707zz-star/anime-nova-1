.class public final Lcom/facebook/ads/redexgen/X/kG;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3150
    invoke-static {}, Lcom/facebook/ads/redexgen/X/kG;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/kG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kG;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
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

    .line 89547
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V

    .line 89548
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Landroid/net/Uri;

    .line 89549
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Map;

    .line 89550
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kG;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kG;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x34t
        0x36t
        0x2dt
        0x33t
        0x36t
        0x2dt
        0x38t
        0x3dt
        -0x20t
        -0x1bt
        -0x24t
        -0x2ft
    .end array-data
.end method


# virtual methods
.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 8

    .line 89551
    sget-object v7, Lcom/facebook/ads/redexgen/X/VC;->A05:Lcom/facebook/ads/redexgen/X/VC;

    .line 89552
    .local v0, "priority":Lcom/facebook/ads/redexgen/X/VC;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Landroid/net/Uri;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89553
    .local v1, "priorityString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89554
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VC;->values()[Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v7, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89555
    :catch_0
    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Landroid/net/Uri;

    .line 89556
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89557
    invoke-interface {v6, v5, v4, v0, v7}, Lcom/facebook/ads/redexgen/X/VA;->ABq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VC;)V

    .line 89558
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0
.end method
