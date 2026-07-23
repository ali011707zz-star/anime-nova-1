.class public final synthetic Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/FetchListener;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/Download;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$0:Lcom/tonyodev/fetch2/FetchListener;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$1:Lcom/tonyodev/fetch2/Download;

    iput-wide p3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$2:J

    iput-wide p5, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$0:Lcom/tonyodev/fetch2/FetchListener;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$1:Lcom/tonyodev/fetch2/Download;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$2:J

    iget-wide v4, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1$$ExternalSyntheticLambda18;->f$3:J

    invoke-static/range {v0 .. v5}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->$r8$lambda$BiSjuawXF0eMVSiB5UV6sMttvh8(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V

    return-void
.end method
