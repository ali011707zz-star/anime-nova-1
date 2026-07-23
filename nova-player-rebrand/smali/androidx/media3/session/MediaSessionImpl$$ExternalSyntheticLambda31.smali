.class public final synthetic Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;->f$0:Landroidx/media3/session/MediaSessionImpl;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;->f$0:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->$r8$lambda$FHy73AYhyCYWRCY_wupcrsIcidw(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method
