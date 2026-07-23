.class public final synthetic Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/FetchListener;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/Download;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$0:Lcom/tonyodev/fetch2/FetchListener;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$1:Lcom/tonyodev/fetch2/Download;

    iput-boolean p3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$0:Lcom/tonyodev/fetch2/FetchListener;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$1:Lcom/tonyodev/fetch2/Download;

    iget-boolean v2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->$r8$lambda$qMwpJm6Ax62bj5ou-CrEBWfSEyU(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V

    return-void
.end method
