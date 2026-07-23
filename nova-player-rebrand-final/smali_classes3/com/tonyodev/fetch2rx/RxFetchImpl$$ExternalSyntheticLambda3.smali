.class public final synthetic Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2rx/RxFetchImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda3;->f$0:Lcom/tonyodev/fetch2rx/RxFetchImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda3;->f$0:Lcom/tonyodev/fetch2rx/RxFetchImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->$r8$lambda$SMJtaMGZ-LtJke323L1Rck-qMc8(Lcom/tonyodev/fetch2rx/RxFetchImpl;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
