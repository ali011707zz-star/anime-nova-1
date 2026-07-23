.class public final synthetic Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$1:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field public final synthetic f$2:Lcom/player/easy/player/ExoPlayerActivity;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iput-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$2:Lcom/player/easy/player/ExoPlayerActivity;

    iput-boolean p4, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$2:Lcom/player/easy/player/ExoPlayerActivity;

    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/player/easy/player/ExoPlayerActivity;->$r8$lambda$lHMjEL6cqrXYzUPo_X13e0aesMo(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V

    return-void
.end method
