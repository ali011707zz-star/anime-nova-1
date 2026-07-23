.class Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;
.super Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi23"
.end annotation


# instance fields
.field protected final controlsFwk:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method constructor <init>(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1617
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;-><init>()V

    .line 1618
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .line 1672
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1657
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 1652
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1733
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1739
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1745
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1623
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1629
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1631
    const-string p1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1637
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1639
    const-string p1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1644
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1645
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1646
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1647
    const-string p1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 1677
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1667
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    return-void
.end method

.method public sendCustomAction(Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 1

    .line 1755
    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/media3/session/legacy/MediaControllerCompat;->validateCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1756
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1761
    invoke-static {p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat;->validateCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1762
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1712
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1713
    const-string p1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1709
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "speed must not be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRating(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 1

    .line 1693
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Rating;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    return-void
.end method

.method public setRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V
    .locals 2

    .line 1698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1699
    sget-object v1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1701
    invoke-static {p1, v1}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1699
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1702
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1703
    const-string p1, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1719
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1720
    const-string p1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 1725
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1726
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    const-string p1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public skipToNext()V
    .locals 1

    .line 1682
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .line 1687
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    .line 1750
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1662
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->controlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    return-void
.end method
