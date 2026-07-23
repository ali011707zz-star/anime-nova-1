.class public Luy/kohesive/injekt/api/InjektScope;
.super Ljava/lang/Object;
.source "Scope.kt"

# interfaces
.implements Luy/kohesive/injekt/api/InjektRegistrar;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J9\u0010\u0006\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\t\"\u0008\u0008\u0001\u0010\n*\u0002H\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000cH\u0096\u0001J/\u0010\u000e\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0096\u0001JO\u0010\u0013\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u0002H\u000f0\u00162\u0018\u0010\u0018\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0019\u0012\u0004\u0012\u0002H\u000f0\u0016H\u0096\u0001J?\u0010\u001a\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u000f0\u0016H\u0096\u0001J/\u0010\u001d\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0096\u0001J?\u0010\u001f\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u000f0\u0016H\u0096\u0001J0\u0010!\u001a\u00020\u0007\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t2\u0019\u0008\u0008\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u000f0\u0016\u00a2\u0006\u0002\u0008#H\u0086\u0008J@\u0010$\u001a\u00020\u0007\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u001f\u0008\u0008\u0010%\u001a\u0019\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u000f0&\u00a2\u0006\u0002\u0008#H\u0086\u0008J0\u0010\'\u001a\u00020\u0007\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t2\u0019\u0008\u0008\u0010(\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u000f0\u0016\u00a2\u0006\u0002\u0008#H\u0086\u0008J@\u0010)\u001a\u00020\u0007\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u001f\u0008\u0008\u0010*\u001a\u0019\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u000f0&\u00a2\u0006\u0002\u0008#H\u0086\u0008J0\u0010+\u001a\u00020\u0007\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t2\u0019\u0008\u0008\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u000f0\u0016\u00a2\u0006\u0002\u0008#H\u0086\u0008J.\u0010-\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\n*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000c2\u0006\u0010.\u001a\u0002H\nH\u0096\u0001\u00a2\u0006\u0002\u0010/J/\u00100\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000c2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0096\u0001J \u00102\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u0006\u0010\u0010\u001a\u000203H\u0096\u0001\u00a2\u0006\u0002\u00104J.\u00105\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0096\u0001\u00a2\u0006\u0002\u00107J(\u00105\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u0006\u00106\u001a\u0002H\u000fH\u0096\u0001\u00a2\u0006\u0002\u00108J\"\u00109\u001a\u0004\u0018\u0001H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u0006\u0010\u0010\u001a\u000203H\u0096\u0001\u00a2\u0006\u0002\u00104J2\u0010:\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u0006\u0010;\u001a\u0002H\u001bH\u0096\u0001\u00a2\u0006\u0002\u00108J@\u0010<\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u0006\u0010;\u001a\u0002H\u001b2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0096\u0001\u00a2\u0006\u0002\u0010=J:\u0010<\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u0006\u0010;\u001a\u0002H\u001b2\u0006\u00106\u001a\u0002H\u000fH\u0096\u0001\u00a2\u0006\u0002\u0010>J4\u0010?\u001a\u0004\u0018\u0001H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\u001b*\u00020\t2\u0006\u0010\u0010\u001a\u0002032\u0006\u0010;\u001a\u0002H\u001bH\u0096\u0001\u00a2\u0006\u0002\u00108J8\u0010@\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t\"\u0008\u0008\u0001\u0010\n*\u00020\t2\u0006\u0010A\u001a\u0002032\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0019H\u0096\u0001\u00a2\u0006\u0002\u0010CJ(\u0010@\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\t2\u0006\u0010A\u001a\u0002032\u0006\u0010D\u001a\u00020\u0017H\u0096\u0001\u00a2\u0006\u0002\u0010EJ!\u0010F\u001a\u00020G\"\u0008\u0008\u0000\u0010\n*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cH\u0096\u0001J\u0011\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020JH\u0096\u0001J\u001b\u0010K\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\tH\u0086\u0008J#\u0010K\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\t2\u0006\u0010;\u001a\u00020\tH\u0086\u0008J3\u0010M\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u0008*\u00020\t2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0019H\u0086\u0008J/\u0010M\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\u000f\u0018\u0001*\u00020\t\"\n\u0008\u0001\u0010\n\u0018\u0001*\u00020\t2\u0006\u0010D\u001a\u00020\u0017H\u0086\u0008J3\u0010M\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u0008*\u00020\t2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u0002H\u00080NH\u0086\u0008J\u001b\u0010O\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\tH\u0086\u0008J#\u0010O\u001a\u0008\u0012\u0004\u0012\u0002H\n0L\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\t2\u0006\u0010;\u001a\u00020\tH\u0086\u0008R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006P"
    }
    d2 = {
        "Luy/kohesive/injekt/api/InjektScope;",
        "Luy/kohesive/injekt/api/InjektRegistrar;",
        "registrar",
        "(Luy/kohesive/injekt/api/InjektRegistrar;)V",
        "getRegistrar",
        "()Luy/kohesive/injekt/api/InjektRegistrar;",
        "addAlias",
        "",
        "O",
        "",
        "T",
        "existingRegisteredType",
        "Luy/kohesive/injekt/api/TypeReference;",
        "otherAncestorOrInterface",
        "addFactory",
        "R",
        "forType",
        "factoryCalledEveryTime",
        "Lkotlin/Function0;",
        "addLoggerFactory",
        "forLoggerType",
        "factoryByName",
        "Lkotlin/Function1;",
        "",
        "factoryByClass",
        "Ljava/lang/Class;",
        "addPerKeyFactory",
        "K",
        "factoryCalledPerKey",
        "addPerThreadFactory",
        "factoryCalledOncePerThread",
        "addPerThreadPerKeyFactory",
        "factoryCalledPerKeyPerThread",
        "addScopedFactory",
        "scopedFactoryCalledEveryTime",
        "Lkotlin/ExtensionFunctionType;",
        "addScopedPerKeyFactory",
        "scopedFactoryCalledPerKey",
        "Lkotlin/Function2;",
        "addScopedPerThreadFactory",
        "scopedFactoryCalledPerThread",
        "addScopedPerThreadPerKeyFactory",
        "scopedFactoryCalledPerKeyPerThread",
        "addScopedSingletonFactory",
        "scopedFactoryCalledOnce",
        "addSingleton",
        "singleInstance",
        "(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V",
        "addSingletonFactory",
        "factoryCalledOnce",
        "getInstance",
        "Ljava/lang/reflect/Type;",
        "(Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "getInstanceOrElse",
        "default",
        "(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;",
        "getInstanceOrNull",
        "getKeyedInstance",
        "key",
        "getKeyedInstanceOrElse",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "getKeyedInstanceOrNull",
        "getLogger",
        "expectedLoggerType",
        "forClass",
        "(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;",
        "byName",
        "(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;",
        "hasFactory",
        "",
        "importModule",
        "submodule",
        "Luy/kohesive/injekt/api/InjektModule;",
        "injectLazy",
        "Lkotlin/Lazy;",
        "injectLogger",
        "Lkotlin/reflect/KClass;",
        "injectValue",
        "injekt-api-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field private final registrar:Luy/kohesive/injekt/api/InjektRegistrar;


# direct methods
.method public constructor <init>(Luy/kohesive/injekt/api/InjektRegistrar;)V
    .locals 1

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    return-void
.end method

.method private final addScopedFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luy/kohesive/injekt/api/InjektScope;",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$addScopedFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$addScopedFactory$$inlined$fullType$1;-><init>()V

    .line 45
    new-instance v1, Luy/kohesive/injekt/api/InjektScope$addScopedFactory$1;

    invoke-direct {v1, p0, p1}, Luy/kohesive/injekt/api/InjektScope$addScopedFactory$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Luy/kohesive/injekt/api/InjektScope;->addFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final addScopedPerKeyFactory(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Luy/kohesive/injekt/api/InjektScope;",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$addScopedPerKeyFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$addScopedPerKeyFactory$$inlined$fullType$1;-><init>()V

    .line 49
    new-instance v1, Luy/kohesive/injekt/api/InjektScope$addScopedPerKeyFactory$1;

    invoke-direct {v1, p0, p1}, Luy/kohesive/injekt/api/InjektScope$addScopedPerKeyFactory$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0, v1}, Luy/kohesive/injekt/api/InjektScope;->addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final addScopedPerThreadFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luy/kohesive/injekt/api/InjektScope;",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$$inlined$fullType$1;-><init>()V

    .line 57
    new-instance v1, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;

    invoke-direct {v1, p0, p1}, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Luy/kohesive/injekt/api/InjektScope;->addPerThreadFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final addScopedPerThreadPerKeyFactory(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Luy/kohesive/injekt/api/InjektScope;",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$$inlined$fullType$1;-><init>()V

    .line 53
    new-instance v1, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;

    invoke-direct {v1, p0, p1}, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0, v1}, Luy/kohesive/injekt/api/InjektScope;->addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final addScopedSingletonFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luy/kohesive/injekt/api/InjektScope;",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$addScopedSingletonFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$addScopedSingletonFactory$$inlined$fullType$1;-><init>()V

    .line 41
    new-instance v1, Luy/kohesive/injekt/api/InjektScope$addScopedSingletonFactory$1;

    invoke-direct {v1, p0, p1}, Luy/kohesive/injekt/api/InjektScope$addScopedSingletonFactory$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Luy/kohesive/injekt/api/InjektScope;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final injectLazy()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectLazy$1;

    invoke-direct {v0, p0}, Luy/kohesive/injekt/api/InjektScope$injectLazy$1;-><init>(Luy/kohesive/injekt/api/InjektScope;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private final injectLazy(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectLazy$2;

    invoke-direct {v0, p0, p1}, Luy/kohesive/injekt/api/InjektScope$injectLazy$2;-><init>(Luy/kohesive/injekt/api/InjektScope;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final injectLogger(Ljava/lang/Class;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectLogger$1;

    invoke-direct {v0, p0, p1}, Luy/kohesive/injekt/api/InjektScope$injectLogger$1;-><init>(Luy/kohesive/injekt/api/InjektScope;Ljava/lang/Class;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final injectLogger(Ljava/lang/String;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectLogger$3;

    invoke-direct {v0, p0, p1}, Luy/kohesive/injekt/api/InjektScope$injectLogger$3;-><init>(Luy/kohesive/injekt/api/InjektScope;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final injectLogger(Lkotlin/reflect/KClass;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TO;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectLogger$2;

    invoke-direct {v0, p0, p1}, Luy/kohesive/injekt/api/InjektScope$injectLogger$2;-><init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/reflect/KClass;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final injectValue()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectValue$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$injectValue$$inlined$fullType$1;-><init>()V

    .line 24
    invoke-interface {v0}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private final injectValue(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/InjektScope$injectValue$$inlined$fullType$2;

    invoke-direct {v0}, Luy/kohesive/injekt/api/InjektScope$injectValue$$inlined$fullType$2;-><init>()V

    .line 35
    invoke-interface {v0}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAlias(Luy/kohesive/injekt/api/TypeReference;Luy/kohesive/injekt/api/TypeReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T::TO;>(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TT;>;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TO;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "existingRegisteredType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherAncestorOrInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addAlias(Luy/kohesive/injekt/api/TypeReference;Luy/kohesive/injekt/api/TypeReference;)V

    return-void
.end method

.method public addFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledEveryTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public addLoggerFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryByName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryByClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2, p3}, Luy/kohesive/injekt/api/InjektRegistry;->addLoggerFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledPerKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public addPerThreadFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledOncePerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addPerThreadFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledPerKeyPerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public addSingleton(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleInstance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addSingleton(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V

    return-void
.end method

.method public addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledOnce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TR;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceOrElse(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceOrNull(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrNull(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;TR;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2, p3}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2, p3}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyedInstanceOrNull(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrNull(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 0
    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 0
    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRegistrar()Luy/kohesive/injekt/api/InjektRegistrar;
    .locals 1

    .line 11
    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    return-object v0
.end method

.method public hasFactory(Luy/kohesive/injekt/api/TypeReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TT;>;)Z"
        }
    .end annotation

    .line 0
    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->hasFactory(Luy/kohesive/injekt/api/TypeReference;)Z

    move-result p1

    return p1
.end method

.method public importModule(Luy/kohesive/injekt/api/InjektModule;)V
    .locals 1

    .line 0
    const-string v0, "submodule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope;->registrar:Luy/kohesive/injekt/api/InjektRegistrar;

    invoke-interface {v0, p1}, Luy/kohesive/injekt/api/InjektRegistrar;->importModule(Luy/kohesive/injekt/api/InjektModule;)V

    return-void
.end method
