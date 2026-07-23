.class public final Lcom/player/easy/util/result/Result$Loading;
.super Lcom/player/easy/util/result/Result;
.source "Result.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/util/result/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/player/easy/util/result/Result$Loading;",
        "Lcom/player/easy/util/result/Result;",
        "",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/player/easy/util/result/Result$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/util/result/Result$Loading;

    invoke-direct {v0}, Lcom/player/easy/util/result/Result$Loading;-><init>()V

    sput-object v0, Lcom/player/easy/util/result/Result$Loading;->INSTANCE:Lcom/player/easy/util/result/Result$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/player/easy/util/result/Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
