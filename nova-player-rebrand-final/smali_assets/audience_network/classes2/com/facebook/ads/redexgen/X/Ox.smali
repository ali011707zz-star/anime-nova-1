.class public abstract Lcom/facebook/ads/redexgen/X/Ox;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1515
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Bq6maawZ0clc1FQAmj5JQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VAIBWau0AGjNNTEN3MsesX9vol"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j9uAnr9SO1508v2Fml3gke"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZCgsP4jhFD2e5OZklqeZfYu5I7s7wZNA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gWy56vmTKK0E"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsILSp0QdnJQHstvTHvz6zn3fr5EWYkf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ft8tZM9UwubEJUOv9H1JFeEwlzUnh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KM7boO2xaC3ZbV22lXcue9aE71LlUQ5e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ox;->A00:[Ljava/lang/String;

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/Ox;->A01:D

    return-void
.end method

.method public static A00(FFZ)F
    .locals 5

    .line 56448
    if-eqz p2, :cond_0

    .line 56449
    float-to-double v4, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/Ox;->A01:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    .line 56450
    :cond_0
    return p0
.end method

.method public static A01(FFZ)F
    .locals 5

    .line 56451
    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 56452
    mul-float/2addr v3, p0

    float-to-double v4, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/Ox;->A01:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    .line 56453
    :cond_0
    mul-float/2addr v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ox;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ox;->A00:[Ljava/lang/String;

    const-string v1, "QZbxm3QXOF2yqMmVze25YX6oNvKBlq6Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
