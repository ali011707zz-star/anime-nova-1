.class public final Lcom/tonyodev/fetch2/Status$Companion;
.super Ljava/lang/Object;
.source "Status.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/Status$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2/Status;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 54
    sget-object p1, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 53
    :pswitch_0
    sget-object p1, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 52
    :pswitch_1
    sget-object p1, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 51
    :pswitch_2
    sget-object p1, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 50
    :pswitch_3
    sget-object p1, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 49
    :pswitch_4
    sget-object p1, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 48
    :pswitch_5
    sget-object p1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 47
    :pswitch_6
    sget-object p1, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 46
    :pswitch_7
    sget-object p1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 45
    :pswitch_8
    sget-object p1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    return-object p1

    .line 44
    :pswitch_9
    sget-object p1, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
