.class public abstract Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt;
.super Ljava/lang/Object;
.source "SharedPreferencesExtensions.kt"


# direct methods
.method public static final synthetic access$offerCatching(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt;->offerCatching(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final getKeyFlow(Landroid/content/SharedPreferences;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    const-string v0, "$this$keyFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method private static final offerCatching(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z
    .locals 1

    .line 20
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->offer(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
