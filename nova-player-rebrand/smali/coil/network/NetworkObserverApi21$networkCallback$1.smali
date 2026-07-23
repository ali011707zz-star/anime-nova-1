.class public final Lcoil/network/NetworkObserverApi21$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/network/NetworkObserverApi21;-><init>(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/network/NetworkObserverApi21;


# direct methods
.method constructor <init>(Lcoil/network/NetworkObserverApi21;)V
    .locals 0

    iput-object p1, p0, Lcoil/network/NetworkObserverApi21$networkCallback$1;->this$0:Lcoil/network/NetworkObserverApi21;

    .line 92
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21$networkCallback$1;->this$0:Lcoil/network/NetworkObserverApi21;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcoil/network/NetworkObserverApi21;->access$onConnectivityChange(Lcoil/network/NetworkObserverApi21;Landroid/net/Network;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21$networkCallback$1;->this$0:Lcoil/network/NetworkObserverApi21;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcoil/network/NetworkObserverApi21;->access$onConnectivityChange(Lcoil/network/NetworkObserverApi21;Landroid/net/Network;Z)V

    return-void
.end method
