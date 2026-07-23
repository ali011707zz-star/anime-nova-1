.class public final synthetic Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/player/ExoPlayerActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;->f$0:Lcom/player/easy/player/ExoPlayerActivity;

    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;->f$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-boolean v1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/player/easy/player/ExoPlayerActivity;->$r8$lambda$teuR1cunmYsV17YVupmyGV30aeI(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method
