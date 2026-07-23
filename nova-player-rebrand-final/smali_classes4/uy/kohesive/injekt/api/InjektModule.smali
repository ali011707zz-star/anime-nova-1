.class public interface abstract Luy/kohesive/injekt/api/InjektModule;
.super Ljava/lang/Object;
.source "Modules.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy/kohesive/injekt/api/InjektModule$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u000c\u0010\u0006\u001a\u00020\u0003*\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Luy/kohesive/injekt/api/InjektModule;",
        "",
        "registerWith",
        "",
        "intoModule",
        "Luy/kohesive/injekt/api/InjektRegistrar;",
        "registerInjectables",
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
.method public abstract registerInjectables(Luy/kohesive/injekt/api/InjektRegistrar;)V
.end method

.method public abstract registerWith(Luy/kohesive/injekt/api/InjektRegistrar;)V
.end method
