.class public final Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Injekt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/json/Json;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "invoke",
        "()Ljava/lang/Object;",
        "uy/kohesive/injekt/InjektKt$injectLazy$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInjekt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Injekt.kt\nuy/kohesive/injekt/InjektKt$injectLazy$1\n+ 2 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n+ 3 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n*L\n1#1,48:1\n27#2:49\n24#3:50\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;

    invoke-direct {v0}, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;-><init>()V

    sput-object v0, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;->INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/json/Json;"
        }
    .end annotation

    .line 17
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3$1;

    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3$1;-><init>()V

    .line 50
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
