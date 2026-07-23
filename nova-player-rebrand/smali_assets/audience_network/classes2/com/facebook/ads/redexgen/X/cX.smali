.class public final Lcom/facebook/ads/redexgen/X/cX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 79237
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cX;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A02(Lcom/facebook/ads/redexgen/X/KB;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A02(Lcom/facebook/ads/redexgen/X/KB;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 79238
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/KB;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0l(Lcom/facebook/ads/redexgen/X/KB;I)V

    .line 79239
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cX;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
