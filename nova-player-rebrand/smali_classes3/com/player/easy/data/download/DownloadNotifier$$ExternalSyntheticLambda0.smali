.class public final synthetic Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/data/download/DownloadNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/data/download/DownloadNotifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/data/download/DownloadNotifier;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/data/download/DownloadNotifier;

    invoke-static {v0}, Lcom/player/easy/data/download/DownloadNotifier;->$r8$lambda$MCZgSs0KaSfZm_MabtL6NH8Q72U(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method
