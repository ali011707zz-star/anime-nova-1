.class public final Lcom/facebook/ads/redexgen/X/Jx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/K2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageComposition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Jy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Jy;",
            ">;)V"
        }
    .end annotation

    .line 44438
    .local p4, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44439
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:I

    .line 44440
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:I

    .line 44441
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    .line 44442
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Landroid/util/SparseArray;

    .line 44443
    return-void
.end method
