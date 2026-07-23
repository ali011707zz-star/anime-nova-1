.class public final Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;
.super Ljava/lang/Object;
.source "PreferencesHelper.kt"

# interfaces
.implements Lcom/tfcporciuncula/flow/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/preference/PreferencesHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tfcporciuncula/flow/Serializer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1",
        "Lcom/tfcporciuncula/flow/Serializer;",
        "Lcom/player/easy/data/VideoAdConfig;",
        "deserialize",
        "serialized",
        "",
        "serialize",
        "value",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPreferencesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesHelper.kt\ncom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1\n+ 2 Gson.kt\ncom/github/salomonbrys/kotson/GsonKt\n+ 3 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,112:1\n17#2:113\n61#3:114\n13#3:115\n63#3,4:116\n*S KotlinDebug\n*F\n+ 1 PreferencesHelper.kt\ncom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1\n*L\n68#1:113\n68#1:114\n68#1:115\n68#1:116,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/player/easy/data/preference/PreferencesHelper;


# direct methods
.method constructor <init>(Lcom/player/easy/data/preference/PreferencesHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;->this$0:Lcom/player/easy/data/preference/PreferencesHelper;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Lcom/player/easy/data/VideoAdConfig;
    .locals 4

    const-string v0, "serialized"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;->this$0:Lcom/player/easy/data/preference/PreferencesHelper;

    invoke-static {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->access$getGson$p(Lcom/player/easy/data/preference/PreferencesHelper;)Lcom/google/gson/Gson;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1$deserialize$$inlined$fromJson$1;

    invoke-direct {v1}, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1$deserialize$$inlined$fromJson$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {} .type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->isWildcard(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "type.rawType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 113
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/player/easy/data/VideoAdConfig;

    return-object p1
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;->deserialize(Ljava/lang/String;)Lcom/player/easy/data/VideoAdConfig;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/player/easy/data/VideoAdConfig;)Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;->this$0:Lcom/player/easy/data/preference/PreferencesHelper;

    invoke-static {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->access$getGson$p(Lcom/player/easy/data/preference/PreferencesHelper;)Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 66
    check-cast p1, Lcom/player/easy/data/VideoAdConfig;

    invoke-virtual {p0, p1}, Lcom/player/easy/data/preference/PreferencesHelper$videoAdConfigSerializer$1;->serialize(Lcom/player/easy/data/VideoAdConfig;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
