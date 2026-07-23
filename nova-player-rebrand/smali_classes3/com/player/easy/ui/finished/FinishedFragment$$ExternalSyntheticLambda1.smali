.class public final synthetic Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/finished/FinishedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/finished/FinishedFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/ui/finished/FinishedFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/ui/finished/FinishedFragment;

    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    invoke-static {v0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->$r8$lambda$3r5qaZqzCWitoWAYFt7DI_5WWDQ(Lcom/player/easy/ui/finished/FinishedFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
