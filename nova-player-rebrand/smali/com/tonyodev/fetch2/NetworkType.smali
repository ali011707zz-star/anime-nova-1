.class public final enum Lcom/tonyodev/fetch2/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/NetworkType$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum ALL:Lcom/tonyodev/fetch2/NetworkType;

.field public static final Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

.field public static final enum GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/NetworkType;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tonyodev/fetch2/NetworkType;

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const/4 v1, -0x1

    const-string v2, "GLOBAL_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    .line 15
    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    .line 18
    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "WIFI_ONLY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    .line 21
    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "UNMETERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {}, Lcom/tonyodev/fetch2/NetworkType;->$values()[Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->$VALUES:[Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tonyodev/fetch2/NetworkType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 38
    check-cast p0, Lcom/tonyodev/fetch2/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->$VALUES:[Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, [Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/tonyodev/fetch2/NetworkType;->value:I

    return v0
.end method
