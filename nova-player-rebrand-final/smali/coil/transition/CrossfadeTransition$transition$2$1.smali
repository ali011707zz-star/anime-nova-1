.class public final Lcoil/transition/CrossfadeTransition$transition$2$1;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "CrossfadeTransition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/transition/CrossfadeTransition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field final synthetic $crossfade:Lcoil/drawable/CrossfadeDrawable;


# direct methods
.method constructor <init>(Lcoil/drawable/CrossfadeDrawable;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    iput-object p1, p0, Lcoil/transition/CrossfadeTransition$transition$2$1;->$crossfade:Lcoil/drawable/CrossfadeDrawable;

    iput-object p2, p0, Lcoil/transition/CrossfadeTransition$transition$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 66
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcoil/transition/CrossfadeTransition$transition$2$1;->$crossfade:Lcoil/drawable/CrossfadeDrawable;

    invoke-virtual {p1, p0}, Lcoil/drawable/CrossfadeDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 69
    iget-object p1, p0, Lcoil/transition/CrossfadeTransition$transition$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
