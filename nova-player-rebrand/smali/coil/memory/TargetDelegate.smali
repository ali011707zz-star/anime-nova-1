.class public abstract Lcoil/memory/TargetDelegate;
.super Ljava/lang/Object;
.source "TargetDelegate.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcoil/memory/TargetDelegate;-><init>()V

    return-void
.end method

.method static synthetic error$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic success$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 0
    return-void
.end method

.method public error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcoil/memory/TargetDelegate;->error$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lcoil/target/Target;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    return-void
.end method

.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcoil/memory/TargetDelegate;->success$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
