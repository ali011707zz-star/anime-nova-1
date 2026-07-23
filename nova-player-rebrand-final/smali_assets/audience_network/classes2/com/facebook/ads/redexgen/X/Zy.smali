.class public final Lcom/facebook/ads/redexgen/X/Zy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MC;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zh;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/MC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Zh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76053
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zy;->A01:Lcom/facebook/ads/redexgen/X/MC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zy;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 76054
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Zy;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zy;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A01()V

    .line 76055
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zy;->A01:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A06:Lcom/facebook/ads/redexgen/X/Oi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Zf;->AEr(Lcom/facebook/ads/redexgen/X/Oi;)V

    .line 76056
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Zy;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
