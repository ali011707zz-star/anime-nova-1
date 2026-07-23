.class public final Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/api/InjektScope;->addScopedPerThreadFactory(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $scopedFactoryCalledPerThread:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Luy/kohesive/injekt/api/InjektScope;


# direct methods
.method public constructor <init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;->this$0:Luy/kohesive/injekt/api/InjektScope;

    iput-object p2, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;->$scopedFactoryCalledPerThread:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;->$scopedFactoryCalledPerThread:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadFactory$1;->this$0:Luy/kohesive/injekt/api/InjektScope;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
