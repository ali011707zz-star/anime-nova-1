.class public final enum Leu/davidea/flexibleadapter/Payload;
.super Ljava/lang/Enum;
.source "Payload.java"


# static fields
.field private static final synthetic $VALUES:[Leu/davidea/flexibleadapter/Payload;

.field public static final enum ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

.field public static final enum CHANGE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum COLLAPSED:Leu/davidea/flexibleadapter/Payload;

.field public static final enum EXPANDED:Leu/davidea/flexibleadapter/Payload;

.field public static final enum FILTER:Leu/davidea/flexibleadapter/Payload;

.field public static final enum LINK:Leu/davidea/flexibleadapter/Payload;

.field public static final enum MERGE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum MOVE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

.field public static final enum REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

.field public static final enum SELECTION:Leu/davidea/flexibleadapter/Payload;

.field public static final enum SPLIT:Leu/davidea/flexibleadapter/Payload;

.field public static final enum UNDO:Leu/davidea/flexibleadapter/Payload;

.field public static final enum UNLINK:Leu/davidea/flexibleadapter/Payload;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 31
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    .line 35
    new-instance v1, Leu/davidea/flexibleadapter/Payload;

    const-string v3, "NO_MORE_LOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leu/davidea/flexibleadapter/Payload;->NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

    .line 39
    new-instance v3, Leu/davidea/flexibleadapter/Payload;

    const-string v5, "FILTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    .line 43
    new-instance v5, Leu/davidea/flexibleadapter/Payload;

    const-string v7, "UNDO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leu/davidea/flexibleadapter/Payload;->UNDO:Leu/davidea/flexibleadapter/Payload;

    .line 47
    new-instance v7, Leu/davidea/flexibleadapter/Payload;

    const-string v9, "ADD_SUB_ITEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v7, Leu/davidea/flexibleadapter/Payload;->ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    .line 51
    new-instance v9, Leu/davidea/flexibleadapter/Payload;

    const-string v11, "REM_SUB_ITEM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v9, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    .line 55
    new-instance v11, Leu/davidea/flexibleadapter/Payload;

    const-string v13, "MOVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v11, Leu/davidea/flexibleadapter/Payload;->MOVE:Leu/davidea/flexibleadapter/Payload;

    .line 59
    new-instance v13, Leu/davidea/flexibleadapter/Payload;

    const-string v15, "LINK"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v13, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    .line 63
    new-instance v15, Leu/davidea/flexibleadapter/Payload;

    move/from16 v17, v2

    const-string v2, "UNLINK"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v15, Leu/davidea/flexibleadapter/Payload;->UNLINK:Leu/davidea/flexibleadapter/Payload;

    .line 67
    new-instance v2, Leu/davidea/flexibleadapter/Payload;

    move/from16 v19, v4

    const-string v4, "SELECTION"

    move/from16 v20, v6

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v2, Leu/davidea/flexibleadapter/Payload;->SELECTION:Leu/davidea/flexibleadapter/Payload;

    .line 71
    new-instance v4, Leu/davidea/flexibleadapter/Payload;

    move/from16 v21, v6

    const-string v6, "MERGE"

    move/from16 v22, v8

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v4, Leu/davidea/flexibleadapter/Payload;->MERGE:Leu/davidea/flexibleadapter/Payload;

    .line 75
    new-instance v6, Leu/davidea/flexibleadapter/Payload;

    move/from16 v23, v8

    const-string v8, "SPLIT"

    move/from16 v24, v10

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v6, Leu/davidea/flexibleadapter/Payload;->SPLIT:Leu/davidea/flexibleadapter/Payload;

    .line 79
    new-instance v8, Leu/davidea/flexibleadapter/Payload;

    move/from16 v25, v10

    const-string v10, "EXPANDED"

    move/from16 v26, v12

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v8, Leu/davidea/flexibleadapter/Payload;->EXPANDED:Leu/davidea/flexibleadapter/Payload;

    .line 83
    new-instance v10, Leu/davidea/flexibleadapter/Payload;

    move/from16 v27, v12

    const-string v12, "COLLAPSED"

    move/from16 v28, v14

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v10, Leu/davidea/flexibleadapter/Payload;->COLLAPSED:Leu/davidea/flexibleadapter/Payload;

    const/16 v12, 0xe

    .line 27
    new-array v12, v12, [Leu/davidea/flexibleadapter/Payload;

    aput-object v0, v12, v16

    aput-object v1, v12, v18

    aput-object v3, v12, v20

    aput-object v5, v12, v22

    aput-object v7, v12, v24

    aput-object v9, v12, v26

    aput-object v11, v12, v28

    aput-object v13, v12, v17

    aput-object v15, v12, v19

    aput-object v2, v12, v21

    aput-object v4, v12, v23

    aput-object v6, v12, v25

    aput-object v8, v12, v27

    aput-object v10, v12, v14

    sput-object v12, Leu/davidea/flexibleadapter/Payload;->$VALUES:[Leu/davidea/flexibleadapter/Payload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/davidea/flexibleadapter/Payload;
    .locals 1

    .line 27
    const-class v0, Leu/davidea/flexibleadapter/Payload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/davidea/flexibleadapter/Payload;

    return-object p0
.end method

.method public static values()[Leu/davidea/flexibleadapter/Payload;
    .locals 1

    .line 27
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->$VALUES:[Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {v0}, [Leu/davidea/flexibleadapter/Payload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/davidea/flexibleadapter/Payload;

    return-object v0
.end method
