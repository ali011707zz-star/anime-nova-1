.class public final Lcom/facebook/ads/redexgen/X/Ps;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 58273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 58274
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 58275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pv;->A0e()V

    .line 58276
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 58277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pv;->A0e()V

    .line 58278
    return-void
.end method
