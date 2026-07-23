.class public final Lcom/player/easy/App$Companion;
.super Ljava/lang/Object;
.source "App.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000cR&\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/player/easy/App$Companion;",
        "",
        "<init>",
        "()V",
        "applicationLoaderInstance",
        "Lcom/player/easy/App;",
        "getApplicationLoaderInstance$annotations",
        "getApplicationLoaderInstance",
        "()Lcom/player/easy/App;",
        "setApplicationLoaderInstance",
        "(Lcom/player/easy/App;)V",
        "googleServiceProvider",
        "Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;",
        "getGoogleServiceProvider$annotations",
        "isHuaweiStoreBuild",
        "",
        "getGoogleServiceProvider",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/App$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getApplicationLoaderInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    return-void
.end method

.method private static synthetic getGoogleServiceProvider$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    return-void
.end method


# virtual methods
.method public final getApplicationLoaderInstance()Lcom/player/easy/App;
    .locals 1

    .line 35
    invoke-static {}, Lcom/player/easy/App;->access$getApplicationLoaderInstance$cp()Lcom/player/easy/App;

    move-result-object v0

    return-object v0
.end method

.method public final getGoogleServiceProvider()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
    .locals 1

    .line 45
    invoke-static {}, Lcom/player/easy/App;->access$getGoogleServiceProvider$cp()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/player/easy/App$Companion;->getApplicationLoaderInstance()Lcom/player/easy/App;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/player/easy/App;->onCreateGoogleServiceProvider()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/App;->access$setGoogleServiceProvider$cp(Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;)V

    .line 48
    :cond_0
    invoke-static {}, Lcom/player/easy/App;->access$getGoogleServiceProvider$cp()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final isHuaweiStoreBuild()Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/player/easy/App$Companion;->getApplicationLoaderInstance()Lcom/player/easy/App;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/player/easy/App;->isHuaweiBuild()Z

    move-result v0

    return v0
.end method

.method public final setApplicationLoaderInstance(Lcom/player/easy/App;)V
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/player/easy/App;->access$setApplicationLoaderInstance$cp(Lcom/player/easy/App;)V

    return-void
.end method
