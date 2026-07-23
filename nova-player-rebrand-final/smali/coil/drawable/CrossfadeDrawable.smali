.class public final Lcoil/drawable/CrossfadeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CrossfadeDrawable.kt"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/drawable/CrossfadeDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/drawable/CrossfadeDrawable$Companion;


# instance fields
.field private final callbacks:Ljava/util/List;

.field private final durationMillis:I

.field private final end:Landroid/graphics/drawable/Drawable;

.field private final fadeStart:Z

.field private final intrinsicHeight:I

.field private final intrinsicWidth:I

.field private maxAlpha:I

.field private final preferExactIntrinsicSize:Z

.field private final scale:Lcoil/size/Scale;

.field private start:Landroid/graphics/drawable/Drawable;

.field private startTimeMillis:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/drawable/CrossfadeDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/drawable/CrossfadeDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/drawable/CrossfadeDrawable;->Companion:Lcoil/drawable/CrossfadeDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V
    .locals 1

    const-string v0, "scale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->scale:Lcoil/size/Scale;

    .line 44
    iput p4, p0, Lcoil/drawable/CrossfadeDrawable;->durationMillis:I

    .line 45
    iput-boolean p5, p0, Lcoil/drawable/CrossfadeDrawable;->fadeStart:Z

    .line 46
    iput-boolean p6, p0, Lcoil/drawable/CrossfadeDrawable;->preferExactIntrinsicSize:Z

    .line 49
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p5, p3

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :goto_0
    if-nez p2, :cond_1

    move-object p6, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :goto_1
    invoke-direct {p0, p5, p6}, Lcoil/drawable/CrossfadeDrawable;->computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p5

    iput p5, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicWidth:I

    if-nez p1, :cond_2

    move-object p5, p3

    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :goto_2
    if-nez p2, :cond_3

    move-object p6, p3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :goto_3
    invoke-direct {p0, p5, p6}, Lcoil/drawable/CrossfadeDrawable;->computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p5

    iput p5, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicHeight:I

    if-nez p1, :cond_4

    move-object p1, p3

    goto :goto_4

    .line 54
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    goto :goto_5

    .line 55
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_5
    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0xff

    .line 57
    iput p1, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    if-lez p4, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_9

    .line 63
    iget-object p1, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_7
    if-nez p3, :cond_8

    return-void

    .line 64
    :cond_8
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    .line 61
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 264
    iget-boolean v0, p0, Lcoil/drawable/CrossfadeDrawable;->preferExactIntrinsicSize:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    return v1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    move p1, v1

    goto :goto_2

    .line 267
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private final markDone()V
    .locals 4

    const/4 v0, 0x2

    .line 272
    iput v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 274
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    if-le v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget v1, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 71
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 78
    :cond_2
    iget v1, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 79
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 84
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcoil/drawable/CrossfadeDrawable;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget v2, p0, Lcoil/drawable/CrossfadeDrawable;->durationMillis:I

    int-to-double v2, v2

    div-double v4, v0, v2

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 85
    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v0

    iget v2, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    int-to-double v6, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 86
    iget-boolean v1, p0, Lcoil/drawable/CrossfadeDrawable;->fadeStart:Z

    if-eqz v1, :cond_4

    sub-int/2addr v2, v0

    :cond_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 91
    iget-object v3, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 93
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 98
    :cond_7
    :goto_2
    iget-object v2, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    goto :goto_3

    .line 99
    :cond_8
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 100
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 322
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_3
    if-eqz v1, :cond_9

    .line 104
    invoke-direct {p0}, Lcoil/drawable/CrossfadeDrawable;->markDone()V

    return-void

    .line 106
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :catchall_3
    move-exception v0

    .line 322
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
.end method

.method public getAlpha()I
    .locals 1

    .line 111
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 140
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    .line 143
    :cond_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 142
    :cond_2
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    :cond_5
    return-object v0

    .line 141
    :cond_6
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 172
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 170
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 5

    .line 120
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    .line 123
    iget v2, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v3, -0x2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    return v3

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    if-nez v1, :cond_2

    return v3

    .line 128
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    return v0

    :cond_4
    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_5
    if-eqz v1, :cond_6

    .line 134
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_6
    return v3
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string/jumbo v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 204
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcoil/drawable/CrossfadeDrawable;->updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcoil/drawable/CrossfadeDrawable;->updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 160
    :goto_0
    iget-object v2, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 166
    :goto_0
    iget-object v2, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    const-string/jumbo v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 115
    iput p1, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    return-void

    .line 114
    :cond_1
    const-string v0, "Invalid alpha: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcoil/drawable/CrossfadeDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/Drawable;Landroid/graphics/BlendMode;)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p1}, Lcoil/drawable/CrossfadeDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/Drawable;Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 208
    :goto_1
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 210
    :goto_2
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 214
    iput v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcoil/drawable/CrossfadeDrawable;->startTimeMillis:J

    .line 216
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v3, v2, 0x1

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 216
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    if-le v3, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_3

    .line 218
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 223
    :goto_1
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 225
    :goto_2
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 226
    invoke-direct {p0}, Lcoil/drawable/CrossfadeDrawable;->markDone()V

    :cond_4
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 10

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 252
    iget-object v4, p0, Lcoil/drawable/CrossfadeDrawable;->scale:Lcoil/size/Scale;

    invoke-static {v0, v1, v2, v3, v4}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v4

    int-to-double v6, v2

    int-to-double v8, v0

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    const/4 v0, 0x2

    int-to-double v8, v0

    div-double/2addr v6, v8

    .line 253
    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    int-to-double v2, v3

    int-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v2, v8

    .line 254
    invoke-static {v2, v3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v1

    .line 256
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 257
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    .line 258
    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    .line 259
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    .line 260
    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
