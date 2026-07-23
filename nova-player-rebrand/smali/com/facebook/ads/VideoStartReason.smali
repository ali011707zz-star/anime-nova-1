.class public final enum Lcom/facebook/ads/VideoStartReason;
.super Ljava/lang/Enum;
.source "VideoStartReason.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/VideoStartReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/VideoStartReason;

.field public static final enum AUTO_STARTED:Lcom/facebook/ads/VideoStartReason;

.field public static final enum NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

.field public static final enum USER_STARTED:Lcom/facebook/ads/VideoStartReason;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/VideoStartReason;
    .locals 3

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/facebook/ads/VideoStartReason;

    sget-object v1, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/VideoStartReason;->USER_STARTED:Lcom/facebook/ads/VideoStartReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/VideoStartReason;->AUTO_STARTED:Lcom/facebook/ads/VideoStartReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/facebook/ads/VideoStartReason;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/VideoStartReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    .line 18
    new-instance v0, Lcom/facebook/ads/VideoStartReason;

    const-string v1, "USER_STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/VideoStartReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoStartReason;->USER_STARTED:Lcom/facebook/ads/VideoStartReason;

    .line 19
    new-instance v0, Lcom/facebook/ads/VideoStartReason;

    const-string v1, "AUTO_STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/VideoStartReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoStartReason;->AUTO_STARTED:Lcom/facebook/ads/VideoStartReason;

    .line 14
    invoke-static {}, Lcom/facebook/ads/VideoStartReason;->$values()[Lcom/facebook/ads/VideoStartReason;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/VideoStartReason;->$VALUES:[Lcom/facebook/ads/VideoStartReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/VideoStartReason;
    .locals 1

    .line 14
    const-class v0, Lcom/facebook/ads/VideoStartReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/VideoStartReason;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/VideoStartReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/facebook/ads/VideoStartReason;->$VALUES:[Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {v0}, [Lcom/facebook/ads/VideoStartReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/VideoStartReason;

    return-object v0
.end method
