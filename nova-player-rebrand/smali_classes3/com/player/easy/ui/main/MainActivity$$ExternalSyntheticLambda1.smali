.class public final synthetic Lcom/player/easy/ui/main/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/ui/main/MainActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/ui/main/MainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/player/easy/ui/main/MainActivity;->$r8$lambda$sZJrF5d1Mn87Yu7JPRO3xRI5jeE(Lcom/player/easy/ui/main/MainActivity;Z)V

    return-void
.end method
