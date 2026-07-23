.class public interface abstract Landroidx/media3/session/legacy/IMediaSession;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/IMediaSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getSessionInfo()Landroid/os/Bundle;
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract isCaptioningEnabled()Z
.end method

.method public abstract registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
.end method

.method public abstract unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
.end method
