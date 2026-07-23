.class public final Lcom/facebook/ads/redexgen/X/jl;
.super Lcom/facebook/ads/redexgen/X/N3;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/jn;

.field public A01:Lcom/facebook/ads/redexgen/X/Vp;

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VA;

.field public final A05:Lcom/facebook/ads/redexgen/X/ay;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3132
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jl;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/jl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jl;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/ay;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/N4;Lcom/facebook/ads/redexgen/X/Vp;)V
    .locals 0

    .line 88919
    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/redexgen/X/N3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/N4;Lcom/facebook/ads/redexgen/X/fp;)V

    .line 88920
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jl;->A04:Lcom/facebook/ads/redexgen/X/VA;

    .line 88921
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jl;->A05:Lcom/facebook/ads/redexgen/X/ay;

    .line 88922
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 88923
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:Lcom/facebook/ads/redexgen/X/Vp;

    .line 88924
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/jn;
    .locals 0

    .line 88925
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 88926
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/jl;)Lcom/facebook/ads/redexgen/X/ay;
    .locals 0

    .line 88927
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jl;->A05:Lcom/facebook/ads/redexgen/X/ay;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jl;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jl;->A06:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x37t
        -0x38t
        -0x2bt
        -0x2bt
        -0x34t
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88928
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 88930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    .line 88931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A05()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jl;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88932
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88933
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 88934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88935
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:Lcom/facebook/ads/redexgen/X/Vp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Vp;

    if-ne v1, v0, :cond_1

    .line 88936
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88937
    .local v0, "placementType":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    .line 88938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 88939
    .end local v0    # "placementType":Ljava/lang/String;
    :cond_0
    return-void

    .line 88940
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final declared-synchronized A09()V
    .locals 1

    monitor-enter p0

    .line 88941
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A02:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    if-nez v0, :cond_0

    goto :goto_0

    .line 88942
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A02:Z

    .line 88943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jn;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88944
    new-instance v0, Lcom/facebook/ads/redexgen/X/jm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/jm;-><init>(Lcom/facebook/ads/redexgen/X/jl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88945
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/jl;
    :cond_1
    monitor-exit p0

    return-void

    .line 88946
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 88947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/jn;)V
    .locals 0

    .line 88948
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:Lcom/facebook/ads/redexgen/X/jn;

    .line 88949
    return-void
.end method
