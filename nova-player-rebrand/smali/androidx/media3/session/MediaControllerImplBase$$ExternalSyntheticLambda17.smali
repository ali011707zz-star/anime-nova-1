.class public final synthetic Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic f$1:Landroid/view/Surface;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$1:Landroid/view/Surface;

    iput p3, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$2:I

    iput p4, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/IMediaSession;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$0:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$1:Landroid/view/Surface;

    iget v2, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$2:I

    iget v3, p0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->$r8$lambda$G6jBDGdxf-4V9JDJzhUQxeGPMvI(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;IILandroidx/media3/session/IMediaSession;I)V

    return-void
.end method
