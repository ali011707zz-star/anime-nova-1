.class public final enum Lcom/player/easy/util/storage/MimeTypeUtils$Category;
.super Ljava/lang/Enum;
.source "MimeTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/util/storage/MimeTypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/player/easy/util/storage/MimeTypeUtils$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum APK:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum ARCHIVE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum AUDIO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum DOCUMENT:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum IMAGE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum OTHER:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

.field public static final enum VIDEO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;


# direct methods
.method private static synthetic $values()[Lcom/player/easy/util/storage/MimeTypeUtils$Category;
    .locals 3

    const/4 v0, 0x7

    .line 33
    new-array v0, v0, [Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->OTHER:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->ARCHIVE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->VIDEO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->AUDIO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->IMAGE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->DOCUMENT:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->APK:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->OTHER:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 36
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "ARCHIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->ARCHIVE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 37
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->VIDEO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 38
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "AUDIO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->AUDIO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 39
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "IMAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->IMAGE:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 40
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->DOCUMENT:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 41
    new-instance v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    const-string v1, "APK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->APK:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    .line 33
    invoke-static {}, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->$values()[Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    move-result-object v0

    sput-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->$VALUES:[Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/player/easy/util/storage/MimeTypeUtils$Category;
    .locals 1

    .line 33
    const-class v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    return-object p0
.end method

.method public static values()[Lcom/player/easy/util/storage/MimeTypeUtils$Category;
    .locals 1

    .line 33
    sget-object v0, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->$VALUES:[Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    invoke-virtual {v0}, [Lcom/player/easy/util/storage/MimeTypeUtils$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    return-object v0
.end method
