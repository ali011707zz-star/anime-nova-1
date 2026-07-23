.class public final synthetic Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

.field public final synthetic f$1:Lcom/tonyodev/fetch2/FetchListener;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$1:Lcom/tonyodev/fetch2/FetchListener;

    iput-boolean p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$1:Lcom/tonyodev/fetch2/FetchListener;

    iget-boolean v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->$r8$lambda$qOB--AMGUwKHoXd9L7z8B9UpfaY(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
