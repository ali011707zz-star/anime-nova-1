.class public final synthetic Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/queue/QueueFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/queue/QueueFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/queue/QueueFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/queue/QueueFragment;

    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    invoke-static {v0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->$r8$lambda$kIeGt1NF2E6AR39UBL2Vhe0oMR0(Lcom/player/easy/ui/queue/QueueFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
