.class public final Luy/kohesive/injekt/api/InjektModule$DefaultImpls;
.super Ljava/lang/Object;
.source "Modules.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/kohesive/injekt/api/InjektModule;
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
.method public static registerWith(Luy/kohesive/injekt/api/InjektModule;Luy/kohesive/injekt/api/InjektRegistrar;)V
    .locals 1

    const-string v0, "intoModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0, p1}, Luy/kohesive/injekt/api/InjektModule;->registerInjectables(Luy/kohesive/injekt/api/InjektRegistrar;)V

    return-void
.end method
