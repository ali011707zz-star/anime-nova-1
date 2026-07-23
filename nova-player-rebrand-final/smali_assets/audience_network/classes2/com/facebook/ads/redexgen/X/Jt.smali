.class public final Lcom/facebook/ads/redexgen/X/Jt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADY()V
    .locals 3

    .line 44408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0B(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 44409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A09(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44410
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A09(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0j(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    .line 44411
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 44413
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0G(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0G(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bT;->A0B()V

    .line 44415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ji;->A0H(Lcom/facebook/ads/redexgen/X/Ji;Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/bT;

    .line 44416
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0k(Lcom/facebook/ads/redexgen/X/Ji;Z)V

    .line 44417
    return-void
.end method
