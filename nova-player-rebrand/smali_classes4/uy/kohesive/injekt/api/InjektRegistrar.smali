.class public interface abstract Luy/kohesive/injekt/api/InjektRegistrar;
.super Ljava/lang/Object;
.source "Registrar.kt"

# interfaces
.implements Luy/kohesive/injekt/api/InjektRegistry;
.implements Luy/kohesive/injekt/api/InjektFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy/kohesive/injekt/api/InjektRegistrar$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Luy/kohesive/injekt/api/InjektRegistrar;",
        "Luy/kohesive/injekt/api/InjektRegistry;",
        "Luy/kohesive/injekt/api/InjektFactory;",
        "importModule",
        "",
        "submodule",
        "Luy/kohesive/injekt/api/InjektModule;",
        "injekt-api-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# virtual methods
.method public abstract importModule(Luy/kohesive/injekt/api/InjektModule;)V
.end method
