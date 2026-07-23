.class public final Lcom/facebook/ads/redexgen/X/1u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/rA;,
        Lcom/facebook/ads/redexgen/X/rB;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/rK;

.field public final A02:Lcom/facebook/ads/redexgen/X/rJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/rB;

.field public final A04:Lcom/facebook/ads/redexgen/X/rB;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/rA;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 120
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bfnfjiUri9kvxuLEKnZU3kJc1ieY23zz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NIX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B1MUzprhDDigVQ4p3NlPN3VyWdkPEAJB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UzK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rOCmuOM4l5uJjn2akKGm2JxYL79BUlOr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kAulvLpzcmVynuK8kNGYEaaJbNqcwElD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7ScKsdjGN77oK2tO1d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1u;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/1u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1u;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/rJ;)V
    .locals 1

    .line 8598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/1u;-><init>(Lcom/facebook/ads/redexgen/X/rJ;ZZ)V

    .line 8599
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/rJ;ZZ)V
    .locals 2

    .line 8600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    .line 8602
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/rB;-><init>(Lcom/facebook/ads/redexgen/X/rC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    .line 8603
    new-instance v0, Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/rB;-><init>(Lcom/facebook/ads/redexgen/X/rC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    .line 8604
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A05:Ljava/util/List;

    .line 8605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1u;->A02:Lcom/facebook/ads/redexgen/X/rJ;

    .line 8606
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/1u;->A08:Z

    .line 8607
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1u;->A07:Z

    .line 8608
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;
    .locals 2

    .line 8609
    if-eqz p0, :cond_0

    .line 8610
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 8611
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_0

    .line 8612
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_0

    .line 8613
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    .line 8614
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 8615
    :cond_0
    const/4 p0, 0x0

    const/16 v1, 0x8f

    const/16 v0, 0x9

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/1u;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/rA;
    .locals 3

    .line 8616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/rA;

    .line 8617
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/rB;->A07(Lcom/facebook/ads/redexgen/X/rB;Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8618
    if-nez v2, :cond_2

    .line 8619
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/rA;->A04(J)Lcom/facebook/ads/redexgen/X/rA;

    move-result-object v2

    .line 8620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8621
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 8622
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8623
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8624
    :cond_1
    return-object v2

    .line 8625
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A04:Lcom/facebook/ads/redexgen/X/rE;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/rA;->A02(Lcom/facebook/ads/redexgen/X/rA;Lcom/facebook/ads/redexgen/X/rE;)Lcom/facebook/ads/redexgen/X/rE;

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "GBjOApmdB9meVYu3h8dWYwSrfWPE5QmB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rSzbUr5mB5cqWCHa6t40U5C3uIAdU8ry"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xc4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1u;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x28t
        0x29t
        0x33t
        0x60t
        0x36t
        0x29t
        0x25t
        0x37t
        0x30t
        0x2ft
        0x29t
        0x2et
        0x34t
        0x60t
        0x28t
        0x21t
        0x33t
        0x60t
        0x2et
        0x2ft
        0x34t
        0x60t
        0x22t
        0x25t
        0x25t
        0x2et
        0x60t
        0x2dt
        0x25t
        0x21t
        0x33t
        0x35t
        0x32t
        0x25t
        0x24t
        0x60t
        0x2ft
        0x32t
        0x60t
        0x29t
        0x33t
        0x60t
        0x21t
        0x60t
        0x27t
        0x32t
        0x2ft
        0x35t
        0x30t
        0x60t
        0x37t
        0x28t
        0x29t
        0x23t
        0x28t
        0x60t
        0x37t
        0x29t
        0x2ct
        0x2ct
        0x60t
        0x2et
        0x25t
        0x36t
        0x25t
        0x32t
        0x60t
        0x32t
        0x25t
        0x34t
        0x35t
        0x32t
        0x2et
        0x60t
        0x21t
        0x60t
        0x2dt
        0x25t
        0x21t
        0x33t
        0x35t
        0x32t
        0x25t
        0x2dt
        0x25t
        0x2et
        0x34t
        0x60t
        0x33t
        0x29t
        0x2et
        0x23t
        0x25t
        0x60t
        0x29t
        0x34t
        0x67t
        0x33t
        0x60t
        0x2dt
        0x21t
        0x24t
        0x25t
        0x60t
        0x35t
        0x30t
        0x60t
        0x2ft
        0x26t
        0x60t
        0x33t
        0x35t
        0x22t
        0x36t
        0x29t
        0x25t
        0x37t
        0x33t
        0x60t
        0x34t
        0x28t
        0x21t
        0x34t
        0x60t
        0x23t
        0x2ft
        0x35t
        0x2ct
        0x24t
        0x60t
        0x22t
        0x25t
        0x60t
        0x2ft
        0x26t
        0x26t
        0x33t
        0x23t
        0x32t
        0x25t
        0x25t
        0x2et
        0x10t
        0x1bt
        0x9t
        0x2dt
        0x1dt
        0x1ft
        0x10t
        0x3dt
        0x26t
        0x3ft
        0x3ft
        0x73t
        0x25t
        0x3at
        0x36t
        0x24t
        0x73t
        0x23t
        0x21t
        0x3ct
        0x23t
        0x36t
        0x21t
        0x27t
        0x2at
        0x73t
        0x35t
        0x3ct
        0x21t
        0x73t
        0x21t
        0x36t
        0x3et
        0x3ct
        0x25t
        0x36t
        0x37t
        0x73t
        0x3at
        0x27t
        0x36t
        0x3et
        0x73t
        0x1et
        0x2t
        0xbt
        0x19t
        0x3ft
        0x8t
        0x1dt
        0x2t
        0x1ft
        0x19t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/rB;)V
    .locals 5

    .line 8626
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/rB;->A02(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/rN;

    .line 8627
    .local v1, "removed":Lcom/facebook/ads/redexgen/X/rN;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/rA;

    .line 8628
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    if-eqz v1, :cond_2

    .line 8629
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A03:Lcom/facebook/ads/redexgen/X/rE;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/rA;->A02(Lcom/facebook/ads/redexgen/X/rA;Lcom/facebook/ads/redexgen/X/rE;)Lcom/facebook/ads/redexgen/X/rE;

    .line 8630
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8631
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/1u;->A07(Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8632
    invoke-virtual {v4, p0}, Lcom/facebook/ads/redexgen/X/rN;->A03(Lcom/facebook/ads/redexgen/X/rD;)V

    .line 8633
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A08:Z

    if-eqz v0, :cond_0

    .line 8634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8635
    :cond_2
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 8636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/16 v1, 0x24

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1u;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0xba

    const/16 v1, 0xa

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1u;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8637
    :cond_3
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/rB;)V
    .locals 3

    .line 8638
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/rB;->A03(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/rN;

    .line 8639
    .local v1, "visible":Lcom/facebook/ads/redexgen/X/rN;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1u;->A07(Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8640
    invoke-virtual {v1, p0}, Lcom/facebook/ads/redexgen/X/rN;->A03(Lcom/facebook/ads/redexgen/X/rD;)V

    goto :goto_0

    .line 8641
    :cond_1
    return-void
.end method

.method private A06(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;>;)V"
        }
    .end annotation

    .line 8642
    .local p0, "toUnregister":Ljava/util/List;, "Ljava/util/List<Lcom/instagram/common/viewpoint/core/ViewpointData<**>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/rN;

    .line 8643
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rA;

    .line 8644
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    if-eqz v0, :cond_0

    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/rN;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "nPwsVC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/rN;->A01:Lcom/facebook/ads/redexgen/X/rE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "zj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    :goto_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/rN;->A01:Lcom/facebook/ads/redexgen/X/rE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A03:Lcom/facebook/ads/redexgen/X/rE;

    if-eq v1, v0, :cond_0

    .line 8645
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/rN;->A03(Lcom/facebook/ads/redexgen/X/rD;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "4Gl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "t26"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 8646
    :cond_3
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/rN;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;)Z"
        }
    .end annotation

    .line 8647
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rN;->A04:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rN;->A00:Lcom/facebook/ads/redexgen/X/rO;

    sget-object v3, Lcom/facebook/ads/redexgen/X/rO;->A04:Lcom/facebook/ads/redexgen/X/rO;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "iICfc1p4CYNR1vFaz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7

    .line 8648
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1u;->A01(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/rA;

    .line 8649
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/rN;->A05:Lcom/facebook/ads/redexgen/X/rN;

    .line 8650
    .local v0, "parentViewpointData":Lcom/facebook/ads/redexgen/X/rN;
    sget-object v0, Lcom/facebook/ads/redexgen/X/rN;->A0B:Lcom/facebook/ads/redexgen/X/rN;

    if-eq v4, v0, :cond_8

    if-eqz v4, :cond_8

    .line 8651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/rB;->A07(Lcom/facebook/ads/redexgen/X/rB;Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v2

    .line 8652
    .local v1, "isFirstTimeSeenThisPass":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/rA;

    .line 8653
    .local v2, "parentViewProperties":Lcom/facebook/ads/redexgen/X/rA;
    if-eqz v2, :cond_1

    .line 8654
    if-eqz v3, :cond_0

    .line 8655
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8656
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A07:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/rN;->A04()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8657
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/rA;->A04(J)Lcom/facebook/ads/redexgen/X/rA;

    move-result-object v3

    .line 8658
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8660
    :cond_1
    if-eqz p4, :cond_5

    if-eqz v3, :cond_5

    .line 8661
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v6

    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 8662
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 8663
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 8664
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 8665
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8666
    invoke-virtual {v6, v5, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 8667
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "H54AceamXdthsYm78mtSydojeY2Fx6Sn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "PVfiJKIqQ6L9JP1UYx1CLIU2NiQOo1Yq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 8668
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/rE;->A04:Lcom/facebook/ads/redexgen/X/rE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "tsuWg7tiHeCbTZ79GKvfVJLQxaexBCGH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "f1Y9d3aTAam6AIKjxx39fqUFlMtOCeIE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/rA;->A02(Lcom/facebook/ads/redexgen/X/rA;Lcom/facebook/ads/redexgen/X/rE;)Lcom/facebook/ads/redexgen/X/rE;

    .line 8669
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 8670
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v4, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8671
    :cond_5
    :goto_1
    if-nez v3, :cond_7

    .line 8672
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8673
    :cond_7
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8674
    .end local v1    # "isFirstTimeSeenThisPass":Z
    .end local v2    # "parentViewProperties":Lcom/facebook/ads/redexgen/X/rA;
    :cond_8
    return-void
.end method

.method public final A4h(JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 8675
    .local p2, "viewportRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1u;->A00:J

    .line 8676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8677
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "xWg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l5f"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 8678
    .local v1, "viewportRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8679
    .end local v1    # "viewportRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8680
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A02(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rN;

    .line 8681
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8682
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/rN;
    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "KXc0LwnJCEJYYpq44EYPYXvj71LHxLBt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "SZ9db6jeJg1WeryC8zmRUBHGUrGxU8hd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 8683
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A02(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "Au"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/rN;

    .line 8684
    .restart local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/rN;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8685
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/rN;
    goto :goto_3

    .line 8686
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rA;

    .line 8687
    .local v1, "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8688
    .end local v1    # "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    goto :goto_4

    .line 8689
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A05(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A05(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8691
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6P(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;>;)V"
        }
    .end annotation

    .line 8692
    .local p2, "recentlyUnregistered":Ljava/util/List;, "Ljava/util/List<Lcom/instagram/common/viewpoint/core/ViewpointData<**>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8693
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1u;->A06(Ljava/util/List;)V

    .line 8694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1u;->A05(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1u;->A04(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1u;->A05(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1u;->A04(Lcom/facebook/ads/redexgen/X/rB;)V

    .line 8698
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    .line 8699
    new-instance v1, Lcom/facebook/ads/redexgen/X/r9;

    .line 8700
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1u;->A05:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/rB;

    .line 8701
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A03(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A03:Lcom/facebook/ads/redexgen/X/rB;

    .line 8702
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rB;->A03(Lcom/facebook/ads/redexgen/X/rB;)Ljava/util/Collection;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/r9;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/rD;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 8703
    const/16 v2, 0x8f

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1u;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8704
    :cond_1
    return-void
.end method

.method public final A8D(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;)V
    .locals 5

    .line 8705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8706
    return-void

    .line 8707
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8708
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    .line 8709
    .local v1, "rect":Landroid/graphics/Rect;
    sget-object v2, Lcom/facebook/ads/redexgen/X/1u;->A0A:[Ljava/lang/String;

    const-string v1, "8y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8710
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8711
    :cond_2
    return-void
.end method

.method public final A9U(Lcom/facebook/ads/redexgen/X/rN;)Lcom/facebook/ads/redexgen/X/rE;
    .locals 3

    .line 8712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8713
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A02:Lcom/facebook/ads/redexgen/X/rE;

    return-object v0

    .line 8714
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rA;->A01(Lcom/facebook/ads/redexgen/X/rA;)Lcom/facebook/ads/redexgen/X/rE;

    move-result-object v2

    .line 8715
    .local v0, "viewState":Lcom/facebook/ads/redexgen/X/rE;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A04:Z

    if-eqz v0, :cond_2

    .line 8716
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/rN;->A00:Lcom/facebook/ads/redexgen/X/rO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/rO;->A04:Lcom/facebook/ads/redexgen/X/rO;

    if-ne v1, v0, :cond_1

    .line 8717
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A03:Lcom/facebook/ads/redexgen/X/rE;

    return-object v0

    .line 8718
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A04:Lcom/facebook/ads/redexgen/X/rE;

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/rN;->A04()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8719
    sget-object v0, Lcom/facebook/ads/redexgen/X/rE;->A02:Lcom/facebook/ads/redexgen/X/rE;

    return-object v0

    .line 8720
    :cond_2
    return-object v2
.end method

.method public final A9W(Landroid/graphics/Rect;)V
    .locals 2

    .line 8721
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 8722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8723
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8724
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8725
    :cond_0
    return-void
.end method

.method public final A9X(Lcom/facebook/ads/redexgen/X/rN;)F
    .locals 5

    .line 8726
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/rA;

    .line 8727
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/rA;
    if-eqz v1, :cond_1

    .line 8728
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1u;->A00(Lcom/facebook/ads/redexgen/X/rA;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8729
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v4, v0

    .line 8730
    .local v2, "totalPossibleArea":I
    const/4 v3, 0x0

    .line 8731
    .local v3, "totalVisibleArea":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/rA;->A05(Lcom/facebook/ads/redexgen/X/rA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8732
    .local p0, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 8733
    .end local p0    # "visibleRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8734
    :cond_0
    int-to-float v1, v3

    int-to-float v0, v4

    div-float/2addr v1, v0

    return v1

    .line 8735
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "totalPossibleArea":I
    .end local v3    # "totalVisibleArea":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final AJu(Lcom/facebook/ads/redexgen/X/rK;)V
    .locals 0

    .line 8736
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1u;->A01:Lcom/facebook/ads/redexgen/X/rK;

    .line 8737
    return-void
.end method
