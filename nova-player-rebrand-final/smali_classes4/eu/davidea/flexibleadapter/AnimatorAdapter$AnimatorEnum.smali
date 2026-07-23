.class final enum Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
.super Ljava/lang/Enum;
.source "AnimatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/AnimatorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimatorEnum"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum ALPHA:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SCALE:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_BOTTOM:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_LEFT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_RIGHT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_TOP:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 63
    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->ALPHA:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v3, "SLIDE_IN_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_LEFT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v3, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v5, "SLIDE_IN_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_RIGHT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v5, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v7, "SLIDE_IN_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_BOTTOM:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v7, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v9, "SLIDE_IN_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_TOP:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v9, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v11, "SCALE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SCALE:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->$VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
    .locals 1

    .line 62
    const-class v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-object p0
.end method

.method public static values()[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
    .locals 1

    .line 62
    sget-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->$VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    invoke-virtual {v0}, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-object v0
.end method
