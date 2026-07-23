.class public final Lcom/tfcporciuncula/flow/ObjectPreference;
.super Lcom/tfcporciuncula/flow/BasePreference;
.source "ObjectPreference.kt"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final defaultValue:Ljava/lang/Object;

.field private final key:Ljava/lang/String;

.field private final serializer:Lcom/tfcporciuncula/flow/Serializer;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tfcporciuncula/flow/Serializer;Ljava/lang/Object;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyFlow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/tfcporciuncula/flow/BasePreference;-><init>(Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->serializer:Lcom/tfcporciuncula/flow/Serializer;

    iput-object p3, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->defaultValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/ObjectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->serializer:Lcom/tfcporciuncula/flow/Serializer;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/tfcporciuncula/flow/Serializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/ObjectPreference;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/ObjectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tfcporciuncula/flow/ObjectPreference;->serializer:Lcom/tfcporciuncula/flow/Serializer;

    invoke-interface {v2, p1}, Lcom/tfcporciuncula/flow/Serializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
