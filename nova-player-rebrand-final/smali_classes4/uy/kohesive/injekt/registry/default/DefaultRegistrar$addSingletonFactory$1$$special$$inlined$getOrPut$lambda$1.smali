.class final Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1$$special$$inlined$getOrPut$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultRegistrar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->invoke()Ljava/lang/Object;
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
.field final synthetic this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;


# direct methods
.method constructor <init>(Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1$$special$$inlined$getOrPut$lambda$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1$$special$$inlined$getOrPut$lambda$1;->this$0:Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;

    iget-object v0, v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$addSingletonFactory$1;->$factoryCalledOnce:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
