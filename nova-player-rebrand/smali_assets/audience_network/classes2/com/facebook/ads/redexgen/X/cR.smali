.class public final Lcom/facebook/ads/redexgen/X/cR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A0R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79179
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 79180
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cR;
    .local p0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0n(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 79181
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KE;->A0y(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 79182
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A09(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79183
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A09(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0d(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    .line 79184
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cR;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_2

    .line 79185
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(Lcom/facebook/ads/redexgen/X/KE;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 79186
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0H(Lcom/facebook/ads/redexgen/X/KE;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v0

    .line 79187
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79188
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0n(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/KE;->A0e(Lcom/facebook/ads/redexgen/X/KE;Z)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 79189
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
