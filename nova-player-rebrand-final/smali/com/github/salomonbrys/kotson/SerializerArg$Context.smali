.class public final Lcom/github/salomonbrys/kotson/SerializerArg$Context;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kotson/SerializerArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J!\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00072\u000e\u0010\t\u001a\n \u0008*\u0004\u0018\u00010\n0\nH\u0096\u0001J1\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00072\u000e\u0010\t\u001a\n \u0008*\u0004\u0018\u00010\n0\n2\u000e\u0010\u000b\u001a\n \u0008*\u0004\u0018\u00010\u000c0\u000cH\u0096\u0001J*\u0010\r\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007\"\n\u0008\u0001\u0010\u000e\u0018\u0001*\u00020\n2\u0006\u0010\u000f\u001a\u0002H\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/SerializerArg$Context;",
        "Lcom/google/gson/JsonSerializationContext;",
        "gsonContext",
        "(Lcom/google/gson/JsonSerializationContext;)V",
        "getGsonContext",
        "()Lcom/google/gson/JsonSerializationContext;",
        "serialize",
        "Lcom/google/gson/JsonElement;",
        "kotlin.jvm.PlatformType",
        "p0",
        "",
        "p1",
        "Ljava/lang/reflect/Type;",
        "typedSerialize",
        "T",
        "src",
        "(Ljava/lang/Object;)Lcom/google/gson/JsonElement;",
        "kotson_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field private final gsonContext:Lcom/google/gson/JsonSerializationContext;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonSerializationContext;)V
    .locals 1

    const-string v0, "gsonContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    return-void
.end method

.method private final typedSerialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->getGsonContext()Lcom/google/gson/JsonSerializationContext;

    move-result-object v0

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/github/salomonbrys/kotson/SerializerArg$Context$typedSerialize$$inlined$typeToken$1;

    invoke-direct {v1}, Lcom/github/salomonbrys/kotson/SerializerArg$Context$typedSerialize$$inlined$typeToken$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {} .type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "type.rawType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 76
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getGsonContext()Lcom/google/gson/JsonSerializationContext;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
