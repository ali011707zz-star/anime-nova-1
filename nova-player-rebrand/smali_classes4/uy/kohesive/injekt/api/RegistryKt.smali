.class public final Luy/kohesive/injekt/api/RegistryKt;
.super Ljava/lang/Object;
.source "Registry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u0002H\u0003\"\n\u0008\u0001\u0010\u0003\u0018\u0001*\u00020\u0004*\u00020\u0005H\u0086\u0008\u001a)\u0010\u0006\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004*\u00020\u00052\u000e\u0008\u0008\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\tH\u0086\u0008\u001aK\u0010\n\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004*\u00020\u00052\u0014\u0008\u0008\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002H\u00070\u000c2\u001a\u0008\u0008\u0010\u000e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000f\u0012\u0004\u0012\u0002H\u00070\u000cH\u0086\u0008\u001a9\u0010\u0010\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0011*\u00020\u0004*\u00020\u00052\u0014\u0008\u0008\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00070\u000cH\u0086\u0008\u001a)\u0010\u0013\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004*\u00020\u00052\u000e\u0008\u0008\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\tH\u0086\u0008\u001a9\u0010\u0015\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0011*\u00020\u0004*\u00020\u00052\u0014\u0008\u0008\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00070\u000cH\u0086\u0008\u001a&\u0010\u0017\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u0004*\u00020\u00052\u0006\u0010\u0019\u001a\u0002H\u0018H\u0086\u0008\u00a2\u0006\u0002\u0010\u001a\u001a)\u0010\u001b\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0004*\u00020\u00052\u000e\u0008\u0008\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\tH\u0086\u0008\u001a\u0019\u0010\u001d\u001a\u00020\u001e\"\n\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u0004*\u00020\u0005H\u0086\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "addAlias",
        "",
        "EXISTINGREGISTERED",
        "ANCESTORTYPE",
        "",
        "Luy/kohesive/injekt/api/InjektRegistry;",
        "addFactory",
        "R",
        "factoryCalledEveryTime",
        "Lkotlin/Function0;",
        "addLoggerFactory",
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
        "addSingleton",
        "T",
        "singleInstance",
        "(Luy/kohesive/injekt/api/InjektRegistry;Ljava/lang/Object;)V",
        "addSingletonFactory",
        "factoryCalledOnce",
        "hasFactory",
        "",
        "injekt-api-compileKotlin"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method private static final addAlias(Luy/kohesive/injekt/api/InjektRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EXISTINGREGISTERED::TANCESTORTYPE;ANCESTORTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addAlias$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addAlias$$inlined$fullType$1;-><init>()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/api/RegistryKt$addAlias$$inlined$fullType$2;

    invoke-direct {v1}, Luy/kohesive/injekt/api/RegistryKt$addAlias$$inlined$fullType$2;-><init>()V

    .line 49
    invoke-interface {p0, v0, v1}, Luy/kohesive/injekt/api/InjektRegistry;->addAlias(Luy/kohesive/injekt/api/TypeReference;Luy/kohesive/injekt/api/TypeReference;)V

    return-void
.end method

.method private static final addFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addFactory$$inlined$fullType$1;-><init>()V

    .line 30
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final addLoggerFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
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

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addLoggerFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addLoggerFactory$$inlined$fullType$1;-><init>()V

    .line 46
    invoke-interface {p0, v0, p1, p2}, Luy/kohesive/injekt/api/InjektRegistry;->addLoggerFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addPerKeyFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addPerKeyFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addPerKeyFactory$$inlined$fullType$1;-><init>()V

    .line 38
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addPerThreadFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addPerThreadFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addPerThreadFactory$$inlined$fullType$1;-><init>()V

    .line 34
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addPerThreadFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addPerThreadPerKeyFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addPerThreadPerKeyFactory$$inlined$fullType$1;-><init>()V

    .line 42
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addSingleton(Luy/kohesive/injekt/api/InjektRegistry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "TT;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addSingleton$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addSingleton$$inlined$fullType$1;-><init>()V

    .line 22
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addSingleton(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V

    return-void
.end method

.method private static final addSingletonFactory(Luy/kohesive/injekt/api/InjektRegistry;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$addSingletonFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$addSingletonFactory$$inlined$fullType$1;-><init>()V

    .line 26
    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final hasFactory(Luy/kohesive/injekt/api/InjektRegistry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektRegistry;",
            ")Z"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/RegistryKt$hasFactory$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/RegistryKt$hasFactory$$inlined$fullType$1;-><init>()V

    .line 18
    invoke-interface {p0, v0}, Luy/kohesive/injekt/api/InjektRegistry;->hasFactory(Luy/kohesive/injekt/api/TypeReference;)Z

    move-result p0

    return p0
.end method
