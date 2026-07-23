.class public final Lcom/tonyodev/fetch2/Priority$Companion;
.super Ljava/lang/Object;
.source "Priority.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/Priority$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2/Priority;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 27
    sget-object p1, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    return-object p1

    .line 24
    :cond_0
    sget-object p1, Lcom/tonyodev/fetch2/Priority;->HIGH:Lcom/tonyodev/fetch2/Priority;

    return-object p1

    .line 25
    :cond_1
    sget-object p1, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    return-object p1

    .line 26
    :cond_2
    sget-object p1, Lcom/tonyodev/fetch2/Priority;->LOW:Lcom/tonyodev/fetch2/Priority;

    return-object p1
.end method
