.class public final synthetic Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/tonyodev/fetch2core/Reason;

.field public final synthetic f$3:Lcom/tonyodev/fetch2/Download;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    iput-object p2, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$2:Lcom/tonyodev/fetch2core/Reason;

    iput-object p4, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$3:Lcom/tonyodev/fetch2/Download;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    iget-object v1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$2:Lcom/tonyodev/fetch2core/Reason;

    iget-object v3, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;->f$3:Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->$r8$lambda$oWDTYjKdSmZVK9k5jtL8Gk2faAE(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method
