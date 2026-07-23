.class public final Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;
.super Ljava/lang/Object;
.source "DownloadDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/database/DownloadDatabase;
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
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrations()[Lcom/tonyodev/fetch2/database/migration/Migration;
    .locals 8

    .line 46
    new-instance v0, Lcom/tonyodev/fetch2/database/migration/MigrationOneToTwo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/migration/MigrationOneToTwo;-><init>()V

    new-instance v1, Lcom/tonyodev/fetch2/database/migration/MigrationTwoToThree;

    invoke-direct {v1}, Lcom/tonyodev/fetch2/database/migration/MigrationTwoToThree;-><init>()V

    new-instance v2, Lcom/tonyodev/fetch2/database/migration/MigrationThreeToFour;

    invoke-direct {v2}, Lcom/tonyodev/fetch2/database/migration/MigrationThreeToFour;-><init>()V

    .line 47
    new-instance v3, Lcom/tonyodev/fetch2/database/migration/MigrationFourToFive;

    invoke-direct {v3}, Lcom/tonyodev/fetch2/database/migration/MigrationFourToFive;-><init>()V

    new-instance v4, Lcom/tonyodev/fetch2/database/migration/MigrationFiveToSix;

    invoke-direct {v4}, Lcom/tonyodev/fetch2/database/migration/MigrationFiveToSix;-><init>()V

    new-instance v5, Lcom/tonyodev/fetch2/database/migration/MigrationSixToSeven;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/migration/MigrationSixToSeven;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/tonyodev/fetch2/database/migration/Migration;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    return-object v6
.end method
