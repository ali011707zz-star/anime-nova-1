.class public final Lcoil/network/NetworkObserver$Companion;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/network/NetworkObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/network/NetworkObserver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/network/NetworkObserver$Companion;

    invoke-direct {v0}, Lcoil/network/NetworkObserver$Companion;-><init>()V

    sput-object v0, Lcoil/network/NetworkObserver$Companion;->$$INSTANCE:Lcoil/network/NetworkObserver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;ZLcoil/network/NetworkObserver$Listener;Lcoil/util/Logger;)Lcoil/network/NetworkObserver;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 42
    sget-object p1, Lcoil/network/EmptyNetworkObserver;->INSTANCE:Lcoil/network/EmptyNetworkObserver;

    return-object p1

    .line 31
    :cond_0
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 45
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 46
    const-string v0, "NetworkObserver"

    if-eqz p2, :cond_2

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 86
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 53
    :try_start_0
    new-instance p1, Lcoil/network/NetworkObserverApi21;

    invoke-direct {p1, p2, p3}, Lcoil/network/NetworkObserverApi21;-><init>(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-nez p4, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to register network observer."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p4, v0, p2}, Lcoil/util/-Logs;->log(Lcoil/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    sget-object p1, Lcoil/network/EmptyNetworkObserver;->INSTANCE:Lcoil/network/EmptyNetworkObserver;

    return-object p1

    :cond_2
    if-nez p4, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    invoke-interface {p4}, Lcoil/util/Logger;->getLevel()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_4

    .line 47
    const-string p1, "Unable to register network observer."

    const/4 p3, 0x0

    invoke-interface {p4, v0, p2, p1, p3}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_4
    :goto_1
    sget-object p1, Lcoil/network/EmptyNetworkObserver;->INSTANCE:Lcoil/network/EmptyNetworkObserver;

    return-object p1
.end method
