.class public final Lcom/facebook/ads/redexgen/X/Ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/rI;
    }
.end annotation


# static fields
.field public static A07:Z

.field public static A08:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/rY;

.field public A01:Lcom/facebook/ads/redexgen/X/rI;

.field public A02:Lcom/facebook/ads/redexgen/X/r5;

.field public final A03:Lcom/facebook/ads/redexgen/X/rI;

.field public final A04:Lcom/facebook/ads/redexgen/X/rJ;

.field public final A05:Lcom/facebook/ads/redexgen/X/Am;

.field public final A06:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 643
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A04()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Ao;->A07:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rY;Lcom/facebook/ads/redexgen/X/rJ;)V
    .locals 1

    .line 29391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29392
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:Ljava/util/LinkedHashMap;

    .line 29393
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ap;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ap;-><init>(Lcom/facebook/ads/redexgen/X/Ao;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:Lcom/facebook/ads/redexgen/X/rI;

    .line 29394
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:Lcom/facebook/ads/redexgen/X/Am;

    .line 29395
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:Lcom/facebook/ads/redexgen/X/rY;

    .line 29396
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ao;->A04:Lcom/facebook/ads/redexgen/X/rJ;

    .line 29397
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ao;)Lcom/facebook/ads/redexgen/X/rI;
    .locals 0

    .line 29398
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/rI;

    return-object p0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/Ao;
    .locals 4

    .line 29399
    new-instance v3, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Am;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Ar;-><init>()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ao;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ao;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rY;Lcom/facebook/ads/redexgen/X/rJ;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ao;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 29400
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A06:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A08:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1ct
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rR;)V
    .locals 2

    .line 29401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:Lcom/facebook/ads/redexgen/X/Am;

    .line 29402
    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/r5;->A01(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rR;)Lcom/facebook/ads/redexgen/X/r5;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:Lcom/facebook/ads/redexgen/X/r5;

    .line 29403
    const/4 v1, 0x0

    .line 29404
    .local v0, "localViewpointListener":Lcom/facebook/ads/redexgen/X/rK;
    if-eqz v1, :cond_0

    .line 29405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:Lcom/facebook/ads/redexgen/X/r5;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/r5;->A04(Lcom/facebook/ads/redexgen/X/rK;)V

    .line 29406
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:Lcom/facebook/ads/redexgen/X/r5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A03:Lcom/facebook/ads/redexgen/X/rI;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r5;->A05(Lcom/facebook/ads/redexgen/X/rI;)V

    .line 29407
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V
    .locals 2

    .line 29408
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:Lcom/facebook/ads/redexgen/X/r5;

    .line 29409
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/r5;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 29410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 29411
    invoke-virtual {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/r5;->A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V

    .line 29412
    :cond_0
    :goto_0
    return-void

    .line 29413
    :cond_1
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/r5;->A06(Lcom/facebook/ads/redexgen/X/r4;)V

    goto :goto_0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V
    .locals 5

    .line 29414
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:Lcom/facebook/ads/redexgen/X/r5;

    .line 29415
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/r5;
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 29416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A05:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 29417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/rN;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/facebook/ads/redexgen/X/rN;->A02:Ljava/lang/String;

    .line 29418
    invoke-virtual {v4, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/r5;->A08(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 29419
    :cond_0
    :goto_0
    return-void

    .line 29420
    :cond_1
    invoke-virtual {v4, p1, p3}, Lcom/facebook/ads/redexgen/X/r5;->A09(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V

    goto :goto_0
.end method


# virtual methods
.method public final A08(Landroid/view/View;)V
    .locals 2

    .line 29421
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ak;->A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Ak;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A06(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V

    .line 29422
    return-void

    .line 29423
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/rN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;)V"
        }
    .end annotation

    .line 29424
    .local p2, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ak;->A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Ak;

    move-result-object v0

    .line 29425
    :goto_0
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 29426
    return-void

    .line 29427
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/rL;Landroid/view/View;)V
    .locals 3

    .line 29428
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 29429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:Lcom/facebook/ads/redexgen/X/rY;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Aq;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/Aq;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/rY;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/1u;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/1u;-><init>(Lcom/facebook/ads/redexgen/X/rJ;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A05(Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rR;)V

    .line 29430
    :cond_0
    return-void
.end method
