.class public final synthetic Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;->f$0:Lcom/tonyodev/fetch2core/Func;

    iput-boolean p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;->f$0:Lcom/tonyodev/fetch2core/Func;

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;->f$1:Z

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->$r8$lambda$G9zVsQ7JXu4UwgFHIM5IrnYo100(Lcom/tonyodev/fetch2core/Func;Z)V

    return-void
.end method
