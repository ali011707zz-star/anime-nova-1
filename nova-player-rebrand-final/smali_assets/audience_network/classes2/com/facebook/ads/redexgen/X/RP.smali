.class public final Lcom/facebook/ads/redexgen/X/RP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RN;,
        Lcom/facebook/ads/redexgen/X/RM;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RM;

.field public final A01:Lcom/facebook/ads/redexgen/X/RN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RN;)V
    .locals 1

    .line 62169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    .line 62171
    new-instance v0, Lcom/facebook/ads/redexgen/X/RM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    .line 62172
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 62173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RN;->A8h()I

    move-result v3

    .line 62174
    .local v0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RN;->A8g()I

    move-result v2

    .line 62175
    .local v1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 62176
    .local v2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 62177
    .local v3, "acceptableMatch":Landroid/view/View;
    .local v4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 62178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/RN;->A7H(I)Landroid/view/View;

    move-result-object v1

    .line 62179
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/RN;->A7K(Landroid/view/View;)I

    move-result v5

    .line 62180
    .local v6, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/RN;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/RN;->A7J(Landroid/view/View;)I

    move-result v4

    .line 62181
    .local v7, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/RM;->A03(IIII)V

    .line 62182
    if-eqz p3, :cond_0

    .line 62183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RM;->A01()V

    .line 62184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/RM;->A02(I)V

    .line 62185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RM;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62186
    return-object v1

    .line 62187
    :cond_0
    if-eqz p4, :cond_1

    .line 62188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RM;->A01()V

    .line 62189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/RM;->A02(I)V

    .line 62190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RM;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62191
    move-object v6, v1

    .line 62192
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 62193
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 62194
    .end local v4    # "i":I
    :cond_3
    return-object v6
.end method
