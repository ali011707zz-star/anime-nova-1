.class public final synthetic Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic f$1:Lcom/tonyodev/fetch2core/Func;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;->f$0:Lcom/tonyodev/fetch2core/Func;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;->f$1:Lcom/tonyodev/fetch2core/Func;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;->f$0:Lcom/tonyodev/fetch2core/Func;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;->f$1:Lcom/tonyodev/fetch2core/Func;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->$r8$lambda$l_VN45aOvXUX8b2RqaHHi_Fihy4(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method
