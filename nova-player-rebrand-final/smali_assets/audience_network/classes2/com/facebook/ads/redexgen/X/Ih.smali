.class public final Lcom/facebook/ads/redexgen/X/Ih;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5h;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/VI;ZZLcom/facebook/ads/redexgen/X/dm;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40405
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 2

    .line 40406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A06(Lcom/facebook/ads/redexgen/X/5h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A09(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 40408
    return-void

    .line 40409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
