.class public final Lcom/facebook/ads/redexgen/X/R9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/R8;
    }
.end annotation


# instance fields
.field public A00:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/R8;",
            ">;"
        }
    .end annotation
.end field

.field public A01:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    .line 61219
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    return-void
.end method

.method private final A00(JJ)J
    .locals 4

    .line 61220
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 61221
    return-wide p3

    .line 61222
    :cond_0
    const-wide/16 v2, 0x4

    div-long/2addr p1, v2

    const-wide/16 v0, 0x3

    mul-long/2addr p1, v0

    div-long/2addr p3, v2

    add-long/2addr p1, p3

    return-wide p1
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/R8;
    .locals 2

    .line 61223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R8;

    .line 61224
    .local v0, "scrapData":Lcom/facebook/ads/redexgen/X/R8;
    if-nez v1, :cond_0

    .line 61225
    new-instance v1, Lcom/facebook/ads/redexgen/X/R8;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    .line 61226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61227
    :cond_0
    return-object v1
.end method

.method private final A02()V
    .locals 2

    .line 61228
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R8;

    .line 61230
    .local v1, "data":Lcom/facebook/ads/redexgen/X/R8;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/R8;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61231
    .end local v1    # "data":Lcom/facebook/ads/redexgen/X/R8;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61232
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03(I)Lcom/facebook/ads/redexgen/X/RK;
    .locals 2

    .line 61233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R8;

    .line 61234
    .local v0, "scrapData":Lcom/facebook/ads/redexgen/X/R8;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/R8;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61235
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/R8;->A03:Ljava/util/ArrayList;

    .line 61236
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    return-object v0

    .line 61237
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04()V
    .locals 1

    .line 61238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    .line 61239
    return-void
.end method

.method public final A05(IJ)V
    .locals 3

    .line 61240
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A01(I)Lcom/facebook/ads/redexgen/X/R8;

    move-result-object v2

    .line 61241
    .local v0, "scrapData":Lcom/facebook/ads/redexgen/X/R8;
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/R8;->A01:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/facebook/ads/redexgen/X/R9;->A00(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/R8;->A01:J

    .line 61242
    return-void
.end method

.method public final A06(IJ)V
    .locals 3

    .line 61243
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A01(I)Lcom/facebook/ads/redexgen/X/R8;

    move-result-object v2

    .line 61244
    .local v0, "scrapData":Lcom/facebook/ads/redexgen/X/R8;
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/R8;->A02:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/facebook/ads/redexgen/X/R9;->A00(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/R8;->A02:J

    .line 61245
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Qq;)V
    .locals 1

    .line 61246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    .line 61247
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Qq;Lcom/facebook/ads/redexgen/X/Qq;Z)V
    .locals 1

    .line 61248
    if-eqz p1, :cond_0

    .line 61249
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R9;->A04()V

    .line 61250
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    if-nez v0, :cond_1

    .line 61251
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R9;->A02()V

    .line 61252
    :cond_1
    if-eqz p2, :cond_2

    .line 61253
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/R9;->A07(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 61254
    :cond_2
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 3

    .line 61255
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v1

    .line 61256
    .local v0, "viewType":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/R9;->A01(I)Lcom/facebook/ads/redexgen/X/R8;

    move-result-object v0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/R8;->A03:Ljava/util/ArrayList;

    .line 61257
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/R8;->A00:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 61258
    return-void

    .line 61259
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0W()V

    .line 61260
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61261
    return-void
.end method

.method public final A0A(IJJ)Z
    .locals 5

    .line 61262
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A01(I)Lcom/facebook/ads/redexgen/X/R8;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/R8;->A01:J

    .line 61263
    .local v0, "expectedDurationNs":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    add-long/2addr p2, v3

    cmp-long v0, p2, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(IJJ)Z
    .locals 5

    .line 61264
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A01(I)Lcom/facebook/ads/redexgen/X/R8;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/R8;->A02:J

    .line 61265
    .local v0, "expectedDurationNs":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    add-long/2addr p2, v3

    cmp-long v0, p2, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
