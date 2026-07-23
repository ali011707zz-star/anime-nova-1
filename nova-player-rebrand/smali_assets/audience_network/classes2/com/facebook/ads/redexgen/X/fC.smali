.class public final Lcom/facebook/ads/redexgen/X/fC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82196
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 82197
    .local v0, "this":Lcom/facebook/ads/redexgen/X/fC;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0l:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 82198
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A00(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3m()V

    .line 82199
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A02(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82200
    return-void

    .line 82201
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A08(Lcom/facebook/ads/redexgen/X/Dd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82202
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A02(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 82203
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A09()V

    goto :goto_1

    .line 82204
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/fC;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/fC;->A00:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dd;->A02(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    goto :goto_0

    .line 82205
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
