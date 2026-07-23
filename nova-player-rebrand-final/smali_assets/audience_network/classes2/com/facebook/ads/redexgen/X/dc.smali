.class public final Lcom/facebook/ads/redexgen/X/dc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A0S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80250
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Lcom/facebook/ads/redexgen/X/55;

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

    .line 80251
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dc;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dc;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0F(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dc;->A00:Lcom/facebook/ads/redexgen/X/55;

    .line 80252
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/55;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 80253
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dc;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0F(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bT;->A0A()V

    .line 80254
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dc;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
