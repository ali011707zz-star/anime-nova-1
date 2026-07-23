.class public final Lcom/facebook/ads/redexgen/X/Kt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bT;->A00()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kt;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 0

    .line 48803
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 1

    .line 48804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kt;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A04(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/am;->setSubtitle(Ljava/lang/String;)V

    .line 48805
    return-void
.end method

.method public final AFY(I)V
    .locals 0

    .line 48806
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 48807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kt;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A04(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/am;->setTitle(Ljava/lang/String;)V

    .line 48808
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 48809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kt;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A03(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 48810
    return-void
.end method
