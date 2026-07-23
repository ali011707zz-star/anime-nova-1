.class public final Lcom/tonyodev/fetch2/database/migration/MigrationFourToFive;
.super Lcom/tonyodev/fetch2/database/migration/Migration;
.source "MigrationFourToFive.kt"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/tonyodev/fetch2/database/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string v0, "ALTER TABLE \'requests\' ADD COLUMN \'_download_on_enqueue\' INTEGER NOT NULL DEFAULT 1"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
