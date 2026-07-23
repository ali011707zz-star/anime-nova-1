.class public final Lcom/tonyodev/fetch2rx/RxFetch$Impl;
.super Ljava/lang/Object;
.source "RxFetch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2rx/RxFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/tonyodev/fetch2rx/RxFetch$Impl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tonyodev/fetch2rx/RxFetch$Impl;

    invoke-direct {v0}, Lcom/tonyodev/fetch2rx/RxFetch$Impl;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2rx/RxFetch$Impl;->$$INSTANCE:Lcom/tonyodev/fetch2rx/RxFetch$Impl;

    .line 636
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2rx/RxFetch$Impl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRxInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2rx/RxFetch;
    .locals 2

    const-string v0, "fetchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object v0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->Companion:Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;

    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;->newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2rx/RxFetchImpl;

    move-result-object p1

    return-object p1
.end method
