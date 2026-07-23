.class public final Lcom/tfcporciuncula/flow/LongPreference;
.super Lcom/tfcporciuncula/flow/BasePreference;
.source "LongPreference.kt"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final defaultValue:J

.field private final key:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyFlow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/tfcporciuncula/flow/BasePreference;-><init>(Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Landroid/content/SharedPreferences;Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/tfcporciuncula/flow/LongPreference;->key:Ljava/lang/String;

    iput-wide p2, p0, Lcom/tfcporciuncula/flow/LongPreference;->defaultValue:J

    iput-object p5, p0, Lcom/tfcporciuncula/flow/LongPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/tfcporciuncula/flow/LongPreference;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/tfcporciuncula/flow/LongPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/LongPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/LongPreference;->getDefaultValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/LongPreference;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Long;
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/tfcporciuncula/flow/LongPreference;->defaultValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tfcporciuncula/flow/LongPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method public set(J)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/tfcporciuncula/flow/LongPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tfcporciuncula/flow/LongPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 2

    .line 7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tfcporciuncula/flow/LongPreference;->set(J)V

    return-void
.end method
