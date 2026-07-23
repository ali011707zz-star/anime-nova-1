.class final Lcom/player/easy/player/ExoViewModel$getIPCountry$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExoViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoViewModel;->getIPCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.player.ExoViewModel$getIPCountry$1"
    f = "ExoViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExoViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExoViewModel.kt\ncom/player/easy/player/ExoViewModel$getIPCountry$1\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,144:1\n222#2:145\n*S KotlinDebug\n*F\n+ 1 ExoViewModel.kt\ncom/player/easy/player/ExoViewModel$getIPCountry$1\n*L\n63#1:145\n*E\n"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/player/easy/player/ExoViewModel;


# direct methods
.method constructor <init>(Lcom/player/easy/player/ExoViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/player/ExoViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/player/ExoViewModel$getIPCountry$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;

    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-direct {p1, v0, p2}, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;-><init>(Lcom/player/easy/player/ExoViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 57
    iget v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    :try_start_0
    sget-object p1, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    const-string v0, "ad_custom"

    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-virtual {v0}, Lcom/player/easy/player/ExoViewModel;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/player/easy/data/RemoteAdConfig;->Companion:Lcom/player/easy/data/RemoteAdConfig$Companion;

    invoke-virtual {v1}, Lcom/player/easy/data/RemoteAdConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/player/easy/data/RemoteAdConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_1

    .line 68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfig()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/VideoAdConfig;

    .line 72
    sget-object v1, Lcom/player/easy/BuildVars;->INSTANCE:Lcom/player/easy/BuildVars;

    invoke-virtual {v1}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/player/easy/data/RemoteAdConfig;->getHuawei()Lcom/player/easy/data/AdType;

    move-result-object p1

    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/player/easy/data/RemoteAdConfig;->getPlay()Lcom/player/easy/data/AdType;

    move-result-object p1

    .line 78
    :goto_2
    invoke-virtual {p1}, Lcom/player/easy/data/AdType;->getAd_enable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 86
    :cond_3
    instance-of v1, p1, Lcom/player/easy/data/VideoAdConfig;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {v0}, Lcom/player/easy/data/VideoAdConfig;->getVast_source_link()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/player/easy/data/VideoAdConfig;

    invoke-virtual {v1}, Lcom/player/easy/data/VideoAdConfig;->getVast_source_link()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastShowingVideoAd()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfig()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastShowingVideoAd()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfig()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    sget-object v1, Lcom/player/easy/data/VideoAdConfig;->Companion:Lcom/player/easy/data/VideoAdConfig$Companion;

    invoke-virtual {v1}, Lcom/player/easy/data/VideoAdConfig$Companion;->empty()Lcom/player/easy/data/VideoAdConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 101
    :goto_3
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;->this$0:Lcom/player/easy/player/ExoViewModel;

    invoke-static {v0}, Lcom/player/easy/player/ExoViewModel;->access$get_initAds$p(Lcom/player/easy/player/ExoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 103
    :goto_4
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 105
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
