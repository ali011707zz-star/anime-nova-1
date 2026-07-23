.class public Lcom/facebook/ads/redexgen/X/ju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mw;
.implements Lcom/facebook/ads/redexgen/X/N1;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/ji;

.field public A02:Lcom/facebook/ads/redexgen/X/NG;

.field public A03:Lcom/facebook/ads/redexgen/X/NH;

.field public A04:Lcom/facebook/ads/redexgen/X/Va;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3133
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "axrzCdv0FVVdCRJ2G5bzsKW6gzdnjkd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bTiRlDodVRVUvI5asAv5OrmPjdR2kQoL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0F0kzsbgf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9OhtkIX5JTQzZAf31yyS0L6RFdCICf7G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5UohLNEI7iVSyxaj4LiJgBVL6R7sy1L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7foeJoxu0TAivWs2uWCvQbVxkZa0ERHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EHJaWrfXkxbvFmDXjSXoaOL8kiGJisUm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EwwWMCMqNj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ju;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/ju;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ju;->A0E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 89029
    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ji;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ju;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ji;)V

    .line 89030
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ji;)V
    .locals 1

    .line 89031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89032
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Ljava/lang/String;

    .line 89033
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 89034
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 89036
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ju;)Lcom/facebook/ads/redexgen/X/ji;
    .locals 0

    .line 89037
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ju;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 89038
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "ypXQoKhxcHRWJrqojmqi5sMtZ7xfThaX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2LOy6kLjroQDrfbojOuFHdbjLd88ORkx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89039
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89040
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x76

    const/4 v1, 0x4

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89041
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89042
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89043
    :cond_0
    const/16 v2, 0x66

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89044
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89045
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89046
    :cond_1
    return-object v3
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x7a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ju;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x12t
        0x17t
        0x6t
        0x2t
        0x13t
        0x4t
        0x56t
        0x17t
        0x1at
        0x4t
        0x13t
        0x17t
        0x12t
        0xft
        0x56t
        0x1at
        0x19t
        0x17t
        0x12t
        0x13t
        0x12t
        0x56t
        0x12t
        0x17t
        0x2t
        0x17t
        0x2t
        0x2dt
        0x28t
        0x22t
        0x2at
        0x61t
        0x29t
        0x20t
        0x31t
        0x31t
        0x24t
        0x2ft
        0x24t
        0x25t
        0x61t
        0x2et
        0x2ft
        0x61t
        0x2dt
        0x2et
        0x22t
        0x2at
        0x32t
        0x22t
        0x33t
        0x24t
        0x24t
        0x2ft
        0x61t
        0x20t
        0x25t
        0x57t
        0x78t
        0x7dt
        0x77t
        0x7ft
        0x34t
        0x78t
        0x7bt
        0x73t
        0x73t
        0x71t
        0x70t
        0x77t
        0x75t
        0x78t
        0x78t
        0x71t
        0x66t
        0x40t
        0x6dt
        0x64t
        0x71t
        0x2et
        0x2ct
        0x3ft
        0x29t
        0x2et
        0x23t
        0x39t
        0x55t
        0x57t
        0x44t
        0x52t
        0x5ft
        0x58t
        0x52t
        0x72t
        0x65t
        0x3at
        0x35t
        0x20t
        0x3dt
        0x22t
        0x31t
        0xct
        0x11t
        0x1et
        0xft
        0xct
        0x17t
        0x10t
        0xbt
        0x64t
        0x7ft
        0x78t
        0x60t
        0x64t
        0x74t
        0x58t
        0x75t
        0x21t
        0x3et
        0x32t
        0x20t
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ji;)V
    .locals 9

    .line 89047
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:Z

    if-nez v0, :cond_2

    .line 89048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0f()Ljava/util/List;

    move-result-object v8

    .line 89050
    .local v0, "carouselModels":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 89051
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 89052
    .local v1, "cardCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 89053
    .local v2, "carousel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    const/4 v5, 0x0

    .local v3, "cardIndex":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 89054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/ju;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 89055
    .local v4, "adapter":Lcom/facebook/ads/redexgen/X/ju;
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/ju;->A05(Lcom/facebook/ads/redexgen/X/ji;)V

    .line 89056
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:Lcom/facebook/ads/redexgen/X/Va;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/UK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Tx;Lcom/facebook/ads/redexgen/X/Va;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89057
    .end local v4    # "adapter":Lcom/facebook/ads/redexgen/X/ju;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89058
    .end local v3    # "cardIndex":I
    :cond_0
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:Ljava/util/List;

    .line 89059
    .end local v1    # "cardCount":I
    .end local v2    # "carousel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:Z

    .line 89060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ju;->A07()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A07:Z

    .line 89061
    return-void

    .line 89062
    .end local v0    # "carouselModels":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A06(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89063
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ju;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 89064
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 89065
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/jv;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/jv;-><init>(Lcom/facebook/ads/redexgen/X/ju;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A09()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 89067
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89068
    :catch_0
    return-void
.end method

.method private A07()Z
    .locals 2

    .line 89069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89070
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-nez v0, :cond_3

    .line 89073
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 89074
    :goto_0
    return v0

    .line 89075
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 89076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A02()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 89077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A05()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 2

    .line 89078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A08()I

    move-result v1

    .line 89079
    .local v0, "snapshotCompressQuality":I
    if-ltz v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 89080
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 89081
    :cond_1
    return v1
.end method

.method public final A0B()I
    .locals 1

    .line 89082
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 89083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0B()I

    move-result v0

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 89084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0C()I

    move-result v0

    return v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/ji;
    .locals 1

    .line 89085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/NG;
    .locals 1

    .line 89086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1

    .line 89087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;"
        }
    .end annotation

    .line 89088
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89089
    const/4 v0, 0x0

    return-object v0

    .line 89090
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:Ljava/util/List;

    return-object v0
