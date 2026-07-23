.class public final Lcom/facebook/ads/redexgen/X/Zq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MD;->A0R(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MD;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 75933
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Zq;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/MD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zf;->A9c()V

    .line 75934
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Zq;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
