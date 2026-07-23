.class public final synthetic Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/videos/VideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/videos/VideoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/videos/VideoActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/videos/VideoActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->$r8$lambda$ANS1mwvQ3x1IkhMQ-iM988lm5LE(Lcom/player/easy/ui/videos/VideoActivity;Z)V

    return-void
.end method
