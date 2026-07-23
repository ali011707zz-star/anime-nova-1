.class public final synthetic Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/IMediaSession;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->$r8$lambda$EezGa4T8W_oZvWqXqfkdZA83YgA(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;ZLandroidx/media3/session/IMediaSession;I)V

    return-void
.end method
