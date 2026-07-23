.class public final enum Lcom/facebook/ads/AdOptionsView$Orientation;
.super Ljava/lang/Enum;
.source "AdOptionsView.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdOptionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdOptionsView$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

.field public static final enum HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

.field public static final enum VERTICAL:Lcom/facebook/ads/AdOptionsView$Orientation;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/AdOptionsView$Orientation;
    .locals 3

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lcom/facebook/ads/AdOptionsView$Orientation;

    sget-object v1, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdOptionsView$Orientation;->VERTICAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/facebook/ads/AdOptionsView$Orientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdOptionsView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    .line 40
    new-instance v0, Lcom/facebook/ads/AdOptionsView$Orientation;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdOptionsView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->VERTICAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    .line 37
    invoke-static {}, Lcom/facebook/ads/AdOptionsView$Orientation;->$values()[Lcom/facebook/ads/AdOptionsView$Orientation;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->$VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdOptionsView$Orientation;
    .locals 1

    .line 37
    const-class v0, Lcom/facebook/ads/AdOptionsView$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdOptionsView$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdOptionsView$Orientation;
    .locals 1

    .line 37
    sget-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->$VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdOptionsView$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdOptionsView$Orientation;

    return-object v0
.end method
