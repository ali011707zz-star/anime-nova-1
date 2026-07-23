.class public final Lcom/player/easy/di/AppModuleKt;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "initExpensiveComponents",
        "",
        "app",
        "Landroid/app/Application;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppModule.kt\ncom/player/easy/di/AppModuleKt\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n*L\n1#1,45:1\n30#2:46\n30#2:48\n30#2:50\n27#3:47\n27#3:49\n27#3:51\n*S KotlinDebug\n*F\n+ 1 AppModule.kt\ncom/player/easy/di/AppModuleKt\n*L\n40#1:46\n41#1:48\n42#1:50\n40#1:47\n41#1:49\n42#1:51\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$B00VR6O8Vkyv1VmroM-2U6MPLMg()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/player/easy/di/AppModuleKt;->initExpensiveComponents$lambda$0()V

    return-void
.end method

.method public static final initExpensiveComponents(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/player/easy/di/AppModuleKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/player/easy/di/AppModuleKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initExpensiveComponents$lambda$0()V
    .locals 2

    .line 40
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$1;-><init>()V

    .line 46
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$2;

    invoke-direct {v1}, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$2;-><init>()V

    .line 48
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$3;

    invoke-direct {v1}, Lcom/player/easy/di/AppModuleKt$initExpensiveComponents$lambda$0$$inlined$get$3;-><init>()V

    .line 50
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    return-void
.end method
