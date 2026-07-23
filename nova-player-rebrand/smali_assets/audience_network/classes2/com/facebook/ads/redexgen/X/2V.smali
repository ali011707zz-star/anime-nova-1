.class public final Lcom/facebook/ads/redexgen/X/2V;
.super Lcom/facebook/ads/redexgen/X/CM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownClientBundleResponse"
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2V;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2d;)V
    .locals 1

    .line 9281
    sget-object v0, Lcom/facebook/ads/redexgen/X/gU;->A04:Lcom/facebook/ads/redexgen/X/gU;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/CM;-><init>(Lcom/facebook/ads/redexgen/X/2d;Lcom/facebook/ads/redexgen/X/gU;)V

    .line 9282
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2V;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x66

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2V;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x22t
        0x31t
        0xft
        0x22t
        0x2et
        0x32t
        0x26t
        0x2ft
        0x22t
        0x30t
        0x10t
        0x36t
        0x2bt
        0x20t
    .end array-data
.end method


# virtual methods
.method public final A4D(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/gK;",
            "Lcom/facebook/ads/redexgen/X/gh;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/sync/SyncModifiableBundle;",
            "Lcom/facebook/ads/redexgen/X/gU;",
            ">;)V"
        }
    .end annotation

    .line 9283
    .local v2, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2V;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
