.class public final Lcom/facebook/ads/redexgen/X/hw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7Q;->ACb(Lcom/facebook/ads/redexgen/X/Q8;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7Q;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Q8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7Q;Lcom/facebook/ads/redexgen/X/Q8;)V
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

    .line 86153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hw;->A00:Lcom/facebook/ads/redexgen/X/7Q;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hw;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G(I)Ljava/lang/Object;
    .locals 1

    .line 86154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hw;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    .line 86155
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q8;->A00(I)Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    .line 86156
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/Q6;
    if-nez v0, :cond_0

    .line 86157
    const/4 v0, 0x0

    return-object v0

    .line 86158
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A6Y(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hw;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    .line 86160
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q8;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 86161
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v4, :cond_0

    .line 86162
    const/4 v0, 0x0

    return-object v0

    .line 86163
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86164
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 86165
    .local v2, "infoCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 86166
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q6;

    .line 86167
    .local v4, "infoCompat":Lcom/facebook/ads/redexgen/X/Q6;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86168
    .end local v4    # "infoCompat":Lcom/facebook/ads/redexgen/X/Q6;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86169
    .end local v3    # "i":I
    :cond_1
    return-object v3
.end method

.method public final A6Z(I)Ljava/lang/Object;
    .locals 1

    .line 86170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hw;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q8;->A01(I)Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    .line 86171
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/Q6;
    if-nez v0, :cond_0

    .line 86172
    const/4 v0, 0x0

    return-object v0

    .line 86173
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final AGv(IILandroid/os/Bundle;)Z
    .locals 1

    .line 86174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hw;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Q8;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
