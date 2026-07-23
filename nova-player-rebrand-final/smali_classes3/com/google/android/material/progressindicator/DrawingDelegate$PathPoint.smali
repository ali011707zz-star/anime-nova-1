.class public Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;
.super Ljava/lang/Object;
.source "DrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DrawingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PathPoint"
.end annotation


# instance fields
.field posVec:[F

.field tanVec:[F

.field final synthetic this$0:Lcom/google/android/material/progressindicator/DrawingDelegate;

.field final transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 2

    .line 197
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->this$0:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 191
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    .line 193
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    aput v1, p1, v0

    .line 199
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->transform:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/DrawingDelegate;[F[F)V
    .locals 2

    .line 206
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->this$0:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 191
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    .line 193
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    const/4 v1, 0x0

    .line 207
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object p2, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->transform:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 260
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method scale(FF)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 221
    aget v3, v0, v2

    mul-float/2addr v3, p2

    aput v3, v0, v2

    .line 222
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    aget v3, v0, v1

    mul-float/2addr v3, p1

    aput v3, v0, v1

    .line 223
    aget p1, v0, v2

    mul-float/2addr p1, p2

    aput p1, v0, v2

    return-void
.end method

.method translate(FF)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    .line 215
    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    return-void
.end method
