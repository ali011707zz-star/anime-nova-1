.class public final Luy/kohesive/injekt/api/FactoryKt;
.super Ljava/lang/Object;
.source "Factory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u00006\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\u0008\u00a2\u0006\u0002\u0010\u0004\u001a&\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0006\u001a*\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0008H\u0086\u0008\u00a2\u0006\u0002\u0010\t\u001a2\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001a.\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000e\u0008\u0008\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\rH\u0086\u0008\u00a2\u0006\u0002\u0010\u000e\u001a&\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u000c\u001a\u0002H\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u0006\u001a6\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\u000e\u0008\u0008\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\rH\u0086\u0008\u00a2\u0006\u0002\u0010\u000f\u001a.\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u0002H\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u0010\u001a<\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u000e\u0008\u0008\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\rH\u0086\u0008\u00a2\u0006\u0002\u0010\u0011\u001a4\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u000c\u001a\u0002H\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001aD\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00022\u000e\u0008\u0008\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\rH\u0086\u0008\u00a2\u0006\u0002\u0010\u0012\u001a<\u0010\u000b\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u0002H\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u0013\u001a \u0010\u0014\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\u0008\u00a2\u0006\u0002\u0010\u0004\u001a(\u0010\u0014\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0006\u001a.\u0010\u0014\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0008H\u0086\u0008\u00a2\u0006\u0002\u0010\t\u001a6\u0010\u0014\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001a\u001e\u0010\u0015\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\n\u00a2\u0006\u0002\u0010\u0004\u001a6\u0010\u0016\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0002*\u00020\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\u0008\u00a2\u0006\u0002\u0010\u001a\u001a&\u0010\u0016\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0006\u001a&\u0010\u0016\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH\u0086\u0008\u00a2\u0006\u0002\u0010\u001e\u001a6\u0010\u0016\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0002*\u00020\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u001fH\u0086\u0008\u00a2\u0006\u0002\u0010 \u001aB\u0010\u0016\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0002*\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\u0008\u00a2\u0006\u0002\u0010\"\u001a2\u0010\u0016\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u001b\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001a2\u0010\u0016\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0086\u0008\u00a2\u0006\u0002\u0010#\u001aB\u0010\u0016\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0002*\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00082\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u001fH\u0086\u0008\u00a2\u0006\u0002\u0010$\u00a8\u0006%"
    }
    d2 = {
        "get",
        "R",
        "",
        "Luy/kohesive/injekt/api/InjektFactory;",
        "(Luy/kohesive/injekt/api/InjektFactory;)Ljava/lang/Object;",
        "key",
        "(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;)Ljava/lang/Object;",
        "forType",
        "Luy/kohesive/injekt/api/TypeReference;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;",
        "getOrElse",
        "default",
        "Lkotlin/Function0;",
        "(Luy/kohesive/injekt/api/InjektFactory;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "getOrNull",
        "invoke",
        "logger",
        "T",
        "forClass",
        "Ljava/lang/Class;",
        "(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Class;)Ljava/lang/Object;",
        "byObject",
        "byName",
        "",
        "(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/String;)Ljava/lang/Object;",
        "Lkotlin/reflect/KClass;",
        "(Luy/kohesive/injekt/api/InjektFactory;Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "expectedLoggerType",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Class;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/String;)Ljava/lang/Object;",
        "(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Lkotlin/reflect/KClass;)Ljava/lang/Object;",
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
.method private static final get(Luy/kohesive/injekt/api/InjektFactory;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$get$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$get$$inlined$fullType$1;-><init>()V

    .line 30
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final get(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$get$$inlined$fullType$2;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$get$$inlined$fullType$2;-><init>()V

    .line 40
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;)TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "TR;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$1;-><init>()V

    .line 31
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Object;",
            "TR;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$3;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$3;-><init>()V

    .line 41
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$4;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$4;-><init>()V

    .line 42
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$2;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrElse$$inlined$fullType$2;-><init>()V

    .line 32
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;TR;)TR;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Object;",
            "TR;)TR;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrElse(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrElse(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrNull(Luy/kohesive/injekt/api/InjektFactory;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrNull$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrNull$$inlined$fullType$1;-><init>()V

    .line 33
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrNull(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrNull(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$getOrNull$$inlined$fullType$2;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$getOrNull$$inlined$fullType$2;-><init>()V

    .line 43
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrNull(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrNull(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstanceOrNull(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrNull(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstanceOrNull(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke(Luy/kohesive/injekt/api/InjektFactory;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$invoke$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$invoke$$inlined$fullType$1;-><init>()V

    .line 29
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final logger(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Class<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$1;-><init>()V

    .line 46
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final logger(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$4;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$4;-><init>()V

    .line 55
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final logger(Luy/kohesive/injekt/api/InjektFactory;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$3;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$3;-><init>()V

    .line 52
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final logger(Luy/kohesive/injekt/api/InjektFactory;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$2;

    invoke-direct {v0}, Luy/kohesive/injekt/api/FactoryKt$logger$$inlined$fullType$2;-><init>()V

    .line 49
    invoke-virtual {v0}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final logger(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Class<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final logger(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final logger(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final logger(Luy/kohesive/injekt/api/InjektFactory;Luy/kohesive/injekt/api/TypeReference;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/InjektFactory;",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TR;>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
