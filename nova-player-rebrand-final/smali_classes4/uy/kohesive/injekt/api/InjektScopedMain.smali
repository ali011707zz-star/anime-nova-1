.class public abstract Luy/kohesive/injekt/api/InjektScopedMain;
.super Ljava/lang/Object;
.source "Modules.kt"

# interfaces
.implements Luy/kohesive/injekt/api/InjektModule;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Luy/kohesive/injekt/api/InjektScopedMain;",
        "Luy/kohesive/injekt/api/InjektModule;",
        "scope",
        "Luy/kohesive/injekt/api/InjektScope;",
        "(Luy/kohesive/injekt/api/InjektScope;)V",
        "getScope",
        "()Luy/kohesive/injekt/api/InjektScope;",
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
.field private final scope:Luy/kohesive/injekt/api/InjektScope;


# direct methods
.method public constructor <init>(Luy/kohesive/injekt/api/InjektScope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy/kohesive/injekt/api/InjektScopedMain;->scope:Luy/kohesive/injekt/api/InjektScope;

    .line 9
    invoke-virtual {p1}, Luy/kohesive/injekt/api/InjektScope;->getRegistrar()Luy/kohesive/injekt/api/InjektRegistrar;

    move-result-object p1

    invoke-interface {p0, p1}, Luy/kohesive/injekt/api/InjektModule;->registerInjectables(Luy/kohesive/injekt/api/InjektRegistrar;)V

    return-void
.end method


# virtual methods
.method public final getScope()Luy/kohesive/injekt/api/InjektScope;
    .locals 1

    .line 7
    iget-object v0, p0, Luy/kohesive/injekt/api/InjektScopedMain;->scope:Luy/kohesive/injekt/api/InjektScope;

    return-object v0
.end method

.method public registerWith(Luy/kohesive/injekt/api/InjektRegistrar;)V
    .locals 1

    const-string v0, "intoModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, p1}, Luy/kohesive/injekt/api/InjektModule$DefaultImpls;->registerWith(Luy/kohesive/injekt/api/InjektModule;Luy/kohesive/injekt/api/InjektRegistrar;)V

    return-void
.end method
