.class public final synthetic Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda10;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda10;->f$0:Landroid/app/PendingIntent;

    invoke-static {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->$r8$lambda$H1Ht_w9fIgl8AG3ncVVGh7AxKCg(Landroid/app/PendingIntent;Landroidx/media3/session/MediaSession$ControllerCb;I)V

    return-void
.end method
