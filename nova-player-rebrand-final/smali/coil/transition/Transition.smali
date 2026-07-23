.class public interface abstract Lcoil/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/Transition$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/transition/Transition$Companion;

.field public static final NONE:Lcoil/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/transition/Transition$Companion;->$$INSTANCE:Lcoil/transition/Transition$Companion;

    sput-object v0, Lcoil/transition/Transition;->Companion:Lcoil/transition/Transition$Companion;

    .line 34
    sget-object v0, Lcoil/transition/NoneTransition;->INSTANCE:Lcoil/transition/NoneTransition;

    sput-object v0, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    return-void
.end method


# virtual methods
.method public abstract transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
