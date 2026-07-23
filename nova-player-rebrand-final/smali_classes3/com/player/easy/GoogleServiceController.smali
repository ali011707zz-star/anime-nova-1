.class public abstract Lcom/player/easy/GoogleServiceController;
.super Ljava/lang/Object;
.source "GoogleServiceController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/GoogleServiceController$Companion;,
        Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/player/easy/GoogleServiceController;",
        "",
        "<init>",
        "()V",
        "IGoogleServiceProvider",
        "Companion",
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
.field public static final Companion:Lcom/player/easy/GoogleServiceController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/GoogleServiceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/GoogleServiceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/GoogleServiceController;->Companion:Lcom/player/easy/GoogleServiceController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
