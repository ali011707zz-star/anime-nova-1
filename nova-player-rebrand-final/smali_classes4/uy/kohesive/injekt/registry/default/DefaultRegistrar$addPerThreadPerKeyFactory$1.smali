.class final Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultRegistrar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;->addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "key",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $factoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function1;

.field final synthetic $forType:Luy/kohesive/injekt/api/TypeReference;

.field final synthetic this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;


# direct methods
.method constructor <init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    iput-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    iput-object p3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->$factoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    invoke-static {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->access$getThreadedValues$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    invoke-interface {v2}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;->$factoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 175
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type K"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v2
.end method
