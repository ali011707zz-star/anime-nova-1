.class public abstract Lcom/facebook/ads/internal/api/AdNativeComponentView;
.super Landroid/widget/RelativeLayout;
.source "AdNativeComponentView.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentView;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field protected mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

.field private final mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method static synthetic access$001(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/facebook/ads/internal/api/AdNativeComponentView;II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method static synthetic access$1101(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$201(Lcom/facebook/ads/internal/api/AdNativeComponentView;II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$301(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method static synthetic access$401(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$501(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$601(Lcom/facebook/ads/internal/api/AdNativeComponentView;Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$801(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$901(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;)V

    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;I)V

    return-void

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;II)V

    return-void

    .line 166
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 176
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V
    .locals 2

    .line 118
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->isFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-nez v0, :cond_1

    .line 125
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 126
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 127
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    return-void

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdComponentViewApi can\'t be attached more then once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    return-void

    .line 241
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public abstract getAdContentsView()Landroid/view/View;
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    return-void

    .line 222
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    return-void

    .line 232
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    return-void

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->onWindowFocusChanged(Z)V

    return-void

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
