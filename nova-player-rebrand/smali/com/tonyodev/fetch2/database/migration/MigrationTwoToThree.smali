.class public final Lcom/tonyodev/fetch2/database/migration/MigrationTwoToThree;
.super Lcom/tonyodev/fetch2/database/migration/Migration;
.source "MigrationTwoToThree.kt"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/tonyodev/fetch2/database/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/EnqueueAction;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE \'requests\' ADD COLUMN \'_enqueue_action\' INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
