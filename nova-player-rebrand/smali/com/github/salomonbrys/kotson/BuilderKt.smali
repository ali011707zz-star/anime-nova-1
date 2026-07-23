.class public final Lcom/github/salomonbrys/kotson/BuilderKt;
.super Ljava/lang/Object;
.source "Builder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u0002\u001a \u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\u0003H\u0002\u001a#\u0010\t\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\n\"\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000b\u001a\u0012\u0010\t\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u000c\u001a\u0012\u0010\t\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\r\u001a3\u0010\u000e\u001a\u00020\u00062&\u0010\u0002\u001a\u0014\u0012\u0010\u0008\u0001\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\n\"\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u000e\u001a\u00020\u00062\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\u000c\u001a\u001e\u0010\u000e\u001a\u00020\u00062\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\r\u001a\u000c\u0010\u0010\u001a\u00020\u0011*\u00020\u0011H\u0002\u001a\n\u0010\u0012\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0012\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\u0013\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0013\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\u0014\u001a\u00020\u0015*\u00020\u0016\u001a\n\u0010\u0014\u001a\u00020\u0015*\u00020\u0017\u001a\n\u0010\u0014\u001a\u00020\u0015*\u00020\u0018\u001a\n\u0010\u0014\u001a\u00020\u0015*\u00020\u0008\u001a\u000e\u0010\u0019\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u000c\u001a\u000e\u0010\u0019\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\r\u001a\u000e\u0010\u001a\u001a\u00020\u0011*\u0004\u0018\u00010\u0004H\u0000\u001a\u001a\u0010\u001b\u001a\u00020\u0006*\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\u000c\u001a\u001a\u0010\u001b\u001a\u00020\u0006*\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0008\u0012\u0002\u0008\u00030\u00070\r\u001a\u0012\u0010\u001c\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "_jsonArray",
        "Lcom/google/gson/JsonArray;",
        "values",
        "",
        "",
        "_jsonObject",
        "Lcom/google/gson/JsonObject;",
        "Lkotlin/Pair;",
        "",
        "jsonArray",
        "",
        "([Ljava/lang/Object;)Lcom/google/gson/JsonArray;",
        "",
        "Lkotlin/sequences/Sequence;",
        "jsonObject",
        "([Lkotlin/Pair;)Lcom/google/gson/JsonObject;",
        "_deepCopy",
        "Lcom/google/gson/JsonElement;",
        "deepCopy",
        "shallowCopy",
        "toJson",
        "Lcom/google/gson/JsonPrimitive;",
        "",
        "",
        "",
        "toJsonArray",
        "toJsonElement",
        "toJsonObject",
        "value",
        "Lcom/google/gson/stream/JsonWriter;",
        "kotson_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method private static final _deepCopy(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 3

    .line 62
    instance-of v0, p0, Lcom/google/gson/JsonNull;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_1

    return-object p0

    .line 63
    :cond_1
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->deepCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 64
    :cond_2
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->deepCopy(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown JsonElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final _jsonArray(Ljava/util/Iterator;)Lcom/google/gson/JsonArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final _jsonObject(Ljava/util/Iterator;)Lcom/google/gson/JsonObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final deepCopy(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1468
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 71
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/BuilderKt;->_deepCopy(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final deepCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1468
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/BuilderKt;->_deepCopy(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final jsonArray(Ljava/lang/Iterable;)Lcom/google/gson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonArray(Ljava/util/Iterator;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static final jsonArray(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "*>;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonArray(Ljava/util/Iterator;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs jsonArray([Ljava/lang/Object;)Lcom/google/gson/JsonArray;
    .locals 1

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonArray(Ljava/util/Iterator;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static final jsonObject(Ljava/lang/Iterable;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonObject(Ljava/util/Iterator;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static final jsonObject(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonObject(Ljava/util/Iterator;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs jsonObject([Lkotlin/Pair;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->_jsonObject(Ljava/util/Iterator;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static final shallowCopy(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonArray;->addAll(Lcom/google/gson/JsonArray;)V

    return-object v0
.end method

.method public static final shallowCopy(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1468
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/github/salomonbrys/kotson/MutableKt;->put(Lcom/google/gson/JsonObject;Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJson(C)Lcom/google/gson/JsonPrimitive;
    .locals 1

    .line 8
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    return-object v0
.end method

.method public static final toJson(Ljava/lang/Number;)Lcom/google/gson/JsonPrimitive;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public static final toJson(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toJson(Z)Lcom/google/gson/JsonPrimitive;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static final toJsonArray(Ljava/lang/Iterable;)Lcom/google/gson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->jsonArray(Ljava/lang/Iterable;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static final toJsonArray(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "*>;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->jsonArray(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static final toJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 2

    if-nez p0, :cond_0

    .line 16
    invoke-static {}, Lcom/github/salomonbrys/kotson/ElementKt;->getJsonNull()Lcom/google/gson/JsonNull;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/gson/JsonElement;

    return-object p0

    .line 20
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0

    .line 21
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(Ljava/lang/Number;)Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0

    .line 22
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(C)Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(Z)Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be converted to JSON"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toJsonObject(Ljava/lang/Iterable;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->jsonObject(Ljava/lang/Iterable;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static final toJsonObject(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/github/salomonbrys/kotson/BuilderKt;->jsonObject(Lkotlin/sequences/Sequence;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static final value(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)Lcom/google/gson/stream/JsonWriter;
    .locals 4

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "value(value)"

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 76
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 77
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 78
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 79
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be written on JsonWriter"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
