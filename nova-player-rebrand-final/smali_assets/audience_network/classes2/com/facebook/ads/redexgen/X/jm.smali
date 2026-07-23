.class public final Lcom/facebook/ads/redexgen/X/jm;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/jl;->A09()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jm;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88950
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jm;->A00:Lcom/facebook/ads/redexgen/X/jl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jm;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jm;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x6bt
        -0x74t
        -0x5ft
        -0x74t
        -0x62t
        -0x72t
        -0x63t
        -0x6ct
        -0x65t
        -0x61t
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 88951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jm;->A00:Lcom/facebook/ads/redexgen/X/jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jl;->A02(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKw()V

    .line 88952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jm;->A00:Lcom/facebook/ads/redexgen/X/jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jl;->A03(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/ay;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jm;->A00:Lcom/facebook/ads/redexgen/X/jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jl;->A01(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/jn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/ay;->loadUrl(Ljava/lang/String;)V

    .line 88953
    return-void
.end method
