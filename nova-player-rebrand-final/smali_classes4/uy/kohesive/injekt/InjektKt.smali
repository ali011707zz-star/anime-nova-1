.class public final Luy/kohesive/injekt/InjektKt;
.super Ljava/lang/Object;
.source "Injekt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001b\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\tH\u0086\u0008\u001a#\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0086\u0008\u001a3\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u000c*\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000eH\u0086\u0008\u001a#\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0008\u001a3\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t\"\u0008\u0008\u0001\u0010\u000c*\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0011H\u0086\u0008\u001a\u001b\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\tH\u0086\u0008\u001a#\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0086\u0008\u001a0\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\t\"\n\u0008\u0001\u0010\u0008\u0018\u0001*\u00020\t*\u0002H\u0013H\u0086\u0008\u00a2\u0006\u0002\u0010\u0014\"\u001e\u0010\u0000\u001a\u00020\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "Injekt",
        "Luy/kohesive/injekt/api/InjektScope;",
        "getInjekt",
        "()Luy/kohesive/injekt/api/InjektScope;",
        "setInjekt",
        "(Luy/kohesive/injekt/api/InjektScope;)V",
        "injectLazy",
        "Lkotlin/Lazy;",
        "T",
        "",
        "key",
        "injectLogger",
        "O",
        "forClass",
        "Ljava/lang/Class;",
        "byName",
        "",
        "Lkotlin/reflect/KClass;",
        "injectValue",
        "R",
        "(Ljava/lang/Object;)Lkotlin/Lazy;",
        "injekt-core-compileKotlin"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# static fields
.field private static volatile Injekt:Luy/kohesive/injekt/api/InjektScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Luy/kohesive/injekt/api/InjektScope;

    new-instance v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar;

    invoke-direct {v1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;-><init>()V

    invoke-direct {v0, v1}, Luy/kohesive/injekt/api/InjektScope;-><init>(Luy/kohesive/injekt/api/InjektRegistrar;)V

    sput-object v0, Luy/kohesive/injekt/InjektKt;->Injekt:Luy/kohesive/injekt/api/InjektScope;

    return-void
.end method

.method public static final getInjekt()Luy/kohesive/injekt/api/InjektScope;
    .locals 1

    .line 9
    sget-object v0, Luy/kohesive/injekt/InjektKt;->Injekt:Luy/kohesive/injekt/api/InjektScope;

    return-object v0
.end method

.method private static final injectLazy()Lkotlin/Lazy;
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

    .line 17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Luy/kohesive/injekt/InjektKt$injectLazy$1;->INSTANCE:Luy/kohesive/injekt/InjektKt$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private static final injectLazy(Ljava/lang/Object;)Lkotlin/Lazy;
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

    .line 25
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/InjektKt$injectLazy$2;

    invoke-direct {v0, p0}, Luy/kohesive/injekt/InjektKt$injectLazy$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private static final injectLogger(Ljava/lang/Class;)Lkotlin/Lazy;
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

    .line 41
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/InjektKt$injectLogger$3;

    invoke-direct {v0, p0}, Luy/kohesive/injekt/InjektKt$injectLogger$3;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private static final injectLogger(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p0, Luy/kohesive/injekt/InjektKt$injectLogger$1;->INSTANCE:Luy/kohesive/injekt/InjektKt$injectLogger$1;

    invoke-static {p0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private static final injectLogger(Ljava/lang/String;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/InjektKt$injectLogger$4;

    invoke-direct {v0, p0}, Luy/kohesive/injekt/InjektKt$injectLogger$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private static final injectLogger(Lkotlin/reflect/KClass;)Lkotlin/Lazy;
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

    .line 37
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/InjektKt$injectLogger$2;

    invoke-direct {v0, p0}, Luy/kohesive/injekt/InjektKt$injectLogger$2;-><init>(Lkotlin/reflect/KClass;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private static final injectValue()Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/InjektKt$injectValue$$inlined$fullType$1;

    invoke-direct {v1}, Luy/kohesive/injekt/InjektKt$injectValue$$inlined$fullType$1;-><init>()V

    .line 24
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private static final injectValue(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 2
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

    .line 29
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/InjektKt$injectValue$$inlined$fullType$2;

    invoke-direct {v1}, Luy/kohesive/injekt/InjektKt$injectValue$$inlined$fullType$2;-><init>()V

    .line 35
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final setInjekt(Luy/kohesive/injekt/api/InjektScope;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object p0, Luy/kohesive/injekt/InjektKt;->Injekt:Luy/kohesive/injekt/api/InjektScope;

    return-void
.end method
