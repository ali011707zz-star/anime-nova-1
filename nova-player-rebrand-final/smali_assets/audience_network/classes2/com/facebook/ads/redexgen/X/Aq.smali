.class public final Lcom/facebook/ads/redexgen/X/Aq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rQ;


# static fields
.field public static A05:[B


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Landroid/graphics/Rect;

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Lcom/facebook/ads/redexgen/X/rY;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Aq;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/rY;)V
    .locals 1

    .line 29448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Ljava/util/List;

    .line 29450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Landroid/graphics/Rect;

    .line 29451
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A01:Landroid/graphics/Rect;

    .line 29452
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Ljava/lang/ref/WeakReference;

    .line 29453
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Lcom/facebook/ads/redexgen/X/rY;

    .line 29454
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Aq;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x19

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Aq;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x15t
        -0x17t
        -0x8t
        -0x39t
        -0x10t
        -0x13t
        -0xct
        -0x2at
        -0x17t
        -0x19t
        -0x8t
    .end array-data
.end method

.method private final A02(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 29455
    .local p11, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 29456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 29458
    .local v0, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29459
    :cond_0
    return-void

    .line 29460
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A02:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29461
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Lcom/facebook/ads/redexgen/X/rY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rY;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 29462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A03:Lcom/facebook/ads/redexgen/X/rY;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/rY;->A6i(I)Lcom/facebook/ads/redexgen/X/rZ;

    .line 29463
    .local v2, "clipRegion":Lcom/facebook/ads/redexgen/X/rZ;
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Aq;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29464
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A04:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29465
    return-void
.end method


# virtual methods
.method public final A7U()Landroid/content/Context;
    .locals 1

    .line 29466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29467
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public final A9Z(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 29468
    .local p1, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Aq;->A02(Ljava/util/List;)V

    .line 29469
    return-void
.end method
