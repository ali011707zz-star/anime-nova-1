.class public final Lcom/tonyodev/fetch2/Fetch$Impl;
.super Ljava/lang/Object;
.source "Fetch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/tonyodev/fetch2/Fetch$Impl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/Fetch$Impl;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->$$INSTANCE:Lcom/tonyodev/fetch2/Fetch$Impl;

    .line 999
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;
    .locals 2

    const-string v0, "fetchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;->newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;

    move-result-object p1

    return-object p1
.end method
