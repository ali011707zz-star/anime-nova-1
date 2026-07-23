.class public final synthetic Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/finished/FinishedHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/finished/FinishedHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/ui/finished/FinishedHolder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedHolder$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/ui/finished/FinishedHolder;

    check-cast p1, Landroid/view/MenuItem;

    invoke-static {v0, p1}, Lcom/player/easy/ui/finished/FinishedHolder;->$r8$lambda$nbGuEjLHba1A5_DDGcUZH7-V7gY(Lcom/player/easy/ui/finished/FinishedHolder;Landroid/view/MenuItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
