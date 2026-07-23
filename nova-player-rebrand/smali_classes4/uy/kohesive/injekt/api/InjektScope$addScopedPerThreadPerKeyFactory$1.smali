.class public final Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/api/InjektScope;->addScopedPerThreadPerKeyFactory(Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TK;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u00028\u00002\u0006\u0010\u0001\u001a\u00028\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "key",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $scopedFactoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Luy/kohesive/injekt/api/InjektScope;


# direct methods
.method public constructor <init>(Luy/kohesive/injekt/api/InjektScope;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;->this$0:Luy/kohesive/injekt/api/InjektScope;

    iput-object p2, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;->$scopedFactoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TR;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;->$scopedFactoryCalledPerKeyPerThread:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Luy/kohesive/injekt/api/InjektScope$addScopedPerThreadPerKeyFactory$1;->this$0:Luy/kohesive/injekt/api/InjektScope;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
