.class public abstract Lcom/tfcporciuncula/flow/BasePreference;
.super Ljava/lang/Object;
.source "BasePreference.kt"

# interfaces
.implements Lcom/tfcporciuncula/flow/Preference;


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final key:Ljava/lang/String;

.field private final keyFlow:Lkotlinx/coroutines/flow/Flow;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyFlow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tfcporciuncula/flow/BasePreference;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tfcporciuncula/flow/BasePreference;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lcom/tfcporciuncula/flow/BasePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/tfcporciuncula/flow/BasePreference;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public asFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/tfcporciuncula/flow/BasePreference;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    .line 54
    new-instance v1, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;

    invoke-direct {v1, v0, p0}, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/tfcporciuncula/flow/BasePreference;)V

    .line 33
    new-instance v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tfcporciuncula/flow/BasePreference$asFlow$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onStart(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/tfcporciuncula/flow/BasePreference;)V

    .line 35
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->conflate(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method
