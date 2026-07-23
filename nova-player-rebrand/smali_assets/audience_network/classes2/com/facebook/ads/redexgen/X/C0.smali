.class public final Lcom/facebook/ads/redexgen/X/C0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadUpdate"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Bk;

.field public final A01:Ljava/lang/Exception;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bk;ZLjava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            "Z",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 31370
    .local p3, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31371
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C0;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    .line 31372
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/C0;->A03:Z

    .line 31373
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/C0;->A02:Ljava/util/List;

    .line 31374
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/C0;->A01:Ljava/lang/Exception;

    .line 31375
    return-void
.end method
