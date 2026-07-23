.class final Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultRegistrar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;->addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $factoryCalledPerKey:Lkotlin/jvm/functions/Function1;

.field final synthetic $forType:Luy/kohesive/injekt/api/TypeReference;

.field final synthetic this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;


# direct methods
.method constructor <init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    iput-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    iput-object p3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->$factoryCalledPerKey:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    invoke-static {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->access$getExistingValues$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->$forType:Luy/kohesive/injekt/api/TypeReference;

    invoke-interface {v2}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;->$factoryCalledPerKey:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v2, p1

    :cond_1
    :goto_0
    const-string p1, "existingValues.getOrPut(\u2026CalledPerKey(key as K) })"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 66
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type K"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
