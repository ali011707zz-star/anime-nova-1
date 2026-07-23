.class public final synthetic Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/finished/FinishedViewModel;

.field public final synthetic f$1:Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    iput-object p2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;

    invoke-static {v0, v1}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->$r8$lambda$s-sd-HaHr93dl7voCSfVk8NvqPA(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
