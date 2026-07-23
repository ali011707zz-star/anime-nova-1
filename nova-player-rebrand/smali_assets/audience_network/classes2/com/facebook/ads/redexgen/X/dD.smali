.class public abstract Lcom/facebook/ads/redexgen/X/dD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/dC;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2685
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "M7M7680JiQXMJzeuHBUdBK3CqcsunIE3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7YJQc0MEUr6fNb1HoLhvfznehf2fNPi1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fqXve0BGHc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EJDyhBK8ScH8NN0H4G45MCvGKFSIU6i3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lE5hsHUrpnTpaSUAUiDOdKdDJm2EXpBt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fXhWa5fzMs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jGMjXmbPjJmsUXbAj46daPhZmilD9JtA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gy7nSuWAyo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dD;->A00:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    return-void
.end method

.method public static A00()I
    .locals 4

    .line 79818
    sget-object v3, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/dD;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/dD;->A00:[Ljava/lang/String;

    const-string v1, "KcOG1rzwVGm5OqslsWQoAqhkYEC7FRij"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Dhj4Lprngz6YVn4AutwbBiUWJOZdaDii"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/dA;)Lcom/facebook/ads/redexgen/X/dC;
    .locals 4

    .line 79819
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/dC;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/dC;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;I)V

    .line 79820
    .local v0, "webViewController":Lcom/facebook/ads/redexgen/X/dC;
    invoke-virtual {v3, p3}, Lcom/facebook/ads/redexgen/X/dC;->A0b(Lcom/facebook/ads/redexgen/X/dA;)V

    .line 79821
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dC;->A0X()V

    .line 79822
    sget-object v2, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79823
    return-object v3
.end method

.method public static A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dC;
    .locals 1

    .line 79824
    sget-object v0, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    .line 79825
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 79826
    .local v0, "dynamicWebViewControllerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController;>;"
    if-eqz v0, :cond_0

    .line 79827
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dC;

    return-object v0

    .line 79828
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/dC;)V
    .locals 3

    .line 79829
    sget-object v2, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    .line 79830
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 79831
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79832
    return-void
.end method

.method public static A04(Ljava/lang/String;)V
    .locals 1

    .line 79833
    sget-object v0, Lcom/facebook/ads/redexgen/X/dD;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79834
    return-void
.end method
