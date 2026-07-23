.class public final synthetic Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, p1}, Lcom/player/easy/data/download/DownloadManager;->$r8$lambda$82QrWQtOP_YbZI2WC4xtNmioKtA(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method
