.class public final Lcom/facebook/ads/redexgen/X/Gb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37180
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gb;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 2

    .line 37181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gb;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A05(Lcom/facebook/ads/redexgen/X/4x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gb;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A09(Lcom/facebook/ads/redexgen/X/4x;)V

    .line 37183
    return-void

    .line 37184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
