.class public final Lcom/facebook/ads/redexgen/X/eg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A03:Lcom/facebook/ads/redexgen/X/EA;

.field public final A04:Lcom/facebook/ads/redexgen/X/E7;

.field public final A05:Lcom/facebook/ads/redexgen/X/iS;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eg;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ek;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81775
    .local p3, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81776
    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4R;-><init>(Lcom/facebook/ads/redexgen/X/eg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A04:Lcom/facebook/ads/redexgen/X/E7;

    .line 81777
    new-instance v0, Lcom/facebook/ads/redexgen/X/4Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4Q;-><init>(Lcom/facebook/ads/redexgen/X/eg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A03:Lcom/facebook/ads/redexgen/X/EA;

    .line 81778
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/eg;->A01:I

    .line 81779
    iput v4, p0, Lcom/facebook/ads/redexgen/X/eg;->A00:I

    .line 81780
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/eg;->A06:Ljava/lang/String;

    .line 81781
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eg;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    .line 81782
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/eg;->A07:Ljava/util/Map;

    .line 81783
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/eg;->A08:Z

    .line 81784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eg;->A06:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/iS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/iS;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A05:Lcom/facebook/ads/redexgen/X/iS;

    .line 81785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A04:Lcom/facebook/ads/redexgen/X/E7;

    aput-object v0, v2, v4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A03:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 81786
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/eg;)I
    .locals 2

    .line 81787
    iget v1, p0, Lcom/facebook/ads/redexgen/X/eg;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A01:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/eg;)Lcom/facebook/ads/redexgen/X/iS;
    .locals 0

    .line 81788
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/eg;->A05:Lcom/facebook/ads/redexgen/X/iS;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eg;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/eg;)Ljava/lang/String;
    .locals 0

    .line 81789
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/eg;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eg;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x74t
        -0x63t
        -0x74t
        -0x6bt
        -0x65t
        -0x7at
        -0x70t
        -0x6bt
        -0x75t
        -0x74t
        -0x61t
        0x3t
        0xft
        -0x2t
        0xat
        0x2t
        -0x4t
        0x0t
        0xct
        0x12t
        0xbt
        0x11t
        -0x5at
        -0x4et
        -0x5ft
        -0x53t
        -0x5bt
        -0x4dt
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/eg;)Z
    .locals 0

    .line 81790
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/eg;->A08:Z

    return p0
.end method


# virtual methods
.method public final A06()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A05:Lcom/facebook/ads/redexgen/X/iS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iS;->A03()Ljava/util/List;

    move-result-object v0

    .line 81792
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/video/framebasedlogging/VideoFrameInfo;>;"
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iS;->A01(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 81793
    .local v1, "encodedFrameData":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 81794
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A07:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A07:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81796
    :cond_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81797
    iget v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81798
    iget v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81799
    return-object v4
.end method

.method public final A07()V
    .locals 4

    .line 81800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A04:Lcom/facebook/ads/redexgen/X/E7;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eg;->A03:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 81801
    return-void
.end method
