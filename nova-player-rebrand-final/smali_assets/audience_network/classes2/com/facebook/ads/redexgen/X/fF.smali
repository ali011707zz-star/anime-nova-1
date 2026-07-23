.class public final Lcom/facebook/ads/redexgen/X/fF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/34;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/34;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82209
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

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
    move-object v3, p0

    .line 82210
    .local v0, "this":Lcom/facebook/ads/redexgen/X/fF;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A02(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82211
    return-void

    .line 82212
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A01(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82213
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A01(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0x:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 82214
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/fF;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A00(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3g()V

    .line 82215
    sget-object v1, Lcom/facebook/ads/redexgen/X/fG;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A03(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 82216
    :pswitch_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A05(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    goto :goto_0

    .line 82217
    :pswitch_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fF;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A04(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    .line 82218
    const/16 v0, 0xc

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 82219
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
