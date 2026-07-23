.class final Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;
.super Ljava/lang/Object;
.source "AdBlockerUtil.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/util/AdBlockerUtil$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/player/easy/util/AdBlockerUtil;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/player/easy/util/AdBlockerUtil;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;->this$0:Lcom/player/easy/util/AdBlockerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 39
    :try_start_0
    iget-object p1, p0, Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/player/easy/R$raw;->adblocker_webview_hosts:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "openRawResource(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;->this$0:Lcom/player/easy/util/AdBlockerUtil;

    invoke-static {p2, p1}, Lcom/player/easy/util/AdBlockerUtil;->access$loadHostsFromInputStream(Lcom/player/easy/util/AdBlockerUtil;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/util/AdBlockerUtil$initialize$1$1;->emit(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
