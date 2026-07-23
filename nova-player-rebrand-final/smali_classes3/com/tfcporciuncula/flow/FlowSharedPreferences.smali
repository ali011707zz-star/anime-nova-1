.class public final Lcom/tfcporciuncula/flow/FlowSharedPreferences;
.super Ljava/lang/Object;
.source "FlowSharedPreferences.kt"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final keyFlow:Lkotlinx/coroutines/flow/Flow;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 17
    invoke-static {p1}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt;->getKeyFlow(Landroid/content/SharedPreferences;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tfcporciuncula/flow/FlowSharedPreferences;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Lcom/tfcporciuncula/flow/Preference;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/tfcporciuncula/flow/BooleanPreference;

    iget-object v4, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/tfcporciuncula/flow/BooleanPreference;-><init>(Ljava/lang/String;ZLkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-object v1
.end method

.method public final getFloat(Ljava/lang/String;F)Lcom/tfcporciuncula/flow/Preference;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/tfcporciuncula/flow/FloatPreference;

    iget-object v4, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/tfcporciuncula/flow/FloatPreference;-><init>(Ljava/lang/String;FLkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-object v1
.end method

.method public final getLong(Ljava/lang/String;J)Lcom/tfcporciuncula/flow/Preference;
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/tfcporciuncula/flow/LongPreference;

    iget-object v5, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v6, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/tfcporciuncula/flow/LongPreference;-><init>(Ljava/lang/String;JLkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-object v1
.end method

.method public final getObject(Ljava/lang/String;Lcom/tfcporciuncula/flow/Serializer;Ljava/lang/Object;)Lcom/tfcporciuncula/flow/Preference;
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/tfcporciuncula/flow/ObjectPreference;

    iget-object v5, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v6, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/tfcporciuncula/flow/ObjectPreference;-><init>(Ljava/lang/String;Lcom/tfcporciuncula/flow/Serializer;Ljava/lang/Object;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-object v1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Lcom/tfcporciuncula/flow/Preference;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/tfcporciuncula/flow/StringPreference;

    iget-object v4, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->keyFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/tfcporciuncula/flow/FlowSharedPreferences;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/tfcporciuncula/flow/StringPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    return-object v1
.end method
