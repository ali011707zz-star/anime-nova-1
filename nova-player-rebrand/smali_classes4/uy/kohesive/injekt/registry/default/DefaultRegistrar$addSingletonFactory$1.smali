.class final Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultRegistrar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0003\u0010\u0000\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "<anonymous>",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $factoryCalledOnce:Lkotlin/jvm/functions/Function0;

.field final synthetic $forType:Luy/kohesive/injekt/api/TypeReference;

.field final synthetic this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;


# direct methods
.method constructor <init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    iput-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    iput-object p3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->$factoryCalledOnce:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    invoke-static {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->access$getExistingValues$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    invoke-interface {v2}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    invoke-static {v3}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->access$getNOKEY$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v2, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1$$special$$inlined$getOrPut$lambda$1;

    invoke-direct {v2, p0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1$$special$$inlined$getOrPut$lambda$1;-><init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    check-cast v2, Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<R>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
