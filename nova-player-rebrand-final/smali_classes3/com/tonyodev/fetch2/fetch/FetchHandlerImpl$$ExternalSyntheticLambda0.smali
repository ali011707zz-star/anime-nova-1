.class public final synthetic Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/database/DownloadInfo;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/FetchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/database/DownloadInfo;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/tonyodev/fetch2/FetchListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/database/DownloadInfo;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/tonyodev/fetch2/FetchListener;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->$r8$lambda$DBS5axDkDeb3odLSj8AI-GNuoNQ(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V

    return-void
.end method
