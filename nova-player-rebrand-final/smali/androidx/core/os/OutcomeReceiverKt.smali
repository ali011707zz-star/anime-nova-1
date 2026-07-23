.class public abstract Landroidx/core/os/OutcomeReceiverKt;
.super Ljava/lang/Object;
.source "OutcomeReceiver.kt"


# direct methods
.method public static final asOutcomeReceiver(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;
    .locals 1

    .line 58
    new-instance v0, Landroidx/core/os/ContinuationOutcomeReceiver;

    invoke-direct {v0, p0}, Landroidx/core/os/ContinuationOutcomeReceiver;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method
