.class public abstract Luy/kohesive/injekt/api/LocalScoped;
.super Ljava/lang/Object;
.source "Scope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\u0001H\u0086\u0008J#\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0086\u0008J\u001b\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\u0001H\u0086\u0008J#\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0086\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Luy/kohesive/injekt/api/LocalScoped;",
        "",
        "localScope",
        "Luy/kohesive/injekt/api/InjektScope;",
        "(Luy/kohesive/injekt/api/InjektScope;)V",
        "getLocalScope",
        "()Luy/kohesive/injekt/api/InjektScope;",
        "injectLazy",
        "Lkotlin/Lazy;",
        "T",
        "key",
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
.field private final localScope:Luy/kohesive/injekt/api/InjektScope;


# direct methods
.method public constructor <init>(Luy/kohesive/injekt/api/InjektScope;)V
    .locals 1

    const-string v0, "localScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy/kohesive/injekt/api/LocalScoped;->localScope:Luy/kohesive/injekt/api/InjektScope;

    return-void
.end method

.method public static final synthetic access$getLocalScope$p(Luy/kohesive/injekt/api/LocalScoped;)Luy/kohesive/injekt/api/InjektScope;
    .locals 0

    .line 61
    iget-object p0, p0, Luy/kohesive/injekt/api/LocalScoped;->localScope:Luy/kohesive/injekt/api/InjektScope;

    return-object p0
.end method

.method private final injectLazy()Lkotlin/Lazy;
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

    .line 63
    invoke-static {p0}, Luy/kohesive/injekt/api/LocalScoped;->access$getLocalScope$p(Luy/kohesive/injekt/api/LocalScoped;)Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/api/LocalScoped$injectLazy$$inlined$injectLazy$1;

    invoke-direct {v1, v0}, Luy/kohesive/injekt/api/LocalScoped$injectLazy$$inlined$injectLazy$1;-><init>(Luy/kohesive/injekt/api/InjektScope;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private final injectLazy(Ljava/lang/Object;)Lkotlin/Lazy;
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

    .line 71
    invoke-static {p0}, Luy/kohesive/injekt/api/LocalScoped;->access$getLocalScope$p(Luy/kohesive/injekt/api/LocalScoped;)Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/api/LocalScoped$injectLazy$$inlined$injectLazy$2;

    invoke-direct {v1, v0, p1}, Luy/kohesive/injekt/api/LocalScoped$injectLazy$$inlined$injectLazy$2;-><init>(Luy/kohesive/injekt/api/InjektScope;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final injectValue()Lkotlin/Lazy;
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

    .line 67
    invoke-static {p0}, Luy/kohesive/injekt/api/LocalScoped;->access$getLocalScope$p(Luy/kohesive/injekt/api/LocalScoped;)Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/api/LocalScoped$injectValue$$inlined$injectValue$1;

    invoke-direct {v1}, Luy/kohesive/injekt/api/LocalScoped$injectValue$$inlined$injectValue$1;-><init>()V

    .line 24
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method private final injectValue(Ljava/lang/Object;)Lkotlin/Lazy;
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

    .line 75
    invoke-static {p0}, Luy/kohesive/injekt/api/LocalScoped;->access$getLocalScope$p(Luy/kohesive/injekt/api/LocalScoped;)Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/api/LocalScoped$injectValue$$inlined$injectValue$2;

    invoke-direct {v1}, Luy/kohesive/injekt/api/LocalScoped$injectValue$$inlined$injectValue$2;-><init>()V

    .line 35
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Luy/kohesive/injekt/api/InjektFactory;->getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final getLocalScope()Luy/kohesive/injekt/api/InjektScope;
    .locals 1

    .line 61
    iget-object v0, p0, Luy/kohesive/injekt/api/LocalScoped;->localScope:Luy/kohesive/injekt/api/InjektScope;

    return-object v0
.end method
