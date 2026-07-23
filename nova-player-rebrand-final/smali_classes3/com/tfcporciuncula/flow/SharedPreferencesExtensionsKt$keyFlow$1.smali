.class final Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedPreferencesExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt;->getKeyFlow(Landroid/content/SharedPreferences;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_keyFlow:Landroid/content/SharedPreferences;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->$this_keyFlow:Landroid/content/SharedPreferences;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;

    iget-object v1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->$this_keyFlow:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p2}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget v1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 13
    new-instance v1, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$listener$1;

    invoke-direct {v1, p1}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 14
    iget-object v3, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->$this_keyFlow:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 15
    new-instance v3, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$1;

    invoke-direct {v3, p0, v1}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$1;-><init>(Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput v2, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
