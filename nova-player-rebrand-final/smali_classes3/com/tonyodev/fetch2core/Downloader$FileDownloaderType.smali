.class public final enum Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
.super Ljava/lang/Enum;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileDownloaderType"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

.field public static final enum PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

.field public static final enum SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    sget-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 219
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const-string v1, "SEQUENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 223
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const-string v1, "PARALLEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-static {}, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$values()[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 224
    check-cast p0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 224
    check-cast v0, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object v0
.end method
