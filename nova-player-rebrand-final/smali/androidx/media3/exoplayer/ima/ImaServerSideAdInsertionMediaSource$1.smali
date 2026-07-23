.class Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ImaServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

.field final synthetic val$mediaItem:Landroidx/media3/common/MediaItem;

.field final synthetic val$newTimeline:Landroidx/media3/common/Timeline;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 694
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;->val$mediaItem:Landroidx/media3/common/MediaItem;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1

    .line 698
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 699
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;->val$mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p1, p2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p2
.end method
