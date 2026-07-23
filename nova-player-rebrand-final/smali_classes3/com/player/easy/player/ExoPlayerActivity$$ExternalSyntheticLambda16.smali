.class public final synthetic Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda16;->f$0:Lcom/player/easy/player/ExoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda16;->f$0:Lcom/player/easy/player/ExoPlayerActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->$r8$lambda$nlRr9VL66RU2SC35K1Ao_AyqIrc(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    return-void
.end method
