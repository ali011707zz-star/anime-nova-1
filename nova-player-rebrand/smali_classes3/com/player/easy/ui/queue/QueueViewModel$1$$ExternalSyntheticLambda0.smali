.class public final synthetic Lcom/player/easy/ui/queue/QueueViewModel$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/player/easy/ui/queue/QueuedUpdates;

    check-cast p2, Lcom/player/easy/ui/queue/QueuedUpdates;

    invoke-static {p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel$1;->$r8$lambda$0Q8INBCXbcdACM3Nt2elBoj2Dok(Lcom/player/easy/ui/queue/QueuedUpdates;Lcom/player/easy/ui/queue/QueuedUpdates;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
