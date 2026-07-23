.class public final synthetic Lcom/player/easy/ui/finished/FinishedViewModel$1$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/tonyodev/fetch2/Download;

    check-cast p2, Lcom/tonyodev/fetch2/Download;

    invoke-static {p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$1;->$r8$lambda$Fa1exsjmyqIlEa-kTf8ZIzz0VnU(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Download;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
