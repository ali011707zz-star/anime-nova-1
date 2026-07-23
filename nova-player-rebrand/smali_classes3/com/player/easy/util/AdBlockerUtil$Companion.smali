.class public final Lcom/player/easy/util/AdBlockerUtil$Companion;
.super Ljava/lang/Object;
.source "AdBlockerUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/util/AdBlockerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u0005R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/player/easy/util/AdBlockerUtil$Companion;",
        "",
        "<init>",
        "()V",
        "mInstance",
        "Lcom/player/easy/util/AdBlockerUtil;",
        "getMInstance",
        "()Lcom/player/easy/util/AdBlockerUtil;",
        "mInstance$delegate",
        "Lkotlin/Lazy;",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/util/AdBlockerUtil$Companion;-><init>()V

    return-void
.end method

.method private final getMInstance()Lcom/player/easy/util/AdBlockerUtil;
    .locals 1

    .line 27
    invoke-static {}, Lcom/player/easy/util/AdBlockerUtil;->access$getMInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/util/AdBlockerUtil;

    return-object v0
.end method


# virtual methods
.method public final getInstance()Lcom/player/easy/util/AdBlockerUtil;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/player/easy/util/AdBlockerUtil$Companion;->getMInstance()Lcom/player/easy/util/AdBlockerUtil;

    move-result-object v0

    return-object v0
.end method
