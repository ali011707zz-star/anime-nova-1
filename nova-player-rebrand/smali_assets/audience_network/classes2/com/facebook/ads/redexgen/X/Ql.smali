.class public final Lcom/facebook/ads/redexgen/X/Ql;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qk;
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Qk;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ql;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qk;)V
    .locals 0

    .line 60538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60539
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qk;

    .line 60540
    return-void
.end method

.method private A00(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/QN;",
            ">;)I"
        }
    .end annotation

    .line 60541
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v1, "i":I
    if-ltz v0, :cond_0

    .line 60542
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60543
    .local v2, "op1":Lcom/facebook/ads/redexgen/X/QN;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ql;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60544
    .end local v1    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ql;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ql;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3dt
        0x33t
        0x3at
    .end array-data
.end method

.method private A03(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/QN;",
            ">;II)V"
        }
    .end annotation

    .line 60545
    .local p6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60546
    .local v0, "moveOp":Lcom/facebook/ads/redexgen/X/QN;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60547
    .local p4, "nextOp":Lcom/facebook/ads/redexgen/X/QN;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ql;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A04(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/QN;",
            ">;)V"
        }
    .end annotation

    .line 60548
    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ql;->A00(Ljava/util/List;)I

    move-result v1

    .local v1, "badMove":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 60549
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ql;->A03(Ljava/util/List;II)V

    const/4 v0, 0x0

    throw v0

    .line 60550
    :cond_0
    return-void
.end method
