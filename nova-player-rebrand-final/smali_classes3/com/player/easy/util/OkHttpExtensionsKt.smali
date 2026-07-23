.class public final Lcom/player/easy/util/OkHttpExtensionsKt;
.super Ljava/lang/Object;
.source "OkHttpExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "parseAs",
        "T",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)Ljava/lang/Object;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpExtensions.kt\ncom/player/easy/util/OkHttpExtensionsKt\n+ 2 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n+ 3 Gson.kt\ncom/github/salomonbrys/kotson/GsonKt\n+ 4 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,17:1\n27#2:18\n17#3:19\n61#4:20\n13#4:21\n63#4,4:22\n*S KotlinDebug\n*F\n+ 1 OkHttpExtensions.kt\ncom/player/easy/util/OkHttpExtensionsKt\n*L\n11#1:18\n14#1:19\n14#1:20\n14#1:21\n14#1:22,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic parseAs(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/player/easy/util/OkHttpExtensionsKt$parseAs$$inlined$fullType$1;

    invoke-direct {v1}, Lcom/player/easy/util/OkHttpExtensionsKt$parseAs$$inlined$fullType$1;-><init>()V

    .line 11
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Luy/kohesive/injekt/api/InjektScope;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lcom/player/easy/util/OkHttpExtensionsKt$parseAs$lambda$0$$inlined$fromJson$1;

    invoke-direct {v2}, Lcom/player/easy/util/OkHttpExtensionsKt$parseAs$lambda$0$$inlined$fromJson$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {} .type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "type.rawType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 19
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v0

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method
