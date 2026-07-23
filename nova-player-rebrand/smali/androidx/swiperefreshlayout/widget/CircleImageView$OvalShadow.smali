.class Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 146
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 148
    iput p2, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 8

    .line 167
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float v2, p1

    iget p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v4, p1

    const/high16 p1, 0x3d000000    # 0.03125f

    const/4 v3, 0x0

    filled-new-array {p1, v3}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 160
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 161
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    int-to-float v1, v1

    .line 162
    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 155
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method
