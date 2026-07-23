.class public final Lcom/tfcporciuncula/flow/BooleanPreference;
.super Lcom/tfcporciuncula/flow/BasePreference;
.source "BooleanPreference.kt"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final defaultValue:Z

.field private final key:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyFlow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/tfcporciuncula/flow/BasePreference;-><init>(Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->key:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->defaultValue:Z

    iput-object p4, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/BooleanPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/BooleanPreference;->getDefaultValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/BooleanPreference;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Boolean;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->defaultValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tfcporciuncula/flow/BooleanPreference;->set(Z)V

    return-void
.end method

.method public set(Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/tfcporciuncula/flow/BooleanPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/BooleanPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
