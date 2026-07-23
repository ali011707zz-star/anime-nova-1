.class public final Lcom/github/salomonbrys/kotson/DeserializerArg$Context;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kotson/DeserializerArg;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J*\u0010\u0006\u001a\n \u0008*\u0004\u0018\u0001H\u0007H\u0007\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086\u0008\u00a2\u0006\u0002\u0010\u000cJH\u0010\u0006\u001a\n \u0008*\u0004\u0018\u0001H\u0007H\u0007\"\u0010\u0008\u0000\u0010\u0007*\n \u0008*\u0004\u0018\u00010\t0\t2\u000e\u0010\r\u001a\n \u0008*\u0004\u0018\u00010\u000b0\u000b2\u000e\u0010\u000e\u001a\n \u0008*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/DeserializerArg$Context;",
        "Lcom/google/gson/JsonDeserializationContext;",
        "gsonContext",
        "(Lcom/google/gson/JsonDeserializationContext;)V",
        "getGsonContext",
        "()Lcom/google/gson/JsonDeserializationContext;",
        "deserialize",
        "T",
        "kotlin.jvm.PlatformType",
        "",
        "json",
        "Lcom/google/gson/JsonElement;",
        "(Lcom/google/gson/JsonElement;)Ljava/lang/Object;",
        "p0",
        "p1",
        "Ljava/lang/reflect/Type;",
        "(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;",
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
.field private final gsonContext:Lcom/google/gson/JsonDeserializationContext;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonDeserializationContext;)V
    .locals 1

    const-string v0, "gsonContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    return-void
.end method

.method private final deserialize(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->getGsonContext()Lcom/google/gson/JsonDeserializationContext;

    move-result-object v0

    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/github/salomonbrys/kotson/DeserializerArg$Context$deserialize$$inlined$typeToken$1;

    invoke-direct {v1}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context$deserialize$$inlined$typeToken$1;-><init>()V

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

    .line 86
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getGsonContext()Lcom/google/gson/JsonDeserializationContext;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    return-object v0
.end method
