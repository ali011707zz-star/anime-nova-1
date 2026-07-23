.class public final Lcom/tonyodev/fetch2/NetworkType$Companion;
.super Ljava/lang/Object;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/NetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/NetworkType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 32
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    return-object p1

    .line 31
    :cond_0
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    return-object p1

    .line 30
    :cond_1
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    return-object p1

    .line 29
    :cond_2
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    return-object p1

    .line 28
    :cond_3
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    return-object p1
.end method
