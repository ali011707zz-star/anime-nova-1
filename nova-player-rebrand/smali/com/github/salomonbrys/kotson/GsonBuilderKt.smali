.class public final Lcom/github/salomonbrys/kotson/GsonBuilderKt;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000l\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0015\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0087\u0008\u001a*\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u00020\u0007\u001a,\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0007\u001a0\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\r\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0018\u0010\u000e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u0007\u001a=\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032%\u0010\u0013\u001a!\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u001a\u000e\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a;\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032#\u0010\u0013\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u001a\u0015\u0010\u001a\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0087\u0008\u001a\n\u0010\u001b\u001a\u00020\u001c*\u00020\u001d\u001aB\u0010\u001e\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\'\u0008\u0008\u0010\u0013\u001a!\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u001aC\u0010 \u001a\u00020\u001f\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u00012%\u0010\u0013\u001a!\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u001aB\u0010!\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\'\u0008\u0008\u0010\u0013\u001a!\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u001aI\u0010\"\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u001f2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00020#2%\u0010\u0013\u001a!\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u001a@\u0010$\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2%\u0008\u0008\u0010\u0013\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020%\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u001a\'\u0010$\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\tH\u0086\u0008\u001a\'\u0010$\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\rH\u0086\u0008\u001a!\u0010$\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u0003H\u0086\u0008\u001aA\u0010&\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u00012#\u0010\u0013\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020%\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u001a@\u0010\'\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2%\u0008\u0008\u0010\u0013\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020%\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u001a!\u0010\'\u001a\u00020\u001f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u0003H\u0086\u0008\u001aG\u0010(\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u001f2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00020#2#\u0010\u0013\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020%\u0012\u0004\u0012\u00020\u00150\u0007\u00a2\u0006\u0002\u0008\u0016\u00a8\u0006)"
    }
    d2 = {
        "gsonTypeToken",
        "Ljava/lang/reflect/Type;",
        "T",
        "",
        "instanceCreator",
        "Lcom/google/gson/InstanceCreator;",
        "creator",
        "Lkotlin/Function1;",
        "jsonDeserializer",
        "Lcom/google/gson/JsonDeserializer;",
        "deserializer",
        "Lcom/github/salomonbrys/kotson/DeserializerArg;",
        "jsonSerializer",
        "Lcom/google/gson/JsonSerializer;",
        "serializer",
        "Lcom/github/salomonbrys/kotson/SerializerArg;",
        "Lcom/google/gson/JsonElement;",
        "nullableTypeAdapter",
        "Lcom/google/gson/TypeAdapter;",
        "init",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "removeTypeWildcards",
        "type",
        "typeAdapter",
        "typeToken",
        "isWildcard",
        "",
        "Ljava/lang/reflect/ParameterizedType;",
        "registerNullableTypeAdapter",
        "Lcom/google/gson/GsonBuilder;",
        "registerNullableTypeAdapterBuilder",
        "registerNullableTypeHierarchyAdapter",
        "registerNullableTypeHierarchyAdapterBuilder",
        "Ljava/lang/Class;",
        "registerTypeAdapter",
        "Lcom/github/salomonbrys/kotson/RegistrationBuilder;",
        "registerTypeAdapterBuilder",
        "registerTypeHierarchyAdapter",
        "registerTypeHierarchyAdapterBuilder",
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
.method private static final gsonTypeToken()Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$gsonTypeToken$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$gsonTypeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final instanceCreator(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/InstanceCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/reflect/Type;",
            "+TT;>;)",
            "Lcom/google/gson/InstanceCreator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$instanceCreator$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$instanceCreator$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final isWildcard(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 13

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 17
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 18
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 20
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_a

    check-cast v4, Ljava/lang/Class;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    move v5, v1

    move v6, v5

    .line 9462
    :goto_0
    array-length v7, v4

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    aget-object v7, v4, v5

    add-int/lit8 v9, v6, 0x1

    .line 22
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object v6, v10, v6

    .line 24
    instance-of v10, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v10, :cond_4

    .line 25
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    move v10, v1

    .line 251
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_1

    aget-object v11, v7, v10

    .line 25
    move-object v12, v6

    check-cast v12, Ljava/lang/reflect/WildcardType;

    invoke-interface {v12}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 27
    const-class v6, Ljava/lang/Object;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 28
    iput-boolean v8, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 30
    :cond_2
    iput-boolean v8, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 33
    :cond_3
    iput-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 36
    :cond_4
    iput-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    .line 40
    :cond_5
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_6

    goto :goto_4

    .line 41
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either none or all type parameters can be wildcard in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-nez v0, :cond_9

    .line 43
    iget-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_8

    iget-boolean p0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    return v1

    :cond_9
    :goto_5
    return v8

    .line 20
    :cond_a
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/DeserializerArg;",
            "+TT;>;)",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "TT;>;+",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final nullableTypeAdapter(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->build()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    const-string v0, "TypeAdapterBuilderImpl<T\u2026(init).build().nullSafe()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final registerNullableTypeAdapter(Lcom/google/gson/GsonBuilder;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerNullableTypeAdapter$$inlined$typeToken$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerNullableTypeAdapter$$inlined$typeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 229
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->registerNullableTypeAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final registerNullableTypeAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->nullableTypeAdapter(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-object p0
.end method

.method private static final registerNullableTypeHierarchyAdapter(Lcom/google/gson/GsonBuilder;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 247
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->registerNullableTypeHierarchyAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final registerNullableTypeHierarchyAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->nullableTypeAdapter(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-object p0
.end method

.method private static final registerTypeAdapter(Lcom/google/gson/GsonBuilder;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$registerTypeAdapter$2;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$registerTypeAdapter$2;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 135
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    const-string p1, "this.registerTypeAdapter\u2026eToken<T>(), typeAdapter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 139
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final registerTypeAdapter(Lcom/google/gson/GsonBuilder;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$registerTypeAdapter$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$registerTypeAdapter$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 135
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    const-string p1, "this.registerTypeAdapter\u2026eToken<T>(), typeAdapter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 137
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final registerTypeAdapter(Lcom/google/gson/GsonBuilder;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$typeToken$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$typeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 135
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    const-string p1, "this.registerTypeAdapter\u2026eToken<T>(), typeAdapter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final registerTypeAdapter(Lcom/google/gson/GsonBuilder;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/RegistrationBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$typeToken$4;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapter$$inlined$typeToken$4;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 220
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->registerTypeAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final registerTypeAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/RegistrationBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;

    new-instance v1, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapterBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeAdapterBuilder$1;-><init>(Lcom/google/gson/GsonBuilder;Ljava/lang/reflect/Type;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;-><init>(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method private static final registerTypeHierarchyAdapter(Lcom/google/gson/GsonBuilder;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 142
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    const-string p1, "this.registerTypeHierarc\u2026:class.java, typeAdapter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final registerTypeHierarchyAdapter(Lcom/google/gson/GsonBuilder;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/RegistrationBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 238
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->registerTypeHierarchyAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final registerTypeHierarchyAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/GsonBuilder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/RegistrationBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;

    new-instance v1, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;-><init>(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;-><init>(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public static final removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 49
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 255
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    .line 50
    instance-of v5, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 260
    check-cast v4, Ljava/lang/reflect/Type;

    .line 51
    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 53
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    invoke-static {p0, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "TypeToken.getParameteriz\u2026rawType, *arguments).type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 263
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p0
.end method

.method public static final typeAdapter(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->build()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static final typeToken()Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$typeToken$$inlined$gsonTypeToken$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$typeToken$$inlined$gsonTypeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<T>() {} .type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
