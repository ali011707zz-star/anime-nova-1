.class public Luy/kohesive/injekt/registry/default/DefaultRegistrar;
.super Ljava/lang/Object;
.source "DefaultRegistrar.kt"

# interfaces
.implements Luy/kohesive/injekt/api/InjektRegistrar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;,
        Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;,
        Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0008\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0002EL\u0008\u0016\u0018\u00002\u00020\u0001:\u0003UVWB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J=\u0010\t\u001a\u0004\u0018\u00018\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0006*\u00020\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00072\u0006\u0010\u0008\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ/\u0010\u0014\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0010*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J5\u0010\u0019\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ5\u0010\u001c\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ5\u0010\u001e\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJE\u0010!\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u001fH\u0017\u00a2\u0006\u0004\u0008!\u0010\"JE\u0010$\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u001fH\u0017\u00a2\u0006\u0004\u0008$\u0010\"JU\u0010*\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00028\u00000\u001f2\u0018\u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040(\u0012\u0004\u0012\u00028\u00000\u001fH\u0016\u00a2\u0006\u0004\u0008*\u0010+J?\u0010/\u001a\u00020\r\"\u0008\u0008\u0000\u0010,*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0010*\u00028\u00002\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00112\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016\u00a2\u0006\u0004\u0008/\u00100J\'\u00102\u001a\u000201\"\u0008\u0008\u0000\u0010\u0010*\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016\u00a2\u0006\u0004\u00082\u00103J!\u00104\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0017\u00a2\u0006\u0004\u00084\u00105J)\u00107\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u00106\u001a\u00028\u0000H\u0017\u00a2\u0006\u0004\u00087\u00108J/\u00107\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0017\u00a2\u0006\u0004\u00087\u00109J#\u0010:\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0017\u00a2\u0006\u0004\u0008:\u00105J3\u0010;\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0001H\u0017\u00a2\u0006\u0004\u0008;\u00108J;\u0010<\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u00012\u0006\u00106\u001a\u00028\u0000H\u0017\u00a2\u0006\u0004\u0008<\u0010=JA\u0010<\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u00012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0017\u00a2\u0006\u0004\u0008<\u0010>J5\u0010?\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0001H\u0017\u00a2\u0006\u0004\u0008?\u00108J)\u0010A\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020&H\u0017\u00a2\u0006\u0004\u0008A\u0010BJ9\u0010A\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0016*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0010*\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00010(H\u0017\u00a2\u0006\u0004\u0008A\u0010DR\u0014\u0010F\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR \u0010J\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u00040H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010M\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR&\u0010O\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00170H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010KR,\u0010P\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001f0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010KR \u0010Q\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00040H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010KR\u0018\u0010S\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010T\u00a8\u0006X"
    }
    d2 = {
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar;",
        "Luy/kohesive/injekt/api/InjektRegistrar;",
        "<init>",
        "()V",
        "",
        "K",
        "V",
        "",
        "key",
        "getByKey",
        "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;",
        "expectedLoggerType",
        "",
        "assertLogger",
        "(Ljava/lang/reflect/Type;)V",
        "T",
        "Luy/kohesive/injekt/api/TypeReference;",
        "forType",
        "singleInstance",
        "addSingleton",
        "(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V",
        "R",
        "Lkotlin/Function0;",
        "factoryCalledOnce",
        "addSingletonFactory",
        "(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V",
        "factoryCalledEveryTime",
        "addFactory",
        "factoryCalledOncePerThread",
        "addPerThreadFactory",
        "Lkotlin/Function1;",
        "factoryCalledPerKey",
        "addPerKeyFactory",
        "(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V",
        "factoryCalledPerKeyPerThread",
        "addPerThreadPerKeyFactory",
        "forLoggerType",
        "",
        "factoryByName",
        "Ljava/lang/Class;",
        "factoryByClass",
        "addLoggerFactory",
        "(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "O",
        "existingRegisteredType",
        "otherAncestorOrInterface",
        "addAlias",
        "(Luy/kohesive/injekt/api/TypeReference;Luy/kohesive/injekt/api/TypeReference;)V",
        "",
        "hasFactory",
        "(Luy/kohesive/injekt/api/TypeReference;)Z",
        "getInstance",
        "(Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "default",
        "getInstanceOrElse",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getInstanceOrNull",
        "getKeyedInstance",
        "getKeyedInstanceOrElse",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getKeyedInstanceOrNull",
        "byName",
        "getLogger",
        "(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;",
        "forClass",
        "(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;",
        "uy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1",
        "NOKEY",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;",
        "j$/util/concurrent/ConcurrentHashMap",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
        "existingValues",
        "Lj$/util/concurrent/ConcurrentHashMap;",
        "uy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1",
        "threadedValues",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;",
        "factories",
        "keyedFactories",
        "metadataForAddons",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;",
        "loggerFactory",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;",
        "FactoryType",
        "Instance",
        "LoggerInfo",
        "injekt-core-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final NOKEY:Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;

.field private final existingValues:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final factories:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

.field private final metadataForAddons:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final threadedValues:Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;

    invoke-direct {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->NOKEY:Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;

    .line 23
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->existingValues:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;

    invoke-direct {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->threadedValues:Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;

    .line 30
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->metadataForAddons:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getExistingValues$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 13
    iget-object p0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->existingValues:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getNOKEY$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;
    .locals 0

    .line 13
    iget-object p0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->NOKEY:Luy/kohesive/injekt/registry/default/DefaultRegistrar$NOKEY$1;

    return-object p0
.end method

.method public static final synthetic access$getThreadedValues$p(Luy/kohesive/injekt/registry/default/DefaultRegistrar;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;
    .locals 0

    .line 13
    iget-object p0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->threadedValues:Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;

    return-object p0
.end method

.method private final assertLogger(Ljava/lang/reflect/Type;)V
    .locals 3

    .line 150
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->getForWhatType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Luy/kohesive/injekt/api/InjektionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logger factories registered with Injekt indicate they return type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->getForWhatType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but current injekt target is expecting type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luy/kohesive/injekt/api/InjektionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 151
    :cond_3
    new-instance p1, Luy/kohesive/injekt/api/InjektionException;

    const-string v0, "Cannot call getLogger() -- A logger factory has not been registered with Injekt"

    invoke-direct {p1, v0}, Luy/kohesive/injekt/api/InjektionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TK;)TV;"
        }
    .end annotation

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAlias(Luy/kohesive/injekt/api/TypeReference;Luy/kohesive/injekt/api/TypeReference;)V
    .locals 3
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

    const-string v0, "existingRegisteredType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherAncestorOrInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 84
    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledEveryTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v0, "forLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryByName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryByClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;-><init>(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    return-void
.end method

.method public addPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 3
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledPerKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;

    invoke-direct {v2, p0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerKeyFactory$1;-><init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPerThreadFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 3
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledOncePerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadFactory$1;

    invoke-direct {v2, p0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadFactory$1;-><init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPerThreadPerKeyFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V
    .locals 3
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledPerKeyPerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;

    invoke-direct {v2, p0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addPerThreadPerKeyFactory$1;-><init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleInstance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingleton$1;

    invoke-direct {v0, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingleton$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    .line 24
    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p0, p1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    return-void
.end method

.method public addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V
    .locals 3
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryCalledOnce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;

    invoke-direct {v2, p0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;-><init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar;Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type R"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    new-instance v0, Luy/kohesive/injekt/api/InjektionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No registered instance or factory for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luy/kohesive/injekt/api/InjektionException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    .line 109
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p2
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    .line 121
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type R"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    new-instance p2, Luy/kohesive/injekt/api/InjektionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No registered keyed factory for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Luy/kohesive/injekt/api/InjektionException;-><init>(Ljava/lang/String;)V

    throw p2
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p3
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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

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

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->assertLogger(Ljava/lang/reflect/Type;)V

    .line 166
    iget-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->getClassFactory()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p2}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-string v0, "expectedLoggerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->assertLogger(Ljava/lang/reflect/Type;)V

    .line 160
    iget-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->loggerFactory:Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->getNameFactory()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type R"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFactory(Luy/kohesive/injekt/api/TypeReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luy/kohesive/injekt/api/TypeReference<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "forType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->factories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->keyedFactories:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Luy/kohesive/injekt/registry/default/DefaultRegistrar;->getByKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public importModule(Luy/kohesive/injekt/api/InjektModule;)V
    .locals 1

    const-string v0, "submodule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Luy/kohesive/injekt/api/InjektRegistrar$DefaultImpls;->importModule(Luy/kohesive/injekt/api/InjektRegistrar;Luy/kohesive/injekt/api/InjektModule;)V

    return-void
.end method