.end method

.method public final A0I()V
    .locals 5

    .line 89091
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:Z

    if-nez v0, :cond_2

    .line 89092
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0c()Ljava/lang/String;

    move-result-object v4

    .line 89093
    .local v0, "usedReportUrl":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 89094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "MHNGbcOaMZIG61BxjY7eI95TuiNlx0Gr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kvjKrlZQ6RBIZv1Jj5ESJw4vFB55PB3z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/VA;->AGz(Ljava/lang/String;)V

    .line 89095
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A09:Z

    .line 89096
    .end local v0    # "usedReportUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final A0J()V
    .locals 2

    .line 89097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    .line 89099
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->unregisterView()V

    .line 89100
    .end local v1    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    goto :goto_0

    .line 89101
    :cond_0
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/NG;)V
    .locals 0

    .line 89102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    .line 89103
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NG;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/Va;)V
    .locals 4

    .line 89104
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    .line 89105
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/ju;->A04:Lcom/facebook/ads/redexgen/X/Va;

    .line 89106
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 89107
    .local v0, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    .line 89108
    .local v1, "definition":Lcom/facebook/ads/redexgen/X/Tx;
    if-eqz v0, :cond_0

    .line 89109
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A06()I

    move-result v0

    .line 89110
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A00:I

    .line 89111
    const/16 v2, 0x5e

    const/4 v1, 0x2

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89112
    invoke-static {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/NI;->A00(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    .line 89113
    .local v2, "parentAdModel":Lcom/facebook/ads/redexgen/X/ji;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ju;->A05(Lcom/facebook/ads/redexgen/X/ji;)V

    .line 89114
    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89115
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 89116
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/NG;->AEz(Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 89117
    return-void

    .line 89118
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 89119
    :cond_1
    if-eqz p2, :cond_2

    .line 89120
    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/NG;->AEw(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 89121
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NH;

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/NH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/NG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:Lcom/facebook/ads/redexgen/X/NH;

    .line 89122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A02()V

    .line 89123
    return-void
.end method

.method public final A0M(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89124
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89125
    return-void

    .line 89126
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A26(Landroid/content/Context;)Z

    move-result v0

    .line 89127
    .local v0, "shouldBlockLockscreenClicks":Z
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YC;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89128
    sget-object v3, Lcom/facebook/ads/redexgen/X/ju;->A0E:Ljava/lang/String;

    const/16 v2, 0x1b

    const/16 v1, 0x1f

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89129
    return-void

    .line 89130
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 89131
    .local v1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 89132
    invoke-interface {v7, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89133
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89134
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x57

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89135
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89136
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/16 v1, 0xa

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89137
    const/16 v2, 0x6e

    const/16 v1, 0x8

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0B:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89138
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 89139
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89140
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89141
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0E()Landroid/net/Uri;

    move-result-object v6

    .line 89142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 89143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v8

    .line 89144
    :goto_0
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    .line 89145
    .local v2, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 89146
    .local v3, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    if-eqz v0, :cond_4

    .line 89147
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Mt;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 89148
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_5

    .line 89149
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v2, 0x3a

    const/16 v1, 0xc

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/XI;->A04(Landroid/content/Context;Ljava/lang/String;)V

    .line 89150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    if-eqz v0, :cond_5

    .line 89151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/NG;->AEv(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 89152
    :cond_5
    return-void

    .line 89153
    :cond_6
    move-object v8, v2

    goto :goto_0
.end method

.method public final A0N(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89154
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 89155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/VA;->AB6(Ljava/lang/String;Ljava/util/Map;)V

    .line 89157
    return-void
.end method

.method public final A0O(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89158
    .local v5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89159
    return-void

    .line 89160
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:Z

    if-nez v0, :cond_b

    .line 89161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    if-eqz v0, :cond_2

    .line 89162
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A02:Lcom/facebook/ads/redexgen/X/NG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "N1HzTzVNk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p0}, Lcom/facebook/ads/redexgen/X/NG;->AEx(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 89163
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89164
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 89165
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89166
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89167
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x57

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89168
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89169
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 89170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0j()Z

    move-result v0

    if-nez v0, :cond_6

    .line 89171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 89172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89173
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0a()Ljava/lang/String;

    move-result-object v5

    .line 89174
    const/16 v7, 0x60

    const/4 v6, 0x6

    const/16 v4, 0x4f

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "Q8Us8dZOubCsANiQB8YQBmsKLdjgWIPJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Pg8pQUM49Vm5a0t7ebabBeivyd2Kgjff"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v7, v6, v4}, Lcom/facebook/ads/redexgen/X/ju;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 89175
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89176
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 89177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 89178
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89179
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0T()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0U()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "BGAjHSzJz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_a

    .line 89180
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/ju;->A06(Ljava/util/Map;Ljava/util/Map;)V

    .line 89181
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A08:Z

    .line 89182
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 89183
    const/4 v0, 0x1

    return v0
.end method

.method public final A0Q()Z
    .locals 1

    .line 89184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0E()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R()Z
    .locals 1

    .line 89185
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A06:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A07:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0S()Z
    .locals 1

    .line 89186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0i()Z

    move-result v0

    return v0
.end method

.method public final A0T()Z
    .locals 1

    .line 89187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89189
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89190
    :goto_0
    return v0

    .line 89191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0U()Z
    .locals 1

    .line 89192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89193
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 89194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89195
    :goto_0
    return v0

    .line 89196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 89197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89198
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7p()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A8K()Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1

    .line 89199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A8K()Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    return-object v0
.end method

.method public A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 89200
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AKL()Z
    .locals 1

    .line 89201
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 89202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:Lcom/facebook/ads/redexgen/X/NH;

    if-eqz v0, :cond_1

    .line 89203
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ju;->A03:Lcom/facebook/ads/redexgen/X/NH;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ju;->A0D:[Ljava/lang/String;

    const-string v1, "xLZjaQWgus"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NH;->A03()V

    .line 89204
    :cond_1
    return-void
.end method
