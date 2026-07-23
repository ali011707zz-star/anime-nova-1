.class public final Lcom/player/easy/LogCycle;
.super Ljava/lang/Object;
.source "App.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/player/easy/LogCycle;",
        "",
        "<init>",
        "()V",
        "shouldRefreshFiles",
        "",
        "getShouldRefreshFiles",
        "()Z",
        "setShouldRefreshFiles",
        "(Z)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/player/easy/LogCycle;

.field private static shouldRefreshFiles:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/LogCycle;

    invoke-direct {v0}, Lcom/player/easy/LogCycle;-><init>()V

    sput-object v0, Lcom/player/easy/LogCycle;->INSTANCE:Lcom/player/easy/LogCycle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldRefreshFiles()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/player/easy/LogCycle;->shouldRefreshFiles:Z

    return v0
.end method

.method public final setShouldRefreshFiles(Z)V
    .locals 0

    .line 28
    sput-boolean p1, Lcom/player/easy/LogCycle;->shouldRefreshFiles:Z

    return-void
.end method
