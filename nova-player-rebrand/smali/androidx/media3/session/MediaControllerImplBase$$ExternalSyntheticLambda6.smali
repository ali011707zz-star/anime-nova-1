.class public final synthetic Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic f$1:Landroidx/media3/common/MediaItem;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$1:Landroidx/media3/common/MediaItem;

    iput-wide p3, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/IMediaSession;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$1:Landroidx/media3/common/MediaItem;

    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;->f$2:J

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->$r8$lambda$1i8M6oov5ZMLsgFxGZ8TfCdWbec(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;JLandroidx/media3/session/IMediaSession;I)V

    return-void
.end method
