.class final Lkotlinx/serialization/internal/ClassValueParametrizedCache;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlinx/serialization/internal/ParametrizedSerializerCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B7\u0008F\u0012,\u0010\u0003\u001a(\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ;\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0096\u0080\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R5\u0010\u0003\u001a(\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u0004X\u0082\u0084\u0008\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000e0\rX\u0082\u0084\u0008\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ClassValueParametrizedCache;",
        "T",
        "Lkotlinx/serialization/internal/ParametrizedSerializerCache;",
        "compute",
        "Lkotlin/Function2;",
        "Lkotlin/reflect/KClass;",
        "",
        "",
        "Lkotlin/reflect/KType;",
        "Lkotlinx/serialization/KSerializer;",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "classValue",
        "Lkotlinx/serialization/internal/ClassValueReferences;",
        "Lkotlinx/serialization/internal/ParametrizedCacheEntry;",
        "get",
        "Lkotlin/Result;",
        "key",
        "types",
        "get-gIAlu-s",
        "(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;",
        "kotlinx-serialization-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueParametrizedCache\n+ 2 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n*L\n1#1,219:1\n84#2,3:220\n89#2:224\n1#3:223\n1#3:234\n212#4:225\n213#4:230\n214#4:233\n1586#5:226\n1661#5,3:227\n72#6,2:231\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueParametrizedCache\n*L\n128#1:220,3\n128#1:224\n128#1:223\n129#1:234\n129#1:225\n129#1:230\n129#1:233\n129#1:226\n129#1:227,3\n129#1:231,2\n*E\n"
    }
.end annotation


# instance fields
.field private final classValue:Lkotlinx/serialization/internal/ClassValueReferences;

.field private final compute:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;-",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;->compute:Lkotlin/jvm/functions/Function2;

    .line 125
    new-instance p1, Lkotlinx/serialization/internal/ClassValueReferences;

    invoke-direct {p1}, Lkotlinx/serialization/internal/ClassValueReferences;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;->classValue:Lkotlinx/serialization/internal/ClassValueReferences;

    return-void
.end method


# virtual methods
.method public get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;->classValue:Lkotlinx/serialization/internal/ClassValueReferences;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lkotlinx/serialization/internal/ClassValueCache$$ExternalSyntheticApiModelOutline0;->m(Lkotlinx/serialization/internal/ClassValueReferences;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/internal/MutableSoftReference;

    .line 86
    iget-object v1, v0, Lkotlinx/serialization/internal/MutableSoftReference;->reference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lkotlinx/serialization/internal/ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1;

    invoke-direct {v1}, Lkotlinx/serialization/internal/ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1;-><init>()V

    invoke-virtual {v0, v1}, Lkotlinx/serialization/internal/MutableSoftReference;->getOrSetWithLock(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1661
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1662
    check-cast v3, Lkotlin/reflect/KType;

    .line 212
    new-instance v4, Lkotlinx/serialization/internal/KTypeWrapper;

    invoke-direct {v4, v3}, Lkotlinx/serialization/internal/KTypeWrapper;-><init>(Lkotlin/reflect/KType;)V

    .line 1662
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_1
    invoke-static {v1}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->access$getSerializers$p(Lkotlinx/serialization/internal/ParametrizedCacheEntry;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 72
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 214
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 129
    iget-object v2, p0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;->compute:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 214
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 73
    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    move-object v2, p1

    goto :goto_3

    :cond_2
    move-object v2, p2

    .line 213
    :cond_3
    :goto_3
    const-string p1, "getOrPut(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
