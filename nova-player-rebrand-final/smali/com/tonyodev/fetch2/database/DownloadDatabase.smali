.class public abstract Lcom/tonyodev/fetch2/database/DownloadDatabase;
.super Landroidx/room/RoomDatabase;
.source "DownloadDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/tonyodev/fetch2/database/DownloadDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "requestDao",
        "Lcom/tonyodev/fetch2/database/DownloadDao;",
        "wasRowInserted",
        "",
        "row",
        "",
        "Companion",
        "fetch2_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/database/DownloadDatabase;->Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;
.end method

.method public final wasRowInserted(J)Z
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
