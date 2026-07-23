.class public final Lcom/player/easy/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"

# interfaces
.implements Luy/kohesive/injekt/api/InjektModule;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000c\u0010\u0008\u001a\u00020\t*\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/player/easy/di/AppModule;",
        "Luy/kohesive/injekt/api/InjektModule;",
        "app",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "getApp",
        "()Landroid/app/Application;",
        "registerInjectables",
        "",
        "Luy/kohesive/injekt/api/InjektRegistrar;",
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
        "SMAP\nAppModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppModule.kt\ncom/player/easy/di/AppModule\n+ 2 Registry.kt\nuy/kohesive/injekt/api/RegistryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n*L\n1#1,45:1\n22#2:46\n23#2:48\n26#2:49\n27#2:51\n26#2:52\n27#2:54\n26#2:55\n27#2:57\n26#2:58\n27#2:60\n26#2:61\n27#2:63\n27#3:47\n27#3:50\n27#3:53\n27#3:56\n27#3:59\n27#3:62\n*S KotlinDebug\n*F\n+ 1 AppModule.kt\ncom/player/easy/di/AppModule\n*L\n17#1:46\n17#1:48\n19#1:49\n19#1:51\n27#1:52\n27#1:54\n29#1:55\n29#1:57\n31#1:58\n31#1:60\n33#1:61\n33#1:63\n17#1:47\n19#1:50\n27#1:53\n29#1:56\n31#1:59\n33#1:62\n*E\n"
    }
.end annotation


# instance fields
.field private final app:Landroid/app/Application;


# direct methods
.method public static synthetic $r8$lambda$7aIhDsRH8QtdBh7GvDue2pMEB8Y(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$1(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AchxicC2YAvhVug2m0ZQHax4FnU()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$0()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KFlU9F8Xl8ej5Ewng7mxnZVwSvA(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$0$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QbiXX3jzuO3ftpuLuAsu6Q7eSH8()Lcom/player/easy/network/NetworkHelper;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$4()Lcom/player/easy/network/NetworkHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Wf_BglYYx1TQK4AMxOf1y31h8xs(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/CoverCache;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$3(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/CoverCache;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ka_7hp04xpGuBDkK6EukfIG4IWE(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/di/AppModule;->registerInjectables$lambda$2(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    return-void
.end method

.method private static final registerInjectables$lambda$0()Lkotlinx/serialization/json/Json;
    .locals 3

    .line 20
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method private static final registerInjectables$lambda$0$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setCoerceInputValues(Z)V

    .line 23
    const-string v0, "#class"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setClassDiscriminator(Ljava/lang/String;)V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerInjectables$lambda$1(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 27
    new-instance v0, Lcom/player/easy/data/preference/PreferencesHelper;

    iget-object p0, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/player/easy/data/preference/PreferencesHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final registerInjectables$lambda$2(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/download/DownloadManager;
    .locals 1

    .line 29
    new-instance v0, Lcom/player/easy/data/download/DownloadManager;

    iget-object p0, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/player/easy/data/download/DownloadManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final registerInjectables$lambda$3(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/CoverCache;
    .locals 1

    .line 31
    new-instance v0, Lcom/player/easy/data/CoverCache;

    iget-object p0, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/player/easy/data/CoverCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final registerInjectables$lambda$4()Lcom/player/easy/network/NetworkHelper;
    .locals 1

    .line 33
    new-instance v0, Lcom/player/easy/network/NetworkHelper;

    invoke-direct {v0}, Lcom/player/easy/network/NetworkHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getApp()Landroid/app/Application;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    return-object v0
.end method

.method public registerInjectables(Luy/kohesive/injekt/api/InjektRegistrar;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/player/easy/di/AppModule;->app:Landroid/app/Application;

    .line 47
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingleton$1;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingleton$1;-><init>()V

    .line 46
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingleton(Luy/kohesive/injekt/api/TypeReference;Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda1;-><init>()V

    .line 50
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$1;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$1;-><init>()V

    .line 49
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    .line 27
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/di/AppModule;)V

    .line 53
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$2;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$2;-><init>()V

    .line 52
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    .line 29
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/di/AppModule;)V

    .line 56
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$3;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$3;-><init>()V

    .line 55
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    .line 31
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda4;-><init>(Lcom/player/easy/di/AppModule;)V

    .line 59
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$4;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$4;-><init>()V

    .line 58
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    .line 33
    new-instance v0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda5;-><init>()V

    .line 62
    new-instance v1, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$5;

    invoke-direct {v1}, Lcom/player/easy/di/AppModule$registerInjectables$$inlined$addSingletonFactory$5;-><init>()V

    .line 61
    invoke-interface {p1, v1, v0}, Luy/kohesive/injekt/api/InjektRegistry;->addSingletonFactory(Luy/kohesive/injekt/api/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge registerWith(Luy/kohesive/injekt/api/InjektRegistrar;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Luy/kohesive/injekt/api/InjektModule$DefaultImpls;->registerWith(Luy/kohesive/injekt/api/InjektModule;Luy/kohesive/injekt/api/InjektRegistrar;)V

    return-void
.end method
