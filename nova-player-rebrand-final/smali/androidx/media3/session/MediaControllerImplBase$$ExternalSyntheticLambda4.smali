.class public final synthetic Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic f$1:Landroidx/media3/common/MediaItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/common/MediaItem;

    invoke-static {v0, v1, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->$r8$lambda$PzOPCI1pd7uH0lFyPjze__0RttQ(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V

    return-void
.end method
