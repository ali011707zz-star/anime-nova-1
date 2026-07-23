.class public abstract Lcom/facebook/ads/redexgen/X/Qy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qw;,
        Lcom/facebook/ads/redexgen/X/Qx;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Qw;

.field public A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1604
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BOchn05cOqPQPKgaZhD7MWqYHqoCKx7o"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EPTevQXo6AzOyuxFlfcAvx5eJdnVP8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6fNY9lNhy7nUhuOGP7YDUX6WqdzgNzMN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SLjIMlZrt8LApw5SyAUFDc4ipDag7tTu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zXvx6U5xIRhnU3fWG5rnYTWUnq20aSrc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "c4GOdlXhzm3270NA43EFNLoVECdVoF38"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qy;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qy;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A04:Lcom/facebook/ads/redexgen/X/Qw;

    .line 60654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A05:Ljava/util/ArrayList;

    .line 60655
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A00:J

    .line 60656
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A03:J

    .line 60657
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A02:J

    .line 60658
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A01:J

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/RK;)I
    .locals 4

    .line 60659
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/RK;->A06(Lcom/facebook/ads/redexgen/X/RK;)I

    move-result v0

    and-int/lit8 v3, v0, 0xe

    .line 60660
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60661
    const/4 v0, 0x4

    return v0

    .line 60662
    :cond_0
    and-int/lit8 v0, v3, 0x4

    if-nez v0, :cond_1

    .line 60663
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RK;->A0P()I

    move-result v2

    .line 60664
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RK;->A0M()I

    move-result v1

    .line 60665
    .local v2, "pos":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v2, v1, :cond_1

    .line 60666
    or-int/lit16 v3, v3, 0x800

    .line 60667
    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    return v3
.end method

.method private final A07()Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1

    .line 60668
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qx;-><init>()V

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qy;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6d

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qy;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qy;->A07:[Ljava/lang/String;

    const-string v1, "awpTB9u15TkHVvPjjOCd09Fy8dol99E"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qy;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x4bt
        0x1et
        0x4bt
        0x46t
        0x4at
        0x3et
        0x51t
        0x46t
        0x4ct
        0x4bt
        0x50t
        0x23t
        0x46t
        0x4bt
        0x46t
        0x50t
        0x45t
        0x42t
        0x41t
    .end array-data
.end method


# virtual methods
.method public final A0A()J
    .locals 2

    .line 60669
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A00:J

    return-wide v0
.end method

.method public final A0B()J
    .locals 2

    .line 60670
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A01:J

    return-wide v0
.end method

.method public final A0C()J
    .locals 2

    .line 60671
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A02:J

    return-wide v0
.end method

.method public final A0D()J
    .locals 2

    .line 60672
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A03:J

    return-wide v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1

    .line 60673
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qy;->A07()Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Qx;->A01(Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RK;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/Qx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/RH;",
            "Lcom/facebook/ads/redexgen/X/RK;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Qx;"
        }
    .end annotation

    .line 60674
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qy;->A07()Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Qx;->A01(Lcom/facebook/ads/redexgen/X/RK;)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v0

    return-object v0
.end method

.method public final A0G()V
    .locals 3

    .line 60675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60676
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 60677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qy;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60678
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60679
    return-void
.end method

.method public abstract A0H()V
.end method

.method public abstract A0I()V
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/Qw;)V
    .locals 0

    .line 60680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qy;->A04:Lcom/facebook/ads/redexgen/X/Qw;

    .line 60681
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 1

    .line 60682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A04:Lcom/facebook/ads/redexgen/X/Qw;

    if-eqz v0, :cond_0

    .line 60683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qy;->A04:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qw;->ACv(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60684
    :cond_0
    return-void
.end method

.method public abstract A0L(Lcom/facebook/ads/redexgen/X/RK;)V
.end method

.method public abstract A0M()Z
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/RK;)Z
.end method

.method public abstract A0O(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z
.end method

.method public abstract A0P(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z
.end method

.method public abstract A0Q(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z
.end method

.method public A0S(Lcom/facebook/ads/redexgen/X/RK;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/RK;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 60685
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Qy;->A0N(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    return v0
.end method
