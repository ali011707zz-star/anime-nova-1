.class public final Lcom/facebook/ads/redexgen/X/De;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/49;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/49<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 697
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wnvxif6ytcBGtz0Mqv5PMSHqncXz0DK7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "L7XB5FnCPhx5DqxmHlZAG0IW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W7hvMAjIuj2lsI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WrlikZWMylRqaSPi0Ibe0HqhEkIhSSyj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "po5n5kVohPdvLQNJ9M8nO8P4vS7WmOX1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qra4pPEOgaq041jIiRoYAjwA6HXH5OR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0kvmHOBdOwqUCsJ2namrKa5OUETi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Uzr0GTjpGam7FLw5cJa3iEu5W45H5eya"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/De;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34103
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/nZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nZ;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;-><init>(Lcom/facebook/ads/redexgen/X/49;)V

    .line 34104
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/49;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/49<",
            "TV;>;)V"
        }
    .end annotation

    .line 34105
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    .local p1, "removeCallback":Lcom/facebook/ads/redexgen/X/49;, "Lcom/facebook/ads/androidx/media3/common/util/Consumer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    .line 34107
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Lcom/facebook/ads/redexgen/X/49;

    .line 34108
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34109
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 34110
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A01(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 34111
    .local v2, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 34112
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34113
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 34114
    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    goto :goto_0

    .line 34115
    :cond_1
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 34116
    iget v3, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A03:[Ljava/lang/String;

    const-string v1, "5gSetCnK4GRsLk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9X4w0tOvMLq1romZr5jnatJ22c9uDFke"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    goto :goto_1

    .line 34117
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A03:[Ljava/lang/String;

    const-string v1, "mGDCyGfOZW37eucZgDEYXrj36iZYXBw1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A02()V
    .locals 3

    .line 34118
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 34119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Lcom/facebook/ads/redexgen/X/49;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/49;->A39(Ljava/lang/Object;)V

    .line 34120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34121
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34123
    return-void
.end method

.method public final A03(I)V
    .locals 3

    .line 34124
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 34125
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Lcom/facebook/ads/redexgen/X/49;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/49;->A39(Ljava/lang/Object;)V

    .line 34126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 34127
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 34128
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34129
    return-void

    .line 34130
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final A04(I)V
    .locals 3

    .line 34131
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 34132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Lcom/facebook/ads/redexgen/X/49;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/49;->A39(Ljava/lang/Object;)V

    .line 34133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 34134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    if-lez v0, :cond_0

    .line 34135
    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34137
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A05(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 34138
    .local p1, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 34139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 34140
    iput v2, p0, Lcom/facebook/ads/redexgen/X/De;->A00:I

    .line 34141
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 34142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 34143
    .local v0, "lastStartKey":I
    if-lt p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 34144
    if-ne v0, p1, :cond_2

    .line 34145
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Lcom/facebook/ads/redexgen/X/49;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/49;->A39(Ljava/lang/Object;)V

    .line 34146
    .end local v0    # "lastStartKey":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34147
    return-void

    .line 34148
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06()Z
    .locals 1

    .line 34149
    .local p0, "this":Lcom/facebook/ads/redexgen/X/De;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
