.class public final Lcom/player/easy/widget/BrightnessBar;
.super Landroid/view/View;
.source "BrightnessBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u00014B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020\rH\u0014J\u0010\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0014J\u0010\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020/H\u0017J\u0008\u00100\u001a\u00020%H\u0016J\u000e\u00101\u001a\u00020\'2\u0006\u0010\"\u001a\u00020#J\u000e\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020\u000fR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/player/easy/widget/BrightnessBar;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attr",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "iconBrightnessHigh",
        "Landroid/graphics/drawable/Drawable;",
        "iconBrightnessMed",
        "iconBrightnessLow",
        "brightnessBackgroundColor",
        "",
        "brightnessBarHeightHalf",
        "",
        "brightnessBarWidth",
        "brightnessBarHeight",
        "brightnessBarRadius",
        "paint1",
        "Landroid/graphics/Paint;",
        "paint2",
        "rectF1",
        "Landroid/graphics/RectF;",
        "rectF2",
        "rectF3",
        "f35911g",
        "currentBrightness",
        "viewWidth",
        "viewHeight",
        "halfViewWidth",
        "f35922r",
        "f35923s",
        "f35924t",
        "brightnessListener",
        "Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;",
        "enableSeekBar",
        "",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "performClick",
        "setBrightnessChangedListener",
        "setBrightness",
        "value",
        "BrightnessChangeListener",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final brightnessBackgroundColor:I

.field private final brightnessBarHeight:F

.field private brightnessBarHeightHalf:F

.field private brightnessBarRadius:F

.field private final brightnessBarWidth:F

.field private brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

.field private currentBrightness:F

.field private enableSeekBar:Z

.field private f35911g:F

.field private f35922r:F

.field private f35923s:F

.field private f35924t:F

.field private halfViewWidth:F

.field private final iconBrightnessHigh:Landroid/graphics/drawable/Drawable;

.field private final iconBrightnessLow:Landroid/graphics/drawable/Drawable;

.field private final iconBrightnessMed:Landroid/graphics/drawable/Drawable;

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final rectF1:Landroid/graphics/RectF;

.field private final rectF2:Landroid/graphics/RectF;

.field private final rectF3:Landroid/graphics/RectF;

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/player/easy/widget/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget p2, Lcom/player/easy/R$drawable;->ic_brightness_high:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessHigh:Landroid/graphics/drawable/Drawable;

    .line 22
    sget p2, Lcom/player/easy/R$drawable;->ic_brightness_med:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessMed:Landroid/graphics/drawable/Drawable;

    .line 24
    sget p2, Lcom/player/easy/R$drawable;->ic_brightness_low:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessLow:Landroid/graphics/drawable/Drawable;

    .line 27
    sget p2, Lcom/player/easy/R$color;->brightness_background_color:I

    invoke-static {p1, p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getCompatColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBackgroundColor:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/player/easy/R$dimen;->brightness_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarWidth:F

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/player/easy/R$dimen;->brightness_bar_icon_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarRadius:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 42
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iput-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->paint1:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    .line 48
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iput-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->paint2:Landroid/graphics/Paint;

    .line 53
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->rectF1:Landroid/graphics/RectF;

    .line 54
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->rectF2:Landroid/graphics/RectF;

    .line 55
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/player/easy/widget/BrightnessBar;->rectF3:Landroid/graphics/RectF;

    .line 75
    iput-boolean v1, p0, Lcom/player/easy/widget/BrightnessBar;->enableSeekBar:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/player/easy/R$dimen;->brightness_bar_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 80
    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 81
    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/player/easy/widget/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget v0, p0, Lcom/player/easy/widget/BrightnessBar;->currentBrightness:F

    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 103
    iput v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 105
    iput v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->rectF1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarRadius:F

    iget-object v2, p0, Lcom/player/easy/widget/BrightnessBar;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->rectF2:Landroid/graphics/RectF;

    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->f35922r:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 111
    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->viewHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    div-float v4, v3, v2

    sub-float/2addr v1, v4

    .line 112
    iget v4, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 110
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 113
    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->f35923s:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 114
    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->f35924t:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 115
    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarRadius:F

    iget-object v3, p0, Lcom/player/easy/widget/BrightnessBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    iget v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeightHalf:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarRadius:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    mul-float v5, v4, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/player/easy/widget/BrightnessBar;->rectF3:Landroid/graphics/RectF;

    iget v5, p0, Lcom/player/easy/widget/BrightnessBar;->f35922r:F

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 122
    iget v5, p0, Lcom/player/easy/widget/BrightnessBar;->f35923s:F

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 124
    iget v5, p0, Lcom/player/easy/widget/BrightnessBar;->viewHeight:F

    div-float/2addr v5, v2

    div-float/2addr v0, v2

    sub-float/2addr v5, v0

    add-float/2addr v5, v3

    .line 123
    iput v5, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    .line 126
    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 127
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/player/easy/widget/BrightnessBar;->currentBrightness:F

    float-to-double v0, v0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessLow:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessHigh:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->iconBrightnessMed:Landroid/graphics/drawable/Drawable;

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/player/easy/widget/BrightnessBar;->rectF1:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarRadius:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 137
    iget v2, p0, Lcom/player/easy/widget/BrightnessBar;->halfViewWidth:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    float-to-int v1, v1

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 139
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->viewHeight:F

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->viewWidth:F

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 89
    iget p1, p0, Lcom/player/easy/widget/BrightnessBar;->viewWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->halfViewWidth:F

    .line 90
    iget v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarWidth:F

    div-float v1, v0, p2

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->f35922r:F

    add-float/2addr v0, p1

    .line 91
    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->f35923s:F

    .line 92
    iget v1, p0, Lcom/player/easy/widget/BrightnessBar;->viewHeight:F

    div-float/2addr v1, p2

    iget v2, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    div-float/2addr v2, p2

    add-float p2, v1, v2

    iput p2, p0, Lcom/player/easy/widget/BrightnessBar;->f35924t:F

    .line 93
    iget-object v3, p0, Lcom/player/easy/widget/BrightnessBar;->rectF1:Landroid/graphics/RectF;

    iput p1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 94
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 95
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 96
    iput p2, v3, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/player/easy/widget/BrightnessBar;->enableSeekBar:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/player/easy/widget/BrightnessBar;->f35924t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    .line 158
    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->f35911g:F

    const/4 p1, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 159
    iget p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    cmpg-float v2, v0, p1

    if-gtz v2, :cond_3

    div-float/2addr v0, p1

    .line 160
    iput v0, p0, Lcom/player/easy/widget/BrightnessBar;->currentBrightness:F

    .line 161
    iget-object p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;->onBrightnessChange(F)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 163
    :cond_3
    iget p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessBarHeight:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 164
    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->currentBrightness:F

    .line 165
    iget-object v0, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;->onBrightnessChange(F)V

    .line 166
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 155
    :cond_5
    iget-object p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;->onEndChangingBrightnessBar()V

    goto :goto_0

    .line 154
    :cond_6
    iget-object p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;->onStartChangingBrightnessBar()V

    :cond_7
    :goto_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 174
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setBrightness(F)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/player/easy/widget/BrightnessBar;->currentBrightness:F

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBrightnessChangedListener(Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;)V
    .locals 1

    const-string v0, "brightnessListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/player/easy/widget/BrightnessBar;->brightnessListener:Lcom/player/easy/widget/BrightnessBar$BrightnessChangeListener;

    return-void
.end method
