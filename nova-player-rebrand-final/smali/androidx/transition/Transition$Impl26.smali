.class abstract Landroidx/transition/Transition$Impl26;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl26"
.end annotation


# direct methods
.method static getTotalDuration(Landroid/animation/Animator;)J
    .locals 2

    .line 2716
    invoke-static {p0}, Landroidx/transition/Transition$Impl26$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/Animator;)J

    move-result-wide v0

    return-wide v0
.end method

.method static setCurrentPlayTime(Landroid/animation/Animator;J)V
    .locals 0

    .line 2721
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$Impl26$$ExternalSyntheticApiModelOutline1;->m(Landroid/animation/AnimatorSet;J)V

    return-void
.end method
