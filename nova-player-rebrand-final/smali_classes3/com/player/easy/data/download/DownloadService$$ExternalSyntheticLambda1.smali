.class public final synthetic Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/data/download/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/data/download/DownloadService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/data/download/DownloadService;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/data/download/DownloadService;

    check-cast p1, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    invoke-static {v0, p1}, Lcom/player/easy/data/download/DownloadService;->$r8$lambda$fw6sPGaLDNM1NaR43kS2SUsFKr4(Lcom/player/easy/data/download/DownloadService;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
