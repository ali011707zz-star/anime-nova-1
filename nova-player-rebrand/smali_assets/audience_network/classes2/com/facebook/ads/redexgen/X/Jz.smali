.class public final Lcom/facebook/ads/redexgen/X/Jz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/K2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionComposition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Z


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/K0;",
            ">;)V"
        }
    .end annotation

    .line 44448
    .local p11, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44449
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jz;->A03:I

    .line 44450
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Jz;->A0A:Z

    .line 44451
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Jz;->A08:I

    .line 44452
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Jz;->A02:I

    .line 44453
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Jz;->A04:I

    .line 44454
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Jz;->A01:I

    .line 44455
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Jz;->A00:I

    .line 44456
    iput p8, p0, Lcom/facebook/ads/redexgen/X/Jz;->A07:I

    .line 44457
    iput p9, p0, Lcom/facebook/ads/redexgen/X/Jz;->A06:I

    .line 44458
    iput p10, p0, Lcom/facebook/ads/redexgen/X/Jz;->A05:I

    .line 44459
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Jz;->A09:Landroid/util/SparseArray;

    .line 44460
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Jz;)V
    .locals 5

    .line 44461
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Jz;->A09:Landroid/util/SparseArray;

    .line 44462
    .local v0, "otherRegionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 44463
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jz;->A09:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44464
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44465
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
