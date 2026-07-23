.class public final Lcom/tonyodev/fetch2/database/Converter;
.super Ljava/lang/Object;
.source "Converter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    .line 84
    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;->valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object p1

    return-object p1
.end method

.method public final fromErrorValue(I)Lcom/tonyodev/fetch2/Error;
    .locals 1

    .line 59
    sget-object v0, Lcom/tonyodev/fetch2/Error;->Companion:Lcom/tonyodev/fetch2/Error$Companion;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/Error$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Error;

    move-result-object p1

    return-object p1
.end method

.method public final fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;
    .locals 4

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, "keys(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public final fromExtrasToString(Lcom/tonyodev/fetch2core/Extras;)Ljava/lang/String;
    .locals 3

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Extras;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo p1, "{}"

    return-object p1

    .line 92
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Extras;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final fromJsonString(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, "keys(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 69
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/NetworkType$Companion;->valueOf(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object p1

    return-object p1
.end method

.method public final fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;
    .locals 1

    .line 49
    sget-object v0, Lcom/tonyodev/fetch2/Priority;->Companion:Lcom/tonyodev/fetch2/Priority$Companion;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/Priority$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object p1

    return-object p1
.end method

.method public final fromStatusValue(I)Lcom/tonyodev/fetch2/Status;
    .locals 1

    .line 16
    sget-object v0, Lcom/tonyodev/fetch2/Status;->Companion:Lcom/tonyodev/fetch2/Status$Companion;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/Status$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Status;

    move-result-object p1

    return-object p1
.end method

.method public final toEnqueueActionValue(Lcom/tonyodev/fetch2/EnqueueAction;)I
    .locals 1

    const-string v0, "enqueueAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/EnqueueAction;->getValue()I

    move-result p1

    return p1
.end method

.method public final toErrorValue(Lcom/tonyodev/fetch2/Error;)I
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Error;->getValue()I

    move-result p1

    return p1
.end method

.method public final toHeaderStringsMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    const-string v0, "headerMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo p1, "{}"

    return-object p1

    .line 39
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final toNetworkTypeValue(Lcom/tonyodev/fetch2/NetworkType;)I
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/NetworkType;->getValue()I

    move-result p1

    return p1
.end method

.method public final toPriorityValue(Lcom/tonyodev/fetch2/Priority;)I
    .locals 1

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Priority;->getValue()I

    move-result p1

    return p1
.end method

.method public final toStatusValue(Lcom/tonyodev/fetch2/Status;)I
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p1

    return p1
.end method
