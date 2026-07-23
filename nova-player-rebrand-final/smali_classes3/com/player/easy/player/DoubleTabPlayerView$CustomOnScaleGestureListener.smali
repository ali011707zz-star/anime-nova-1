.class public final Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "DoubleTabPlayerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/DoubleTabPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomOnScaleGestureListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "player",
        "Landroidx/media3/ui/PlayerView;",
        "<init>",
        "(Lcom/player/easy/player/DoubleTabPlayerView;Landroidx/media3/ui/PlayerView;)V",
        "scaleFactor",
        "",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScaleBegin",
        "onScaleEnd",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final player:Landroidx/media3/ui/PlayerView;

.field private scaleFactor:F

.field final synthetic this$0:Lcom/player/easy/player/DoubleTabPlayerView;


# direct methods
.method public constructor <init>(Lcom/player/easy/player/DoubleTabPlayerView;Landroidx/media3/ui/PlayerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/ui/PlayerView;",
            ")V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput-object p2, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->player:Landroidx/media3/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->scaleFactor:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 0
    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->scaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->player:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 195
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {p1}, Lcom/player/easy/player/DoubleTabPlayerView;->access$getPreferences(Lcom/player/easy/player/DoubleTabPlayerView;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->playerFitResizeMode()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->player:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 199
    iget-object p1, p0, Lcom/player/easy/player/DoubleTabPlayerView$CustomOnScaleGestureListener;->this$0:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {p1}, Lcom/player/easy/player/DoubleTabPlayerView;->access$getPreferences(Lcom/player/easy/player/DoubleTabPlayerView;)Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->playerFitResizeMode()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void
.end method
