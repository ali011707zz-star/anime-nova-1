.class public final Lcom/facebook/ads/redexgen/X/ld;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# instance fields
.field public final A00:[J

.field public final A01:[Lcom/facebook/ads/redexgen/X/pT;


# direct methods
.method public constructor <init>([Lcom/facebook/ads/redexgen/X/pT;[J)V
    .locals 0

    .line 94845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94846
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ld;->A01:[Lcom/facebook/ads/redexgen/X/pT;

    .line 94847
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    .line 94848
    return-void
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 94849
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v2

    .line 94850
    .local v0, "index":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A01:[Lcom/facebook/ads/redexgen/X/pT;

    aget-object v1, v0, v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/pT;->A0J:Lcom/facebook/ads/redexgen/X/pT;

    if-ne v1, v0, :cond_1

    .line 94851
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94852
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A01:[Lcom/facebook/ads/redexgen/X/pT;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A83(I)J
    .locals 2

    .line 94853
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 94854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 94855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 94856
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 94857
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A84()I
    .locals 1

    .line 94858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    array-length v0, v0

    return v0
.end method

.method public final A8a(J)I
    .locals 2

    .line 94859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0K([JJZZ)I

    move-result v1

    .line 94860
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ld;->A00:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
