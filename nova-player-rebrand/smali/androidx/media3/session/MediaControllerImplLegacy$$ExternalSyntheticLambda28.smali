.class public final synthetic Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplLegacy;

.field public final synthetic f$1:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/session/MediaControllerImplLegacy;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda28;->f$1:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda28;->f$1:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    check-cast p1, Landroidx/media3/session/MediaController$Listener;

    invoke-static {v0, v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->$r8$lambda$h4aGSALWS7Me1Agc2SygZ9EXlAs(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaController$Listener;)V

    return-void
.end method
