.class public final Luy/kohesive/injekt/InjektKt$injectLogger$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Injekt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/InjektKt;->injectLogger(Ljava/lang/String;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
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
.field final synthetic $byName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Luy/kohesive/injekt/InjektKt$injectLogger$4;->$byName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Luy/kohesive/injekt/InjektKt$injectLogger$4$$special$$inlined$fullType$1;

    invoke-direct {v1}, Luy/kohesive/injekt/InjektKt$injectLogger$4$$special$$inlined$fullType$1;-><init>()V

    .line 45
    iget-object v2, p0, Luy/kohesive/injekt/InjektKt$injectLogger$4;->$byName:Ljava/lang/String;

    .line 51
    invoke-interface {v1}, Luy/kohesive/injekt/api/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Luy/kohesive/injekt/api/InjektFactory;->getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
