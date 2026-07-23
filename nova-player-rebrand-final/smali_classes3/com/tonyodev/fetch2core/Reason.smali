.class public final enum Lcom/tonyodev/fetch2core/Reason;
.super Ljava/lang/Enum;
.source "Reason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/Reason$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2core/Reason;

.field public static final Companion:Lcom/tonyodev/fetch2core/Reason$Companion;

.field public static final enum DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum REPORTING:Lcom/tonyodev/fetch2core/Reason;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2core/Reason;
    .locals 3

    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tonyodev/fetch2core/Reason;

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->REPORTING:Lcom/tonyodev/fetch2core/Reason;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

    .line 12
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_ADDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    .line 15
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_QUEUED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    .line 18
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    .line 21
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_WAITING_ON_NETWORK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    .line 24
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_PROGRESS_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    .line 27
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    .line 30
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    .line 33
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    .line 36
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_RESUMED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    .line 39
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_CANCELLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    .line 42
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_REMOVED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    .line 45
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_DELETED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    .line 52
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "DOWNLOAD_BLOCK_UPDATED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    .line 55
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "OBSERVER_ATTACHED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    .line 58
    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "REPORTING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->REPORTING:Lcom/tonyodev/fetch2core/Reason;

    invoke-static {}, Lcom/tonyodev/fetch2core/Reason;->$values()[Lcom/tonyodev/fetch2core/Reason;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->$VALUES:[Lcom/tonyodev/fetch2core/Reason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/tonyodev/fetch2core/Reason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/Reason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->Companion:Lcom/tonyodev/fetch2core/Reason$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tonyodev/fetch2core/Reason;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Reason;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2core/Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 86
    check-cast p0, Lcom/tonyodev/fetch2core/Reason;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2core/Reason;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->$VALUES:[Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, [Lcom/tonyodev/fetch2core/Reason;

    return-object v0
.end method
