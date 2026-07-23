.class public final Lcom/player/easy/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/player/easy/BuildVars;",
        "",
        "<init>",
        "()V",
        "isHuaweiStoreApp",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/player/easy/BuildVars;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/BuildVars;

    invoke-direct {v0}, Lcom/player/easy/BuildVars;-><init>()V

    sput-object v0, Lcom/player/easy/BuildVars;->INSTANCE:Lcom/player/easy/BuildVars;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHuaweiStoreApp()Z
    .locals 1

    .line 5
    sget-object v0, Lcom/player/easy/App;->Companion:Lcom/player/easy/App$Companion;

    invoke-virtual {v0}, Lcom/player/easy/App$Companion;->isHuaweiStoreBuild()Z

    move-result v0

    return v0
.end method
