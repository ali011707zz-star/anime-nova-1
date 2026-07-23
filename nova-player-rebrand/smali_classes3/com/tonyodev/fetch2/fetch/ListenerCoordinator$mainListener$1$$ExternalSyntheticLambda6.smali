.class public final synthetic Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/Download;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda6;->f$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda6;->f$1:Lcom/tonyodev/fetch2/Download;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda6;->f$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda6;->f$1:Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->$r8$lambda$vpVDVze_0tWaL3UaferjV_Il66I(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method
