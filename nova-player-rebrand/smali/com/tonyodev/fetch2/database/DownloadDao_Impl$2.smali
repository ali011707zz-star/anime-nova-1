.class Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "DownloadDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/database/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2

    .line 104
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "DELETE FROM `requests` WHERE `_id` = ?"

    return-object v0
.end method
