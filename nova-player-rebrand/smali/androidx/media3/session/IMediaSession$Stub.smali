.class public abstract Landroidx/media3/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addMediaItem:I = 0xbd5

.field static final TRANSACTION_addMediaItemWithIndex:I = 0xbd6

.field static final TRANSACTION_addMediaItems:I = 0xbd7

.field static final TRANSACTION_addMediaItemsWithIndex:I = 0xbd8

.field static final TRANSACTION_clearMediaItems:I = 0xbcd

.field static final TRANSACTION_connect:I = 0xbc7

.field static final TRANSACTION_decreaseDeviceVolume:I = 0xbbd

.field static final TRANSACTION_decreaseDeviceVolumeWithFlags:I = 0xbed

.field static final TRANSACTION_flushCommandQueue:I = 0xbe5

.field static final TRANSACTION_getChildren:I = 0xfa3

.field static final TRANSACTION_getItem:I = 0xfa2

.field static final TRANSACTION_getLibraryRoot:I = 0xfa1

.field static final TRANSACTION_getSearchResult:I = 0xfa5

.field static final TRANSACTION_increaseDeviceVolume:I = 0xbbc

.field static final TRANSACTION_increaseDeviceVolumeWithFlags:I = 0xbec

.field static final TRANSACTION_moveMediaItem:I = 0xbce

.field static final TRANSACTION_moveMediaItems:I = 0xbcf

.field static final TRANSACTION_mute:I = 0xbf2

.field static final TRANSACTION_onControllerResult:I = 0xbc6

.field static final TRANSACTION_onCustomCommand:I = 0xbc8

.field static final TRANSACTION_onCustomCommandWithProgressUpdate:I = 0xbf4

.field static final TRANSACTION_onSurfaceSizeChanged:I = 0xbf6

.field static final TRANSACTION_pause:I = 0xbd1

.field static final TRANSACTION_play:I = 0xbd0

.field static final TRANSACTION_prepare:I = 0xbd2

.field static final TRANSACTION_release:I = 0xbdb

.field static final TRANSACTION_removeMediaItem:I = 0xbcb

.field static final TRANSACTION_removeMediaItems:I = 0xbcc

.field static final TRANSACTION_replaceMediaItem:I = 0xbef

.field static final TRANSACTION_replaceMediaItems:I = 0xbf0

.field static final TRANSACTION_search:I = 0xfa4

.field static final TRANSACTION_seekBack:I = 0xbe0

.field static final TRANSACTION_seekForward:I = 0xbe1

.field static final TRANSACTION_seekTo:I = 0xbde

.field static final TRANSACTION_seekToDefaultPosition:I = 0xbdc

.field static final TRANSACTION_seekToDefaultPositionWithMediaItemIndex:I = 0xbdd

.field static final TRANSACTION_seekToNext:I = 0xbe7

.field static final TRANSACTION_seekToNextMediaItem:I = 0xbe3

.field static final TRANSACTION_seekToPrevious:I = 0xbe6

.field static final TRANSACTION_seekToPreviousMediaItem:I = 0xbe2

.field static final TRANSACTION_seekToWithMediaItemIndex:I = 0xbdf

.field static final TRANSACTION_setAudioAttributes:I = 0xbf1

.field static final TRANSACTION_setDeviceMuted:I = 0xbbe

.field static final TRANSACTION_setDeviceMutedWithFlags:I = 0xbee

.field static final TRANSACTION_setDeviceVolume:I = 0xbbb

.field static final TRANSACTION_setDeviceVolumeWithFlags:I = 0xbeb

.field static final TRANSACTION_setMediaItem:I = 0xbbf

.field static final TRANSACTION_setMediaItemWithResetPosition:I = 0xbc1

.field static final TRANSACTION_setMediaItemWithStartPosition:I = 0xbc0

.field static final TRANSACTION_setMediaItems:I = 0xbc2

.field static final TRANSACTION_setMediaItemsWithResetPosition:I = 0xbc3

.field static final TRANSACTION_setMediaItemsWithStartIndex:I = 0xbc4

.field static final TRANSACTION_setPlayWhenReady:I = 0xbc5

.field static final TRANSACTION_setPlaybackParameters:I = 0xbd3

.field static final TRANSACTION_setPlaybackSpeed:I = 0xbd4

.field static final TRANSACTION_setPlaylistMetadata:I = 0xbd9

.field static final TRANSACTION_setRating:I = 0xbea

.field static final TRANSACTION_setRatingWithMediaId:I = 0xbe9

.field static final TRANSACTION_setRepeatMode:I = 0xbc9

.field static final TRANSACTION_setShuffleModeEnabled:I = 0xbca

.field static final TRANSACTION_setTrackSelectionParameters:I = 0xbe8

.field static final TRANSACTION_setVideoSurface:I = 0xbe4

.field static final TRANSACTION_setVideoSurfaceWithSize:I = 0xbf5

.field static final TRANSACTION_setVolume:I = 0xbba

.field static final TRANSACTION_stop:I = 0xbda

.field static final TRANSACTION_subscribe:I = 0xfa6

.field static final TRANSACTION_unmute:I = 0xbf3

