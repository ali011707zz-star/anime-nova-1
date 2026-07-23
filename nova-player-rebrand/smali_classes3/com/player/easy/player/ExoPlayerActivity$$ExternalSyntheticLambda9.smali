.class public final synthetic Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/player/RemoteReward;

.field public final synthetic f$1:Lcom/player/easy/player/ExoPlayerActivity;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$0:Lcom/player/easy/player/RemoteReward;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$1:Lcom/player/easy/player/ExoPlayerActivity;

    iput-boolean p3, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$0:Lcom/player/easy/player/RemoteReward;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$1:Lcom/player/easy/player/ExoPlayerActivity;

    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;->f$2:Z

    check-cast p1, Lcom/player/easy/util/result/Result;

    invoke-static {v0, v1, v2, p1}, Lcom/player/easy/player/ExoPlayerActivity;->$r8$lambda$Zi5IRhZKNGafGh-mqp4QM-BT9a4(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;ZLcom/player/easy/util/result/Result;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
