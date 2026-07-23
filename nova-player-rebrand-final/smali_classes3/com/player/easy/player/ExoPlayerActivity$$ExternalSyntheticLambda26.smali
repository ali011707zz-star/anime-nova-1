.class public final synthetic Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/webkit/CookieManager;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda26;->f$0:Landroid/webkit/CookieManager;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda26;->f$0:Landroid/webkit/CookieManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->$r8$lambda$BxfTd_rmmPQ3SIJaLGzLNDChxcM(Landroid/webkit/CookieManager;Ljava/lang/Boolean;)V

    return-void
.end method
