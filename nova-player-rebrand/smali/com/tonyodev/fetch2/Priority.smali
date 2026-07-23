.class public final enum Lcom/tonyodev/fetch2/Priority;
.super Ljava/lang/Enum;
.source "Priority.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Priority$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/Priority;

.field public static final Companion:Lcom/tonyodev/fetch2/Priority$Companion;

.field public static final enum HIGH:Lcom/tonyodev/fetch2/Priority;

.field public static final enum LOW:Lcom/tonyodev/fetch2/Priority;

.field public static final enum NORMAL:Lcom/tonyodev/fetch2/Priority;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/Priority;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tonyodev/fetch2/Priority;

    sget-object v1, Lcom/tonyodev/fetch2/Priority;->HIGH:Lcom/tonyodev/fetch2/Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Priority;->LOW:Lcom/tonyodev/fetch2/Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/tonyodev/fetch2/Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->HIGH:Lcom/tonyodev/fetch2/Priority;

    .line 14
    new-instance v0, Lcom/tonyodev/fetch2/Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/tonyodev/fetch2/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    .line 17
    new-instance v0, Lcom/tonyodev/fetch2/Priority;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/tonyodev/fetch2/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->LOW:Lcom/tonyodev/fetch2/Priority;

    invoke-static {}, Lcom/tonyodev/fetch2/Priority;->$values()[Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->$VALUES:[Lcom/tonyodev/fetch2/Priority;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/tonyodev/fetch2/Priority$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/Priority$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Priority;->Companion:Lcom/tonyodev/fetch2/Priority$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tonyodev/fetch2/Priority;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/Priority;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 33
    check-cast p0, Lcom/tonyodev/fetch2/Priority;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/Priority;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/Priority;->$VALUES:[Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, [Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/tonyodev/fetch2/Priority;->value:I

    return v0
.end method
