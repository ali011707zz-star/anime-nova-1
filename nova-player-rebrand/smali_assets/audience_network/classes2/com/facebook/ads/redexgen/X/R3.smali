.class public Lcom/facebook/ads/redexgen/X/R3;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RK;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 61172
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 61173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61177
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61181
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 61182
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61186
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 61187
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 61188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61191
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R3;)V
    .locals 1

    .line 61192
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61196
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 61197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    return v0
.end method

.method public final A01()Z
    .locals 1

    .line 61198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0j()Z

    move-result v0

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 61199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 61200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    return v0
.end method
