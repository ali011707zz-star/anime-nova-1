.class public final synthetic Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic f$1:Lkotlin/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;->f$0:Lcom/tonyodev/fetch2core/Func;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;->f$1:Lkotlin/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;->f$0:Lcom/tonyodev/fetch2core/Func;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;->f$1:Lkotlin/Pair;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->$r8$lambda$jWkuFgaVmpj7M6laxSSwSSBQTTg(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V

    return-void
.end method
