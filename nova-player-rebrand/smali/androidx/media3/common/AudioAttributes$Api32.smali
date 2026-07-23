.class final Landroidx/media3/common/AudioAttributes$Api32;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api32"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIsContentSpatialized(Landroid/media/AudioAttributes$Builder;Z)V
    .locals 0

    .line 405
    invoke-static {p0, p1}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;Z)Landroid/media/AudioAttributes$Builder;

    return-void
.end method

.method public static setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 400
    invoke-static {p0, p1}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    return-void
.end method
