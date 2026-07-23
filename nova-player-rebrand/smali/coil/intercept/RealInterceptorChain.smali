.class public final Lcoil/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.kt"

# interfaces
.implements Lcoil/intercept/Interceptor$Chain;


# instance fields
.field private final cached:Landroid/graphics/Bitmap;

.field private final eventListener:Lcoil/EventListener;

.field private final index:I

.field private final initialRequest:Lcoil/request/ImageRequest;

.field private final interceptors:Ljava/util/List;

.field private final request:Lcoil/request/ImageRequest;

.field private final requestType:I

.field private final size:Lcoil/size/Size;


# direct methods
.method public constructor <init>(Lcoil/request/ImageRequest;ILjava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;)V
    .locals 1

    const-string v0, "initialRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    .line 12
    iput p2, p0, Lcoil/intercept/RealInterceptorChain;->requestType:I

    .line 13
    iput-object p3, p0, Lcoil/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 14
    iput p4, p0, Lcoil/intercept/RealInterceptorChain;->index:I

    .line 15
    iput-object p5, p0, Lcoil/intercept/RealInterceptorChain;->request:Lcoil/request/ImageRequest;

    .line 16
    iput-object p6, p0, Lcoil/intercept/RealInterceptorChain;->size:Lcoil/size/Size;

    .line 17
    iput-object p7, p0, Lcoil/intercept/RealInterceptorChain;->cached:Landroid/graphics/Bitmap;

    .line 18
    iput-object p8, p0, Lcoil/intercept/RealInterceptorChain;->eventListener:Lcoil/EventListener;

    return-void
.end method

.method private final checkRequest(Lcoil/request/ImageRequest;Lcoil/intercept/Interceptor;)V
    .locals 5

    .line 33
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Interceptor \'"

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    if-eq v0, v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    iget-object v4, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v4

    if-ne v0, v4, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v4, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    if-ne v0, v4, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 45
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object p1

    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    if-ne p1, v0, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    return-void

    .line 46
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot modify the request\'s lifecycle."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot modify the request\'s target."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot set the request\'s data to null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot modify the request\'s context."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final copy(ILcoil/request/ImageRequest;Lcoil/size/Size;)Lcoil/intercept/RealInterceptorChain;
    .locals 9

    .line 54
    new-instance v0, Lcoil/intercept/RealInterceptorChain;

    iget-object v1, p0, Lcoil/intercept/RealInterceptorChain;->initialRequest:Lcoil/request/ImageRequest;

    iget v2, p0, Lcoil/intercept/RealInterceptorChain;->requestType:I

    iget-object v3, p0, Lcoil/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v7, p0, Lcoil/intercept/RealInterceptorChain;->cached:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcoil/intercept/RealInterceptorChain;->eventListener:Lcoil/EventListener;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcoil/intercept/RealInterceptorChain;-><init>(Lcoil/request/ImageRequest;ILjava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;)V

    return-object v0
.end method

.method static synthetic copy$default(Lcoil/intercept/RealInterceptorChain;ILcoil/request/ImageRequest;Lcoil/size/Size;ILjava/lang/Object;)Lcoil/intercept/RealInterceptorChain;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 50
    iget p1, p0, Lcoil/intercept/RealInterceptorChain;->index:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 52
    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 53
    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getSize()Lcoil/size/Size;

    move-result-object p3

    .line 50
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcoil/intercept/RealInterceptorChain;->copy(ILcoil/request/ImageRequest;Lcoil/size/Size;)Lcoil/intercept/RealInterceptorChain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCached()Landroid/graphics/Bitmap;
    .locals 1

    .line 17
    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->cached:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getEventListener()Lcoil/EventListener;
    .locals 1

    .line 18
    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->eventListener:Lcoil/EventListener;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 14
    iget v0, p0, Lcoil/intercept/RealInterceptorChain;->index:I

    return v0
.end method

.method public final getInterceptors()Ljava/util/List;
    .locals 1

    .line 13
    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public getRequest()Lcoil/request/ImageRequest;
    .locals 1

    .line 15
    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->request:Lcoil/request/ImageRequest;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    .line 12
    iget v0, p0, Lcoil/intercept/RealInterceptorChain;->requestType:I

    return v0
.end method

.method public getSize()Lcoil/size/Size;
    .locals 1

    .line 16
    iget-object v0, p0, Lcoil/intercept/RealInterceptorChain;->size:Lcoil/size/Size;

    return-object v0
.end method

.method public proceed(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcoil/intercept/RealInterceptorChain$proceed$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/intercept/RealInterceptorChain$proceed$1;

    iget v1, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/intercept/RealInterceptorChain$proceed$1;

    invoke-direct {v0, p0, p2}, Lcoil/intercept/RealInterceptorChain$proceed$1;-><init>(Lcoil/intercept/RealInterceptorChain;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcoil/intercept/Interceptor;

    iget-object v0, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/intercept/RealInterceptorChain;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    goto :goto_1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getIndex()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getInterceptors()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getIndex()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcoil/intercept/Interceptor;

    invoke-direct {p0, p1, p2}, Lcoil/intercept/RealInterceptorChain;->checkRequest(Lcoil/request/ImageRequest;Lcoil/intercept/Interceptor;)V

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getInterceptors()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getIndex()I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcoil/intercept/Interceptor;

    .line 26
    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getIndex()I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lcoil/intercept/RealInterceptorChain;->copy$default(Lcoil/intercept/RealInterceptorChain;ILcoil/request/ImageRequest;Lcoil/size/Size;ILjava/lang/Object;)Lcoil/intercept/RealInterceptorChain;

    move-result-object p1

    .line 27
    iput-object v4, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcoil/intercept/RealInterceptorChain$proceed$1;->label:I

    invoke-interface {p2, p1, v0}, Lcoil/intercept/Interceptor;->intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v4

    .line 23
    :goto_1
    check-cast p2, Lcoil/request/ImageResult;

    .line 28
    invoke-virtual {p2}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcoil/intercept/RealInterceptorChain;->checkRequest(Lcoil/request/ImageRequest;Lcoil/intercept/Interceptor;)V

    return-object p2
.end method
