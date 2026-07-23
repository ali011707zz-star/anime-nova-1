.class public final synthetic Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    check-cast p1, Lcom/tonyodev/fetch2/fetch/LiveSettings;

    invoke-static {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->$r8$lambda$XW3HcCabUQ3FAgn9zZB78PqE20k(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/fetch/LiveSettings;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
