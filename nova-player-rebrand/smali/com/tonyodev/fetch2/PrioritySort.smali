.class public final enum Lcom/tonyodev/fetch2/PrioritySort;
.super Ljava/lang/Enum;
.source "PrioritySort.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/PrioritySort;

.field public static final enum ASC:Lcom/tonyodev/fetch2/PrioritySort;

.field public static final enum DESC:Lcom/tonyodev/fetch2/PrioritySort;


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/PrioritySort;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tonyodev/fetch2/PrioritySort;

    sget-object v1, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/PrioritySort;->DESC:Lcom/tonyodev/fetch2/PrioritySort;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/tonyodev/fetch2/PrioritySort;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/PrioritySort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    .line 15
    new-instance v0, Lcom/tonyodev/fetch2/PrioritySort;

    const-string v1, "DESC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/PrioritySort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/PrioritySort;->DESC:Lcom/tonyodev/fetch2/PrioritySort;

    invoke-static {}, Lcom/tonyodev/fetch2/PrioritySort;->$values()[Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/PrioritySort;->$VALUES:[Lcom/tonyodev/fetch2/PrioritySort;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/PrioritySort;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2/PrioritySort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 17
    check-cast p0, Lcom/tonyodev/fetch2/PrioritySort;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/PrioritySort;->$VALUES:[Lcom/tonyodev/fetch2/PrioritySort;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, [Lcom/tonyodev/fetch2/PrioritySort;

    return-object v0
.end method
