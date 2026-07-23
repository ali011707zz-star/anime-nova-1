.class public final Lcom/facebook/ads/redexgen/X/K1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/K2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubtitleService"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Jv;

.field public A01:Lcom/facebook/ads/redexgen/X/Jx;

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ju;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Jw;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ju;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Jw;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 44474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44475
    iput p1, p0, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    .line 44476
    iput p2, p0, Lcom/facebook/ads/redexgen/X/K1;->A02:I

    .line 44477
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    .line 44478
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A06:Landroid/util/SparseArray;

    .line 44479
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A07:Landroid/util/SparseArray;

    .line 44480
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A04:Landroid/util/SparseArray;

    .line 44481
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A05:Landroid/util/SparseArray;

    .line 44482
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 44483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    .line 44489
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    .line 44490
    return-void
.end method
