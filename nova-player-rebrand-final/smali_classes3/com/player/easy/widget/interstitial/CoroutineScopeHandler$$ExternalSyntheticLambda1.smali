.class public final synthetic Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda1;->f$0:Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    invoke-static {v0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->$r8$lambda$rxz7g9yV6AiYo7CmwA187fHut60(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
