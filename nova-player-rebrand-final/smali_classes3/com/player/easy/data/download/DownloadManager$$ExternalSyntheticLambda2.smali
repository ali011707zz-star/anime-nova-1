.class public final synthetic Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/data/download/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/data/download/DownloadManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/data/download/DownloadManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {v0}, Lcom/player/easy/data/download/DownloadManager;->$r8$lambda$svtb3lbQrs1d-N8WjqtJSDEglYU(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v0

    return-object v0
.end method
