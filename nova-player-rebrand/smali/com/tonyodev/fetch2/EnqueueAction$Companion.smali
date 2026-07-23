.class public final Lcom/tonyodev/fetch2/EnqueueAction$Companion;
.super Ljava/lang/Object;
.source "EnqueueAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/EnqueueAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 40
    sget-object p1, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object p1

    .line 39
    :cond_0
    sget-object p1, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object p1

    .line 38
    :cond_1
    sget-object p1, Lcom/tonyodev/fetch2/EnqueueAction;->DO_NOT_ENQUEUE_IF_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object p1

    .line 37
    :cond_2
    sget-object p1, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object p1
.end method
