.class public final Lcom/facebook/ads/redexgen/X/Dg;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A01:Lcom/facebook/ads/redexgen/X/EA;

.field public final A02:Lcom/facebook/ads/redexgen/X/E4;

.field public final A03:Lcom/facebook/ads/redexgen/X/E2;

.field public final A04:Lcom/facebook/ads/redexgen/X/E0;

.field public final A05:Lcom/facebook/ads/redexgen/X/fI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 700
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Dg;->A07:I

    .line 701
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Dg;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 34200
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34201
    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3a;-><init>(Lcom/facebook/ads/redexgen/X/Dg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:Lcom/facebook/ads/redexgen/X/E0;

    .line 34202
    new-instance v0, Lcom/facebook/ads/redexgen/X/3Z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3Z;-><init>(Lcom/facebook/ads/redexgen/X/Dg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:Lcom/facebook/ads/redexgen/X/E4;

    .line 34203
    new-instance v0, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3Y;-><init>(Lcom/facebook/ads/redexgen/X/Dg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A03:Lcom/facebook/ads/redexgen/X/E2;

    .line 34204
    new-instance v0, Lcom/facebook/ads/redexgen/X/3X;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3X;-><init>(Lcom/facebook/ads/redexgen/X/Dg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:Lcom/facebook/ads/redexgen/X/EA;

    .line 34205
    sget v1, Lcom/facebook/ads/redexgen/X/Dg;->A06:I

    .line 34206
    const/high16 v0, 0x33000000

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34207
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 34208
    const/4 v3, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fI;

    invoke-direct {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/fI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    .line 34209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 34210
    sget v2, Lcom/facebook/ads/redexgen/X/Dg;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Dg;->A07:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34211
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34212
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dg;->setVisibility(I)V

    .line 34213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34214
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Dg;->setClickable(Z)V

    .line 34215
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Dg;->setFocusable(Z)V

    .line 34216
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Dg;)Lcom/facebook/ads/redexgen/X/fI;
    .locals 0

    .line 34217
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    return-object p0
.end method


# virtual methods
.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34219
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Dg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/fI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A03:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34223
    :cond_0
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A03:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34226
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Dg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34228
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34229
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 34230
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Dg;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-nez v0, :cond_1

    .line 34231
    return-void

    .line 34232
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34233
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34234
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_3

    .line 34235
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Dg;
    :cond_2
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    goto :goto_0

    .line 34236
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_4

    .line 34237
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Dg;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 34238
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 34239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fI;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 34240
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 34241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fI;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 34242
    return-void
.end method