.field static final TRANSACTION_unsubscribe:I = 0xfa7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 238
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 239
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 250
    :cond_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    instance-of v1, v0, Landroidx/media3/session/IMediaSession;

    if-eqz v1, :cond_1

    .line 252
    check-cast v0, Landroidx/media3/session/IMediaSession;

    return-object v0

    .line 254
    :cond_1
    new-instance v0, Landroidx/media3/session/IMediaSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/media3/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 263
    const-string v3, "androidx.media3.session.IMediaSession"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    const v4, 0xffffff

    if-gt p1, v4, :cond_0

    .line 264
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1050
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1040
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-interface {p0, v1, v3, v2}, Landroidx/media3/session/IMediaSession;->unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1027
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1033
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1034
    invoke-interface {p0, v1, v3, v4, v2}, Landroidx/media3/session/IMediaSession;->subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1010
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v4, v3

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v6, v5

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1020
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v8}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move v0, v6

    move-object v6, v2

    move v2, v0

    move-object v0, p0

    .line 1021
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 997
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1004
    invoke-interface {p0, v1, v3, v4, v2}, Landroidx/media3/session/IMediaSession;->search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 980
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v4, v3

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v6, v5

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 990
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v8}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move v0, v6

    move-object v6, v2

    move v2, v0

    move-object v0, p0

    .line 991
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 969
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 974
    invoke-interface {p0, v1, v3, v2}, Landroidx/media3/session/IMediaSession;->getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 958
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 962
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 963
    invoke-interface {p0, v1, v3, v2}, Landroidx/media3/session/IMediaSession;->getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 885
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    invoke-interface {p0, v1, v3, v4, v2}, Landroidx/media3/session/IMediaSession;->onSurfaceSizeChanged(Landroidx/media3/session/IMediaController;III)V

    goto/16 :goto_2

    .line 870
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 874
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    move v2, v3

    move-object v3, v4

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 879
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->setVideoSurfaceWithSize(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;II)V

    goto/16 :goto_2

    .line 527
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 533
    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_0
    move-object v3, v4

    move-object v4, v0

    move-object v0, p0

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_0

    .line 536
    :goto_1
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->onCustomCommandWithProgressUpdate(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 295
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->unmute(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 286
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->mute(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 392
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v3, v7

    .line 399
    :cond_3
    invoke-interface {p0, v1, v2, v4, v3}, Landroidx/media3/session/IMediaSession;->setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 638
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v0, p0

    .line 647
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 625
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 631
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 632
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 379
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v3, v7

    .line 385
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 386
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V

    goto/16 :goto_2

    .line 357
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    goto/16 :goto_2

    .line 337
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    goto/16 :goto_2

    .line 315
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 322
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V

    goto/16 :goto_2

    .line 947
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 951
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 952
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 934
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 940
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 941
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 923
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 927
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 928
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 914
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 917
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekToNext(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 905
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 898
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 899
    invoke-interface {p0, v1}, Landroidx/media3/session/IMediaSession;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V

    goto/16 :goto_2

    .line 859
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 864
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    goto/16 :goto_2

    .line 850
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 841
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 832
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 835
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekForward(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 823
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekBack(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 810
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 817
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V

    goto/16 :goto_2

    .line 799
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 804
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->seekTo(Landroidx/media3/session/IMediaController;IJ)V

    goto/16 :goto_2

    .line 788
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 793
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V

    goto/16 :goto_2

    .line 779
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 782
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 770
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 773
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->release(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 761
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->stop(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 750
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 755
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 737
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 744
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 726
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 731
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 713
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 719
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 720
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 702
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 707
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 691
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 696
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V

    goto/16 :goto_2

    .line 680
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 684
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 685
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 671
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->prepare(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 662
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 665
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->pause(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 653
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->play(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 610
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 619
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V

    goto/16 :goto_2

    .line 597
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 604
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V

    goto/16 :goto_2

    .line 588
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 591
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V

    goto/16 :goto_2

    .line 575
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 582
    invoke-interface {p0, v1, v2, v3, v4}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    goto/16 :goto_2

    .line 564
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 569
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    goto/16 :goto_2

    .line 553
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v3, v7

    .line 558
    :cond_5
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V

    goto/16 :goto_2

    .line 542
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 547
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V

    goto/16 :goto_2

    .line 514
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 520
    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 521
    invoke-interface {p0, v1, v2, v4, v3}, Landroidx/media3/session/IMediaSession;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 503
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 508
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 492
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 496
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 497
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 481
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v3, v7

    .line 486
    :cond_6
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V

    goto/16 :goto_2

    .line 466
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 475
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    goto/16 :goto_2

    .line 453
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v3, v7

    .line 460
    :cond_7
    invoke-interface {p0, v1, v2, v4, v3}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    goto/16 :goto_2

    .line 442
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 447
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 429
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v3, v7

    .line 436
    :cond_8
    invoke-interface {p0, v1, v2, v4, v3}, Landroidx/media3/session/IMediaSession;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 416
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 423
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    goto/16 :goto_2

    .line 405
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 410
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 368
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v7

    .line 373
    :cond_9
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V

    goto :goto_2

    .line 348
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    goto :goto_2

    .line 328
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    invoke-interface {p0, v1, v2}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    goto :goto_2

    .line 304
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V

    goto :goto_2

    .line 275
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 280
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/session/IMediaSession;->setVolume(Landroidx/media3/session/IMediaController;IF)V

    :goto_2
    return v7

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
