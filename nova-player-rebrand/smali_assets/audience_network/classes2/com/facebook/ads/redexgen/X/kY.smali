.class public abstract Lcom/facebook/ads/redexgen/X/kY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/M0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFunnelParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/M0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kY;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90649
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kY;, "Lcom/facebook/ads/funnel/FunnelParamType$AbstractFunnelParamType<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90650
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:Ljava/lang/String;

    .line 90651
    return-void
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x15

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kY;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x53t
        -0x5ct
        -0x5ct
    .end array-data
.end method


# virtual methods
.method public A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/ads/redexgen/X/Lz;"
        }
    .end annotation

    .line 90652
    .local v2, "this":Lcom/facebook/ads/redexgen/X/kY;, "Lcom/facebook/ads/funnel/FunnelParamType$AbstractFunnelParamType<TT;>;"
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kY;->A02(III)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Lz;-><init>(Lcom/facebook/ads/redexgen/X/M0;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 90653
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kY;, "Lcom/facebook/ads/funnel/FunnelParamType$AbstractFunnelParamType<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:Ljava/lang/String;

    return-object v0
.end method
