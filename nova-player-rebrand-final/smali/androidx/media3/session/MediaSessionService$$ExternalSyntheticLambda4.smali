.class public final synthetic Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaSessionService;

.field public final synthetic f$1:Landroidx/media3/session/MediaNotification$Provider;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaSessionService;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/session/MediaNotification$Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaSessionService;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/session/MediaNotification$Provider;

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionService;->$r8$lambda$vnHvUtINMZy8c-on0lQnpz9ch9k(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;)V

    return-void
.end method
