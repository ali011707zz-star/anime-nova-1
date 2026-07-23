.class public final Luy/kohesive/injekt/api/InjektRegistrar$DefaultImpls;
.super Ljava/lang/Object;
.source "Registrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/kohesive/injekt/api/InjektRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method public static importModule(Luy/kohesive/injekt/api/InjektRegistrar;Luy/kohesive/injekt/api/InjektModule;)V
    .locals 1

    const-string v0, "submodule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, p0}, Luy/kohesive/injekt/api/InjektModule;->registerWith(Luy/kohesive/injekt/api/InjektRegistrar;)V

    return-void
.end method
