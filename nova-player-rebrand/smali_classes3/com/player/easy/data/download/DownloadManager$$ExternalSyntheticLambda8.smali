.class public final synthetic Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/data/download/DownloadManager;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/Download;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$0:Lcom/player/easy/data/download/DownloadManager;

    iput-object p2, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$1:Lcom/tonyodev/fetch2/Download;

    iput-object p3, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$0:Lcom/player/easy/data/download/DownloadManager;

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$1:Lcom/tonyodev/fetch2/Download;

    iget-object v2, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/player/easy/data/download/DownloadManager;->$r8$lambda$e17bT7e9OrEVhP__66GJ2MFEHaY(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method
